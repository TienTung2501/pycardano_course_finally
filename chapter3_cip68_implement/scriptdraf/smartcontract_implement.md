# VIDEO SCRIPT - SMART CONTRACT IMPLEMENT (CIP-68)

## 1) Mục tiêu video

- Viết và giải thích đầy đủ smart contract CIP-68 bằng Aiken.
- Trình bày đúng luồng mint, update metadata, burn theo code hiện tại của dự án.
- Build ra `plutus.json` để dùng cho off-chain (`pycardano`) và backend.

Bản này là phiên bản `simplified` như trong code hiện tại:

- Không dùng parameterized scripts.
- `policy_id` và `owner` được xác thực thông qua datum.
- Có 2 validator:
  - `cip68_mint`: mint/burn cặp token CIP-68
  - `cip68_store`: kiểm soát update metadata và spend ref UTxO

---

## 2) Điều kiện tiên quyết

**Lời thoại mẫu**

"Trước khi vào code, mình giả định mọi người đã có Aiken và môi trường Python để chạy off-chain. Video này tập trung vào phần on-chain trong thư mục `cip68_dynamic_asset`."

**Thao tác màn hình**

```powershell
cd chapter3_cip68_implement\cip68_dynamic_asset
```

Mở file `aiken.toml` và xác nhận các tham số đang dùng:

```toml
name = "pycardano_course/cip68_dynamic_asset"
version = "0.0.0"
compiler = "v1.1.19"
plutus = "v3"

[[dependencies]]
name = "aiken-lang/stdlib"
version = "v3.0.0"
source = "github"
```

---

## 3) Mở đầu - nhắc nhanh CIP-68

**Lời thoại mẫu**

"CIP-68 sử dụng 2 token đi kèm cùng policy:

1. Reference Token (label 100, prefix hex `000643b0`) được giữ tại script address, kèm datum metadata.
2. User Token (label 222, prefix hex `000de140`) nằm trong ví người dùng để đại diện quyền sở hữu.

Trong hợp đồng này, update metadata sẽ thao tác trên UTxO chứa reference token, còn user token vẫn nằm trong ví owner."

---

## 4) Viết file validator `validators/cip68.ak`

### 4.1 Imports và constants

**Lời thoại mẫu**

"Mình import `list` để tìm input/output, `bytearray` để nối prefix vào token name, và `transaction` để đọc context giao dịch."

```aiken
use aiken/collection/list
use aiken/primitive/bytearray
use cardano/assets.{PolicyId}
use cardano/transaction.{InlineDatum, OutputReference, Transaction}
```

---

### 4.2 Định nghĩa Redeemer cho minting policy

**Lời thoại mẫu**

"Minting policy có 2 hành động: mint cặp token mới hoặc burn cặp token đã có. Cả 2 đều nhận `token_name` gốc để contract tự nối prefix đúng chuẩn CIP-68."

```aiken
pub type MintRedeemer {
  MintToken { token_name: ByteArray }
  BurnToken { token_name: ByteArray }
}
```

---

### 4.3 Định nghĩa Redeemer cho store validator

**Lời thoại mẫu**

"Store validator gồm 2 hành động: update metadata hoặc burn reference token."

```aiken
pub type SpendRedeemer {
  UpdateMetadata
  BurnReference
}
```

---

### 4.4 Định nghĩa Datum

**Lời thoại mẫu**

"Datum là trung tâm của CIP-68 dynamic NFT. Mình lưu `policy_id`, `asset_name`, `owner`, `metadata`, `version`.

- `policy_id` + `asset_name` xác định token identity.
- `owner` là người được phép update/burn.
- `metadata` có thể thay đổi theo thời gian.
- `version` để đánh dấu lần cập nhật."

```aiken
pub type CIP68Datum {
  policy_id: ByteArray,
  asset_name: ByteArray,
  owner: ByteArray,
  metadata: Data,
  version: Int,
}
```

---

## 5) Validator 1 - `cip68_mint`

### 5.1 Mục tiêu logic

**Lời thoại mẫu**

"Validator mint không quản lý owner trực tiếp. Nó chỉ ràng buộc đúng cặp token và đúng số lượng.

- Mint: phải là +1 ref token và +1 user token.
- Burn: phải là -1 ref token và -1 user token."

### 5.2 Core implementation

```aiken
validator cip68_mint {
  mint(redeemer: MintRedeemer, policy_id: PolicyId, tx: Transaction) {
    let Transaction { mint, .. } = tx

    when redeemer is {
      MintToken { token_name } -> {
        let ref_token_name = #"000643b0" |> bytearray.concat(token_name)
        let user_token_name = #"000de140" |> bytearray.concat(token_name)

        let ref_token_amount =
          assets.quantity_of(mint, policy_id, ref_token_name)
        let user_token_amount =
          assets.quantity_of(mint, policy_id, user_token_name)

        ref_token_amount == 1 && user_token_amount == 1
      }

      BurnToken { token_name } -> {
        let ref_token_name = #"000643b0" |> bytearray.concat(token_name)
        let user_token_name = #"000de140" |> bytearray.concat(token_name)

        let ref_token_amount =
          assets.quantity_of(mint, policy_id, ref_token_name)
        let user_token_amount =
          assets.quantity_of(mint, policy_id, user_token_name)

        ref_token_amount == -1 && user_token_amount == -1
      }
    }
  }

  else(_) {
    fail
  }
}
```

---

## 6) Validator 2 - `cip68_store`

### 6.1 Mục tiêu logic

**Lời thoại mẫu**

"Store validator bảo vệ UTxO chứa reference token.

Với action `UpdateMetadata`, cần đồng thời thỏa 3 nhóm điều kiện:

1. Owner phải ký giao dịch.
2. Input đang spend phải chứa đúng reference token.
3. Output mới trả lại đúng script, vẫn chứa ref token và datum mới giữ nguyên identity (`policy_id`, `asset_name`, `owner`).

Với action `BurnReference`, chỉ cần owner ký."

### 6.2 Core implementation

```aiken
validator cip68_store {
  spend(
    datum: Option<CIP68Datum>,
    redeemer: SpendRedeemer,
    own_ref: OutputReference,
    tx: Transaction,
  ) {
    expect Some(current_datum) = datum

    let owner_pkh = current_datum.owner
    let datum_policy_id = current_datum.policy_id
    let datum_asset_name = current_datum.asset_name

    let must_be_signed = list.has(tx.extra_signatories, owner_pkh)

    when redeemer is {
      UpdateMetadata -> {
        expect Some(own_input) =
          list.find(tx.inputs, fn(input) { input.output_reference == own_ref })

        let script_address = own_input.output.address
        let ref_token_name = #"000643b0" |> bytearray.concat(datum_asset_name)

        let input_has_ref_token =
          assets.quantity_of(
            own_input.output.value,
            datum_policy_id,
            ref_token_name,
          ) == 1

        let has_valid_output =
          list.any(
            tx.outputs,
            fn(output) {
              when output.datum is {
                InlineDatum(data) -> {
                  expect new_datum: CIP68Datum = data

                  let output_has_ref_token =
                    assets.quantity_of(
                      output.value,
                      datum_policy_id,
                      ref_token_name,
                    ) == 1

                  output.address == script_address &&
                    output_has_ref_token &&
                    new_datum.policy_id == datum_policy_id &&
                    new_datum.asset_name == datum_asset_name &&
                    new_datum.owner == owner_pkh
                }
                _ -> False
              }
            },
          )

        must_be_signed && input_has_ref_token && has_valid_output
      }

      BurnReference ->
        must_be_signed
    }
  }

  else(_) {
    fail
  }
}
```

---

## 7) Full code final (khớp file hiện tại)

Đây là toàn bộ nội dung cần có trong `validators/cip68.ak` theo dự án hiện tại:

```aiken
use aiken/collection/list
use aiken/primitive/bytearray
use cardano/assets.{PolicyId}
use cardano/transaction.{InlineDatum, OutputReference, Transaction}

// Reference Token: (100) - 0x000643b0 // nằm trong script để chứa datum có thể cập nhật
// User Token: (222) - 0x000de140 // nằm trong ví của người dùng để
// đại diện cho quyền sở hữu tài sản

pub type MintRedeemer {
  /// Mint mới reference token và user token
  MintToken { token_name: ByteArray }
  /// Burn reference token và user token
  BurnToken { token_name: ByteArray }
}

pub type SpendRedeemer {
  /// Update metadata của reference token
  UpdateMetadata
  /// Burn reference token
  BurnReference
}

pub type CIP68Datum {
  /// Policy ID của token chứa thông tin của token
  policy_id: ByteArray,
  /// Tên của token chứa thông tin của token
  asset_name: ByteArray,
  // policy_id và token name là thông tin để xác định token
  /// Owner public key hash - người có quyền update/burn
  owner: ByteArray,
  /// Metadata fields theo CIP-68 standard
  metadata: Data,
  /// Version của metadata
  version: Int,
}

validator cip68_mint {
  mint(redeemer: MintRedeemer, policy_id: PolicyId, tx: Transaction) {
    let Transaction { mint, .. } = tx
    when redeemer is {
      MintToken { token_name } -> {
        // Tạo asset names theo CIP-68 standard
        let ref_token_name = #"000643b0" |> bytearray.concat(token_name)
        let user_token_name = #"000de140" |> bytearray.concat(token_name)
        // Kiểm tra mint đúng số lượng tokens
        let ref_token_amount =
          assets.quantity_of(mint, policy_id, ref_token_name)
        let user_token_amount =
          assets.quantity_of(mint, policy_id, user_token_name)
        // Phải mint đúng 1 reference token và 1 user token
        ref_token_amount == 1 && user_token_amount == 1
      }
      BurnToken { token_name } -> {
        // Tạo asset names theo CIP-68 standard
        let ref_token_name = #"000643b0" |> bytearray.concat(token_name)
        let user_token_name = #"000de140" |> bytearray.concat(token_name)
        // Kiểm tra burn đúng số lượng tokens
        let ref_token_amount =
          assets.quantity_of(mint, policy_id, ref_token_name)
        let user_token_amount =
          assets.quantity_of(mint, policy_id, user_token_name)
        // Phải burn đúng 1 reference token và 1 user token
        ref_token_amount == -1 && user_token_amount == -1
      }
    }
  }

  else(_) {
    fail
  }
}

validator cip68_store {
  spend(
    datum: Option<CIP68Datum>,
    redeemer: SpendRedeemer,
    own_ref: OutputReference,
    // tham chiếu đến utxo đang được chi tiêu (spend)
    tx: Transaction,
  ) {
    // lấy thông tin datum
    expect Some(current_datum) = datum
    let owner_pkh = current_datum.owner
    let datum_policy_id = current_datum.policy_id
    let datum_asset_name = current_datum.asset_name

    // Kiểm tra chữ ký của owner
    let must_be_signed = list.has(tx.extra_signatories, owner_pkh)

    when redeemer is {
      UpdateMetadata -> {
        // Tìm input của script
        expect Some(own_input) =
          list.find(tx.inputs, fn(input) { input.output_reference == own_ref })
        let script_address = own_input.output.address
        let ref_token_name = #"000643b0" |> bytearray.concat(datum_asset_name)

        // Kiểm tra input có chứa reference token
        let input_has_ref_token =
          assets.quantity_of(
            own_input.output.value,
            datum_policy_id,
            ref_token_name,
          ) == 1

        // Kiểm tra output gửi lại script phải hợp lệ
        let has_valid_output =
          list.any(
            tx.outputs,
            fn(output) {
              when output.datum is {
                InlineDatum(data) -> {
                  expect new_datum: CIP68Datum = data

                  // Kiểm tra output có reference token
                  let output_has_ref_token =
                    assets.quantity_of(
                      output.value,
                      datum_policy_id,
                      ref_token_name,
                    ) == 1

                  // Ràng buộc thông tin sau update
                  output.address == script_address &&
                    output_has_ref_token &&
                    new_datum.policy_id == datum_policy_id &&
                    new_datum.asset_name == datum_asset_name &&
                    new_datum.owner == owner_pkh
                }
                _ -> False
              }
            },
          )

        must_be_signed && input_has_ref_token && has_valid_output
      }
      BurnReference ->
        must_be_signed
    }
  }

  else(_) {
    fail
  }
}
```

---

## 8) Check và build contract

**Lời thoại mẫu**

"Sau khi code xong, mình sẽ check syntax/type trước, sau đó build ra blueprint để dùng cho off-chain."

```powershell
cd chapter3_cip68_implement\cip68_dynamic_asset
aiken check
aiken build
```

Nếu thành công, sẽ có file `plutus.json` chứa các validator:

- `cip68.cip68_mint.mint`
- `cip68.cip68_store.spend`

Theo trạng thái hiện tại của dự án:

- Policy hash (`cip68_mint`): `9127f9f55834f6c71fba24ae5712e381cfeb54aabce7072ecfb4739f`
- Store validator hash (`cip68_store`): `bcea0a12b819759a2a6345e8640533e410c146642d6b976c8e6a21fb`

---

## 9) Tổng kết để chuyển sang off-chain

**Lời thoại mẫu**

"Vậy là mình đã hoàn thành phần smart contract implement cho CIP-68.

Những điểm cốt lõi cần nhớ:

1. Mint/Burn phải theo cặp reference token và user token.
2. Update metadata bắt buộc owner ký.
3. UTxO reference token sau update phải quay lại đúng script và giữ nguyên identity fields.
4. `plutus.json` là đầu vào cho Python off-chain và backend.

Trong video tiếp theo, mình sẽ dùng PyCardano để tạo transaction mint, update metadata và burn dựa trên bộ validator vừa build."
