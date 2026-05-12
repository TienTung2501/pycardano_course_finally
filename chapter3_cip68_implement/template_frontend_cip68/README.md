# 🎨 CIP-68 Frontend Template

Template frontend cho khóa học CIP-68 Dynamic Asset với PyCardano.

## 📋 Tổng quan

Template này cung cấp **cấu trúc UI hoàn chỉnh** nhưng **logic xử lý để trống** (đánh dấu TODO).  
Người học sẽ **điền logic** vào các hàm đã chuẩn bị sẵn theo hướng dẫn trong video.

## ✅ Đã chuẩn bị sẵn

### UI Components (Hoàn chỉnh 100%)
- ✅ Layout & Navigation
- ✅ Form inputs & buttons (styled với Tailwind)
- ✅ Modal components
- ✅ TransactionStatus display
- ✅ Loading states & animations
- ✅ Responsive design

### TypeScript Types (Hoàn chỉnh 100%)
- ✅ CIP-30 Wallet API types (`src/types/cardano.ts`)
- ✅ SUPPORTED_WALLETS constants

### Configuration Files (Hoàn chỉnh 100%)
- ✅ `next.config.js` với WASM support
- ✅ `tailwind.config.js` với Cardano colors
- ✅ `tsconfig.json`
- ✅ `package.json` với tất cả dependencies

### Pure UI Components (Không cần chỉnh sửa)
- ✅ `Modal.tsx` - Generic modal wrapper
- ✅ `TransactionStatus.tsx` - Hiển thị trạng thái transaction
- ✅ `Providers.tsx` - Client-side provider wrapper

## ❌ CẦN BỔ SUNG (16 TODOs)

### WalletContext (`src/context/WalletContext.tsx`)
- ❌ TODO 1: `getAvailableWallets()` - Scan wallets trong browser
- ❌ TODO 2: `getAddress()` - Lấy address từ wallet API
- ❌ TODO 3: `connect()` - Kết nối ví qua CIP-30
- ❌ TODO 4: `disconnect()` - Ngắt kết nối và clear state
- ❌ TODO 5: `signTx()` - Ký transaction
- ❌ TODO 6: Auto-reconnect effect

### WalletConnect (`src/components/WalletConnect.tsx`)
- ❌ TODO 7: `handleConnect()` - Xử lý click chọn ví

### MintForm (`src/components/MintForm.tsx`)
- ❌ TODO 8: `handleMint()` - Build → Sign → Submit transaction

### UpdateModal (`src/components/UpdateModal.tsx`)
- ❌ TODO 9: `handleUpdate()` - Update metadata flow

### BurnModal (`src/components/BurnModal.tsx`)
- ❌ TODO 10: `handleBurn()` - Burn NFT flow

### NFTList (`src/components/NFTList.tsx`)
- ❌ TODO 11: `fetchNFTs()` - Lấy danh sách NFTs từ wallet
- ❌ TODO 12: `loadMetadata()` - Load metadata cho mỗi NFT
- ❌ TODO 13: Auto-fetch effect

### HomeContent (`src/app/HomeContent.tsx`)
- ❌ TODO 14: `convertAddress()` - Convert hex → bech32
- ❌ TODO 15: `fetchScriptInfo()` - Lấy policy ID, store address
- ❌ TODO 16: Initialization effect

## 🚀 Hướng dẫn sử dụng

### Bước 1: Clone template
```bash
# Template đã được chuẩn bị sẵn trong thư mục frontend_template/
cd frontend_template
```

### Bước 2: Cài đặt dependencies
```bash
npm install
```

### Bước 3: Cấu hình API URL
Tạo file `.env.local` trong thư mục frontend:

```bash
NEXT_PUBLIC_API_URL=http://localhost:8000
```

Khi deploy Vercel, đặt Environment Variable `NEXT_PUBLIC_API_URL` trỏ về domain backend Render.

### Bước 4: Chạy dev server
```bash
npm run dev
```
Mở http://localhost:3000 - UI sẽ hiển thị nhưng các nút chưa hoạt động.

### Bước 5: Điền logic theo hướng dẫn video
Mở các file có chứa `// TODO` và điền logic theo thứ tự:

1. **WalletContext** (TODO 1-6) - Nền tảng kết nối ví
2. **WalletConnect** (TODO 7) - UI kết nối ví
3. **MintForm** (TODO 8) - Mint NFT
4. **UpdateModal** (TODO 9) - Update metadata
5. **BurnModal** (TODO 10) - Burn NFT
6. **NFTList** (TODO 11-13) - Hiển thị NFTs
7. **HomeContent** (TODO 14-16) - Integration

## 📦 Dependencies

```json
{
  "dependencies": {
    "next": "14.1.0",
    "react": "^18",
    "react-dom": "^18",
    "lucide-react": "^0.263.1"
  },
  "devDependencies": {
    "typescript": "^5",
    "@types/react": "^18",
    "tailwindcss": "^3.3.0"
  }
}
```

**Lưu ý:** Không cần thư viện Cardano JS phức tạp - chỉ dùng CIP-30 API thuần.

## 🔗 Backend API Endpoints

Template kết nối với backend FastAPI (mặc định `http://localhost:8000` hoặc cấu hình bằng `NEXT_PUBLIC_API_URL`):

- `POST /api/mint` - Build unsigned mint transaction
- `POST /api/update` - Build unsigned update transaction
- `POST /api/burn` - Build unsigned burn transaction
- `POST /api/submit` - Merge witnesses & submit
- `GET /api/metadata/{token_name}` - Get metadata
- `GET /api/wallet/{address}` - Get wallet assets
- `GET /api/convert-address?hex_address=...` - Convert hex to bech32
- `GET /api/script-info` - Get policy ID & store address

## 🎯 Learning Path

Người học sẽ học được:

1. **CIP-30 Wallet Integration**
   - Scan & connect wallets
   - Get addresses
   - Sign transactions (partialSign mode)

2. **3-Step Transaction Flow**
   - Build: Backend tạo unsigned CBOR
   - Sign: Wallet ký (không rời khỏi browser)
   - Submit: Backend merge witnesses & submit

3. **React Best Practices**
   - Context API cho global state
   - Custom hooks (`useWallet`)
   - Effect hooks cho auto-fetch
   - Form handling & validation

4. **TypeScript với Cardano**
   - CIP-30 type definitions
   - Type-safe API calls
   - Error handling

## 📝 Code Style

Template sử dụng:
- **TypeScript strict mode**
- **Functional components** với hooks
- **Tailwind CSS** + custom utility classes
- **Async/await** cho API calls
- **Try-catch-finally** pattern

## 🆘 Troubleshooting

**UI hiển thị nhưng không có wallet nào:**
- Cài Nami/Eternl/Lace extension
- Refresh trang

**Kết nối thành công nhưng không fetch được NFT:**
- Check backend đang chạy (port 8000)
- Check CORS trong backend (`allow_origins`)

**Sign transaction fail:**
- Đảm bảo dùng `partialSign: true`
- Check backend trả đúng CBOR format

## 📚 Tài liệu tham khảo

- [CIP-30 Specification](https://cips.cardano.org/cips/cip30/)
- [Next.js 14 Documentation](https://nextjs.org/docs)
- [Tailwind CSS](https://tailwindcss.com/)
- [PyCardano Docs](https://pycardano.readthedocs.io/)

## 📄 License

Template for educational purposes - CIP-68 PyCardano Course
