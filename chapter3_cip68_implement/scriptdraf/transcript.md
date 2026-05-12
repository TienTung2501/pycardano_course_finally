0:044 giâyXin chào mọi người. Chào mừng mọi người đã đến với video tiếp theo trong truyện video khóa học dạy lập trình by Canel
0:1111 giâycủa chúng tôi. Thì trong video này chúng ta sẽ bắt đầu triển khai ví dụ shift 68
0:1919 giâyờ mà mình đã chia sẻ khá là chi tiết trong phần lý thuyết trước đó. Thì trong các video tiếp theo chúng ta sẽ chỉ thực hiện code.
0:3131 giâyThì trong video này mình sẽ trực tiếp hướng dẫn các bạn từng bước ờ code triển
0:3838 giâykhai hợp đồng thông minh. Đấy thì mặc định khi các bạn đã học đến video này
0:4545 giâythì mình cũng mặc định là các bạn đã biết cách tạo ra một thư mục
0:5252 giâyICEN trong suộc code của các bạn rồi nên mình sẽ không hướng dẫn lại các bạn cài icon như thế nào. Đấy đầu tiên thì chúng ta sẽ vào tạo thư mục luôn. Đấy.
1:061 phút, 6 giâyOk. Chúng ta đã tạo xong thư mục IC dùng để code hợp đồng thông minh. Trong thư mục này nó sẽ bao gồm các cái thư mục và
1:151 phút, 15 giâycác file cần thiết để thực hiện biên dịch hợp đồng mã nguồn. Thì mình đang sử
1:221 phút, 22 giâydụng phiên bản gọi là Iken V1.1.19 và biên dịch sang Bluetooth V3. Mọi
1:301 phút, 30 giâyngười chú ý để không bị lệch cú pháp so với hướng dẫn của mình nhé. Đầu tiên thì
1:371 phút, 37 giâychúng ta sẽ vào shift.
1:441 phút, 44 giâyOk xong rồi. Chúng ta sẽ đi vào code luôn. M
1:511 phút, 51 giâythêm một file thêm file shift 68.AK để code hợp đồng.
2:032 phút, 3 giâyxóa bỏ cái file có sẵn đi.
2:062 phút, 6 giâyRồi ok thì mình sẽ tóm tắt lại một chút về các công
2:152 phút, 15 giâyviệc mình sẽ thực hiện trong cái việc viết hợp đồng này thì chúng ta sẽ có hai cái hợp đồng chính mà chúng ta sẽ
2:242 phút, 24 giâyviết. Hợp đồng thứ nhất là hợp đồng dùng để min. Tức là hợp đồng min này này nó
2:322 phút, 32 giâysẽ tạo ra một cái mining polosy script ấy dùng để min hoặc là bn NFT bơ cái
2:412 phút, 41 giâytoken theo chuẩn Shift 68 này này. Đấy thì đây chính là cái cách min ra một cái
2:502 phút, 50 giâytoken hay là một cái NFT trên hệ sinh thái Canadano. Đấy, trong những bài học trước đó mình cũng đã giới thiệu sơ qua
2:592 phút, 59 giâyvề một số cách miny cách đơn giản nhất là dùng cái native script. Đấy, thì trong bài học
3:083 phút, 8 giâynày thì chúng ta sẽ thực hiện ờ min theo kiểu là theo cái Bluetooth script. Đấy.
3:193 phút, 19 giâyVà cái hợp đồng thứ hai đó là cái hợp đồng dùng để lưu chữ các cái uteko chứa
3:273 phút, 27 giâyreference referent token mà chúng ta đã thảo luận khá là chi tiết trong phần lý
3:353 phút, 35 giâythuyết. Đấy. Rồi. Ok. Sau khi nói xong lý thuyết rồi, chúng ta sẽ nhảy vào code. Đấy,
3:433 phút, 43 giâyđầu tiên đó là chúng ta sẽ import cái thư viện đầu tiên đó là thư viện list này. Đấy, để thực
3:523 phút, 52 giâyhiện ờ các cái công việc liên quan đến duyệt qua danh sách, các cái input hoặc
3:593 phút, 59 giâylà output. Đấy. Thứ hai là thư viện là by array để xử lý
4:064 phút, 6 giâyliên quan đến by array. Và tiếp theo là Polos ID này. Tiếp theo là thư viện liên quan đến trang section này. Đấy. Để truy cập thông tin của trang session.
4:184 phút, 18 giâyOk.
4:214 phút, 21 giâySau khi chúng ta đã import xong các cái thư viện cần thiết rồi thì mình sẽ đi vào code luôn. Trước khi code mình sẽ
4:284 phút, 28 giâynói một chút vì đây là một gọi là khóa học mang tính chất là dạng
4:354 phút, 35 giâydạy. Chính vì thế mà chúng mình cũng cố gắng cung cấp những nội dung gọi là cốt lõi nhất để mọi người hiểu và hình dung,
4:444 phút, 44 giâynắm được nguyên lý hoạt động của nó. Từ đó sau các sau này khi mọi người ứng
4:524 phút, 52 giâydụng và thực tế mọi người sẽ tạo ra những cái bài toán nó phức tạp hơn nhưng lõi của nó vẫn phải tuân theo những nguyên lý mà chúng ta chia sẻ. Chính vì
5:025 phút, 2 giâythế mà hợp đồng thông minh của chúng ta sẽ chỉ là hợp đồng đơn giản thôi. Đấy.
5:095 phút, 9 giâyVà cái Shift 68 sẽ luôn sử dụng hai cái token mà chúng ta đã chia sẻ đó là refer token.
5:215 phút, 21 giâyNó sẽ được lưu trữ ở cái hợp đồng store.
5:255 phút, 25 giâyĐấy. Còn cái user token là cái token mà mọi người sở hữu và user token sẽ được
5:315 phút, 31 giâyliên kết với cái reference token thông qua cái polosy ID và asset name ấy. Đấy.
5:405 phút, 40 giâyRồi ok.
5:445 phút, 44 giâyĐấy, mình cũng cung cấp thêm một cái profit của cái ref token là cái
5:535 phút, 53 giâychuỗi buy này. 00643b này này. Có cái user token là cái chuỗi
6:006 phútnày này. Đấy, rồi bắt đầu vào code rồi.
6:136 phút, 13 giâyNằm nằm trong script
6:206 phút, 20 giâyđể chứa datum.
6:256 phút, 25 giâyCòn cái này là nằm nằm trong ví của người dùng để thể hiện
6:356 phút, 35 giâyquyền sở hữu tại
6:436 phút, 43 giâycho quyền hiệu tài sản.
6:536 phút, 53 giâyĐây vẫn chỉ là những cái nội dung mình đã chia sẻ khá là chi tiết trong bài học trước đó. Đấy, không có gì mới mẻ cả.
7:047 phút, 4 giâyRồi tiếp theo là chúng ta sẽ đầu tiên có một số kiểu dữ liệu mà chúng
7:117 phút, 11 giâyta sẽ phải định nghĩa. Đầu tiên đó là redeemer cho hợp đồng min và redeemer
7:197 phút, 19 giâycho cái hợp đồng store tức là hợp đồng để chứa cái reference token đấy. Đấy và cái datum.
7:277 phút, 27 giâyĐấy đầu tiên thì chúng ta sẽ định nghĩa redeemer cho min trước. thì chúng ta sẽ khai báo là
7:367 phút, 36 giâymin redeemer này. Đấy nó sẽ có hai hành động
7:467 phút, 46 giâyhành động min và hành động bơ. Đấy.
7:557 phút, 55 giâyTiếp theo thì cái min này nó sẽ nhận vào tham số là token name. Đấy, tức là nó sẽ
8:038 phút, 3 giâythực hiện min min ra một cái token với token name là truyền vào.
8:118 phút, 11 giâyCòn tiếp theo là chúng ta sẽ định nghĩa cái redeem cho cái
8:198 phút, 19 giâyhợp đồng store kia. chúng ta sẽ ghi là public store đi hay là public redeem đi.
8:348 phút, 34 giâyRồi thì redeem của cái store hợp đồng store thì nó sẽ có hai cái hành động.
8:418 phút, 41 giâyHành động update metadata hoặc là hành động bn token. Vì là khi b đúng không?
8:498 phút, 49 giâychúng ta sẽ thực hiện chi tiêu cái chi tiêu cái
8:568 phút, 56 giâyđấy nên chúng ta phải có cái hành động gửi lên hợp đồng thông minh để biết được đó là hành động chi tiêu đúng không?
9:059 phút, 5 giâyĐấy, chi tiêu uto sẽ khác với bơ token nhé.
9:139 phút, 13 giâyChi chi tiêu uto tức là mọi người chi tiêu cái khỏi cái hợp đồng nó đi. Đấy, còn bơ
9:239 phút, 23 giâytoken là làm nó hủy bỏ cái token trên toàn bộ chuỗi.
9:309 phút, 30 giâyĐấy, mọi người hiểu như thế. Tức là khi bơ nó sẽ bao gồm hai cái quá trình. Quá
9:369 phút, 36 giâytrình đầu tiên đó là chi tiêu bỏ cái UTO chứa cái reference token trên hợp đồng
9:429 phút, 42 giâystor đy. Và hành động thứ hai là hành động chính là hủy bỏ cái token đó trên
9:499 phút, 49 giâychuỗi. Đấy nó gồm có hai cái quá trình như vậy. Ok.
9:579 phút, 57 giâySau khi định nghĩa được hai cái redeemer cho hai hợp đồng rồi, chúng ta sẽ thực hiện định nghĩa datum. Đấy, đây chính là
10:0610 phút, 6 giâyphần quyết định cái shift 68 có thể cập nhật Datum được hay không này. Đấy, thì nó sẽ có một cái một số trường sau. Đầu tiên đó là polos ID. Đấy,
10:1910 phút, 19 giâyfollow cidd dùng để định danh token hoặc là chứa chứa thông tin của token
10:2910 phút, 29 giâychứa không cầm. Đấy. Thứ hai là access name.
10:4110 phút, 41 giâyĐấy.
10:4410 phút, 44 giâyTên qu to rồi. Polo cidd.
10:5410 phút, 54 giâyCid và token name là thông tin.
11:0511 phút, 5 giâyđể xác định token.
11:1111 phút, 11 giâyRồi tiếp theo là một cái trường gọi là trường oer đi. Đây chính là cái public key head của người dùng đấy.
11:2711 phút, 27 giâyTức là thêm cái này để thêm cái logic là khi người dùng ký giao dịch thì phải ký
11:3411 phút, 34 giâybằng cái ví tương ứng với cái public key hết được lưu trong datum này này thì
11:4111 phút, 41 giâygiao dịch nó mới thành công được. Tiếp theo chính là cái trường metadata. Chúng ta sẽ cập nhật cái trường này.
11:5211 phút, 52 giâyĐây, metadata chính là cái kiểu như là một đối tượng để lưu trữ dữ liệu của chúng ta. Chúng ta sẽ cập nhật cái
12:0012 phúttrường metadata này. Và cái trường version này cũng cập nhật cái này. Ok.
12:0712 phút, 7 giâySau khi chúng ta đã khởi tạo xong, khai báo xong ba cái kiểu dữ liệu phục vụ cho
12:1412 phút, 14 giâyviệc viết hợp đồng thì chúng ta sẽ đi vào viết từng hợp đồng một. Thì đầu tiên
12:2112 phút, 21 giâythì chúng ta sẽ viết hợp đồng mining policy script. Đấy, chúng ta sẽ khai báo
12:3012 phút, 30 giâythì vẫn là dùng để ờ tạo ra cái maining policy script để
12:3912 phút, 39 giâyđính vào cái giao dịch min thôi. Và phục vụ sau này phục vụ bơ nữa. Đấy, thì hành động này là hành động min.
12:4912 phút, 49 giâyhành động min này với các tham số truyền vào đó là redeemer đấy. Voly trang section này.
12:5812 phút, 58 giâyTiếp theo đó là lấy ra thông tin của giao dịch min. Đấy,
13:0913 phút, 9 giâynếu như không phải hành động min thì fail đấy.
13:1513 phút, 15 giâyRồi min đấy lắp một cái hàm đấy. Rồi l section này.
13:3213 phút, 32 giâyTiếp theo kiểm tra redeem.
13:3613 phút, 36 giâywhen redeemer is redeem is
13:4813 phút, 48 giâyis ờ chúng ta sẽ có hai cái hành động chúng
13:5713 phút, 57 giâyta đã khai báo ở trên một là min tocen hai là b token. Đấy nếu là min token thì
14:0314 phút, 3 giâysao? Min token với tham số là token name
14:1614 phút, 16 giâyto name này.
14:3414 phút, 34 giâyHm số token name.
14:3614 phút, 36 giâyĐầu tiên là chúng ta sẽ phải tạo ra asset name theo chuẩn shift 68
14:4414 phút, 44 giâythì chúng ta sẽ tạo asset name cho cái reven token.
14:4914 phút, 49 giâyĐấy thì cái hàm hàm by by array.c Concat này
14:5614 phút, 56 giâychính là nối cái profit vào cái token name để
15:0215 phút, 2 giâyừ định nghĩa đó là token ref token. Đấy tương tự chúng ta
15:1115 phút, 11 giâysẽ tạo user token nối thêm cái profit vào. Rồi sau khi đã
15:1915 phút, 19 giâytạo xong rồi nhá thì chúng ta sẽ thực hiện kiểm tra min đúng số lượng token
15:2615 phút, 26 giâykiểm tra một thôi thì chúng ta sẽ lấy ra
15:3115 phút, 31 giâyờ cái a số lượng min
15:4215 phút, 42 giâybằng ờ dùng cái hàm là access chấm
15:4815 phút, 48 giâyquantity of đấy thì cái hàm này nó để làm gì? Nó sẽ thực
15:5615 phút, 56 giâyhiện lấy ra số lượng của cái reference token có cái poid và cái reference token name
16:0516 phút, 5 giâylà bao nhiêu trong cái giao dịch min. Đấy.
16:1216 phút, 12 giâyTiếp theo là lấy cái user amount.
16:1916 phút, 19 giâyRồi tiếp theo thì chúng ta sẽ thực hiện kiểm tra cái giao dịch min này phải min đúng số lượng.
16:3016 phút, 30 giâyĐấy. Ok. Mình xin nhắc lại một lần nữa nhé.
16:3916 phút, 39 giâyNếu như cái redeem này nó mà hành động min token truyền vào tham số token name
16:4616 phút, 46 giâythì chúng ta sẽ phải thực hiện xây dựng reference token name và user token name
16:5316 phút, 53 giâyđấy bằng cách nối thêm các cái profit tương ứng với từng loại token.
17:0117 phút, 1 giâyĐấy, sau khi chúng ta đã tạo được token name xong, chúng ta sẽ lấy ra cái số lượng của cái hành động min ờ cho cái
17:1117 phút, 11 giâytoken với cái follow ID và cái reference token name tương ứng. Đấy. Và kiểm tra
17:1817 phút, 18 giâyđiều kiện là chỉ được phép min đúng một ref token và một user token thôi. Đấy.
17:2617 phút, 26 giâyOk.
17:2817 phút, 28 giâyBước tiếp theo chúng ta sẽ viết cái logic ờ cho B
17:3617 phút, 36 giâytoen cũng tương tự tương tự như vậy đấy. B token cũng nhận vào cái tham số đó là token name đấy.
17:4717 phút, 47 giâyCũng xử lý ờ cái token name dưới dạng shift 68 chuẩn sau đó cũng lấy ra số
17:5517 phút, 55 giâylượng và kiểm tra. Tuy nhiên khác ở min đó là nó phải là -1. Ok chưa?
18:0218 phút, 2 giâyOk. Chúng ta bước sang bước tiếp theo.
18:0818 phút, 8 giâyRồi về cơ bản thì cái min ấy, min và
18:1518 phút, 15 giâycái min ấy nó chỉ có logic như vậy thôi. Nó không quá là phức tạp.
18:2318 phút, 23 giâyĐấy,
18:2918 phút, 29 giâyvề cơ bản min thì nó không không phức tạp như mọi người nghĩ. Nó chỉ là một
18:3518 phút, 35 giâycái hợp đồng có cái logic để tạo ra một cái policy script. Đấy,
18:4618 phút, 46 giâyok, đã xong phần hợp đồng min nhá.
18:5118 phút, 51 giâyTiếp theo thì chúng ta sẽ vào code cái hợp đồng store để lưu lưu
18:5818 phút, 58 giâynhầm mình hơi nhầm cái thuần ngữ một chút để chứa các cái UTO chứa các
19:0819 phút, 8 giâyrefer token ấy. Đấy và thực hiện các cái logic update hoặc là B thì chúng ta sẽ nhảy vào code luôn.
19:1819 phút, 18 giâyĐầu tiên đó là khai báo
19:2519 phút, 25 giâyđây. Khai báo đặt tên là val shift 68 story thì hành động là hành động spend đấy.
19:3519 phút, 35 giâySPEN này các tham số như là đầu tiên là datum đấy. Datum để lấy các thông tin redeem.
19:4719 phút, 47 giâyĐể xem xem là hành động là hành động update hay là gì. Cái này là
19:5519 phút, 55 giâyừ lấy cái thông tin của cái ờ tham chiếu đến cái UTXO đang bị đang được spain đấy. Đấy,
20:0620 phút, 6 giâychủ thích ở đây làm chiếu đến TXO
20:1320 phút, 13 giâyXO đang được chi tiêu hoặc gọi là spend.
20:2320 phút, 23 giâyĐấy, tiếp theo đó là trang session nha.
20:2920 phút, 29 giâyRồi đầu tiên thì chúng ta sẽ lấy ra thông tin liên quan đến datum này.
20:3820 phút, 38 giâyLấy datum ra spend eo học.
20:5220 phút, 52 giâyỪ. Đầu tiên là lấy thông lấy thông. thông tin datum.
21:0021 phútRồi đầu tiên là expect này.
21:0721 phút, 7 giâyTiếp theo là lấy thông tin từ Datum ra.
21:1221 phút, 12 giâyTiếp theo là lấy thông tin liên quan đến đấy. Để kiểm tra chữ kỹ ấy. Tiếp theo là lấy policy id của tài sản.
21:2421 phút, 24 giâyRồi tiếp theo là lấy access name. Đấy.
21:3021 phút, 30 giâyRồi thì cái hợp đồng này ấy
21:3921 phút, 39 giâynó sẽ hợp dòng store
21:4521 phút, 45 giâydòng sub store với thiết kế
21:5521 phút, 55 giâychỉ cho P với a với update đi update
22:0422 phút, 4 giâycó các lô điều kiện điều kiện cần nó là ký bởi
22:1422 phút, 14 giâyđấy. Thứ hai là ờ cái input
22:2322 phút, 23 giâyinput input khi chi tiêu phải có reven token và output
22:3322 phút, 33 giâyout
22:4022 phút, 40 giâyhợp đồng phải có ref
22:4722 phút, 47 giâytoen và datum và datum mới.
22:5322 phút, 53 giâyCái này không biết có dùng được không nhưng mà hiện tại cứ để lại đó và datum mới ờ
23:0223 phút, 2 giâydatum phải có các trường
23:0723 phút, 7 giâyngười ta được cập nhật vẽ polosy name dự nguyên đấy. Rồi nhá đầu tiên thì
23:1723 phút, 17 giâychúng ta sẽ viết cái kiểm tra chữ ký trước. Logic kiểm tra chữ ký.
23:2323 phút, 23 giâylogic kiểm tra chữ ký này. Đấy,
23:2723 phút, 27 giâyphần này khá đơn giản thôi. Rồi, ok, kết thúc. Kết thúc kiểm tra chữ kỹ. Rồi
23:3923 phút, 39 giâyok, xong phần này rồi nhá. Tiếp theo này chúng ta sẽ when redeem. Lúc nãy chúng
23:4723 phút, 47 giâyta tab rồi nhá. Cái này không thôi. Xóa rồi xóa rồi chắc không dùng đâu.
23:5723 phút, 57 giâyRồi viết lại từ đầu đi. Đầu tiên là nếu như là redeem e
24:0524 phút, 5 giâywhen redeem is is
24:1224 phút, 12 giâyđầu tiên là update metadata đấy.
24:1824 phút, 18 giâyUpdate metadata thì có đầu tiên là
24:2424 phút, 24 giâyinput này. Khi GT phải có reven token đấy thì chúng ta sẽ phải tìm input của script.
24:3524 phút, 35 giâyTìm input script. Đầu tiên là phải kiểm tra xem cái input này có chứa
24:4224 phút, 42 giâycái reference token hay không. Đấy.
24:5524 phút, 55 giâyRồi sau đấy thì chúng ta sẽ lấy ra cái
25:0525 phút, 5 giâyhợp đồng thông minh, địa chỉ của hợp đồng.
25:1925 phút, 19 giâyĐấy, lấy địa chỉ của hợp đồng cái
25:2725 phút, 27 giâyinput này này. Đấy. Tiếp theo thì chúng ta sẽ tạo
25:3525 phút, 35 giâyreference token name bằng cách nối thêm cái profit vào
25:4425 phút, 44 giâydatum cái datum access ấy. Lấy datum trên đây. Đấy. Tiếp theo thì chúng ta sẽ
25:5125 phút, 51 giâykiểm tra input có chứa ref token name hay không.
26:0226 phút, 2 giâyRồi
26:1526 phút, 15 giâylet input head ref token bằng rồi access quantity
26:3726 phút, 37 giâyInput access nà. Cái này out chấm output
26:4726 phút, 47 giâychấm value phải
26:5526 phút, 55 giâypoly id này và reven token name và bằng bằng 1
27:0627 phút, 6 giâycái hàm này này mục đích của nó là kiểm tra cái input này
27:1527 phút, 15 giâynó có chứa cái reference token name hay không ấy.
27:2027 phút, 20 giâyRồi ok xong rồi.
27:2527 phút, 25 giâyXong phần kiểm tra xong phần kiểm tra cái logic.
27:3927 phút, 39 giâyInput phải chứa cái ref token name. Tiếp theo là kiểm tra
27:5327 phút, 53 giâyoutput người lại script phải chứa
27:5927 phút, 59 giâyvề token datum mới có các trường
28:0928 phút, 9 giâycập nhật đúng
28:1928 phút, 19 giâycũng không được không được thay đổi. Đấy, chúng ta sẽ
28:2728 phút, 27 giâyviết ra l valid input này
28:3728 phút, 37 giâybằng list any list chấm list.
28:4928 phút, 49 giâyỜ tx.
28:5528 phút, 55 giâyFN m ngú
29:0329 phút, 3 giâynày và
29:1429 phút, 14 giâywhen output chdatum
29:2729 phút, 27 giâyinline datum data
29:4329 phút, 43 giâyexp Datung
29:5629 phút, 56 giâyừ bằng data
30:0730 phút, 7 giâyrồi
30:2230 phút, 22 giâyChào output có bằng
30:3030 phút, 30 giâyaccept quantity
30:4730 phút, 47 giâyđấy. Đấy, tức là luồng của cái này này.
30:5530 phút, 55 giâyĐầu tiên là nó sẽ thực hiện kiểm tra xem cái output ấy, output gửi lên hợp đồng
31:0331 phút, 3 giâymới ấy có chứa cái UKO
31:0831 phút, 8 giâymà cái uto mới nó phải chứa cái refer token mới. Đấy,
31:1831 phút, 18 giâyđể tránh cái tình trạng ví dụ UTXO sau khi gửi lên hợp đồng không chứa cái ref token thì nó sẽ liên kết với
31:2831 phút, 28 giâyuser token nghiệp gì. Đấy, cái bước này chính là bước để
31:3531 phút, 35 giâyừ thực hiện giải quyết cái vấn đề đó nhằm tạo ra một cách logic rảng buộc.
31:4831 phút, 48 giâyOk.
31:5031 phút, 50 giâyRồi tiếp theo
32:0232 phút, 2 giâytiếp theo có sẽ có thêm một số cái điều kiện ví dụ như là ừ kiểm kiểm tra
32:1132 phút, 11 giâydàng về thông tin sau khi update đấy. một là
32:2132 phút, 21 giâyoutput phải bằng output phải output
32:2932 phút, 29 giâycái địa chỉ của cái output phải là cái địa chỉ ờ mà
32:3532 phút, 35 giâyhợp đồng store đấy. Đấy tiếp theo là output phải có cái ref token.
32:4432 phút, 44 giâyĐấy.
32:4532 phút, 45 giâyTiếp theo là new datum.
32:4932 phút, 49 giâyCh poid phải giữ nguyên. Access name cũng phải giữ nguyên không được thay đổi này. Đấy.
33:0033 phútVà nếu không có gì thích hô.
33:2433 phút, 24 giâyĐấy. Tiếp theo là điều kiện đó là m be size này và phải được ký bởi user tương ứng ấy.
33:3833 phút, 38 giâyTiếp theo là phải có input phải chứa cái reference token và output phải chứa cái
33:4633 phút, 46 giâyreference token kết hợp với các điều kiện này. Đó thiếu cái ngoặc nào nhỉ?
33:5833 phút, 58 giâyĐây à.
34:0934 phút, 9 giâyđây đúng không?
34:1634 phút, 16 giâyRồi tiếp theo là đến cái bn đấy. Cái update.
34:2434 phút, 24 giâyXong rồi nhá.
34:2634 phút, 26 giâyB ref.
34:3634 phút, 36 giâythì chúng ta chỉ cần cái điều kiện là phải được ký với
34:4634 phút, 46 giâychủ nhân thôi. Th phải được ký bởi cái ví tương ứng với cái public key head truyền vào public key head trong datum ấy. Đấy.
34:5834 phút, 58 giâyRồi đã code xong hợp đồng. Giờ t chúng ta check thử xem nào.
35:0735 phút, 7 giâyMột lỗi. Lỗi ở đâu đây?
35:1135 phút, 11 giâyExpect new datum nà. À rồi cái này là hai chấm chứ không phải bằng đâu.
35:1935 phút, 19 giâyCái này lại thiếu mất cái dống ngoặc nào rồi.
35:2435 phút, 24 giâyWhen mất cái ngoắng này đúng không?
35:3635 phút, 36 giâyRồi những này thừa không? Rồi đấy.
35:5835 phút, 58 giâyĐâu nhở? Expect newatum này.
36:0436 phút, 4 giâyLed led thiếu thiếu khai báo rồi vẫn sai nhiều lỗi quá Ah.
37:0337 phút, 3 giâyRồi nên bây giờ mới đúng này. Mình xin lỗi các bạn mình hơi chủ quan trong việc
37:1337 phút, 13 giâyxử lý c pháp address này. Scrip address
37:2237 phút, 22 giâyscript address
37:3337 phút, 33 giâyon choutout output
37:4937 phút, 49 giâyno expect some
37:5837 phút, 58 giâyinput này đấy
38:1038 phút, 10 giâyquantity x Quantity này
38:2138 phút, 21 giâyowner input output chvue sao lại không có nhỉ?
38:3138 phút, 31 giâyList list tx list file tx.input Input này fn input nà output
38:4138 phút, 41 giâyreference input chấm output reference này
38:5238 phút, 52 giâyrefer này ok script address nà input này
39:0039 phútoutput address này Ok.
39:0739 phút, 7 giâyInput head input head re toen access quantity of
39:1939 phút, 19 giâyinput này datum này có khác gì đâu nhỉ?
39:3739 phút, 37 giâyX bằng list.file file
40:1140 phút, 11 giâyOutput
40:2840 phút, 28 giâyoutput này học chffest đây.
41:3141 phút, 31 giâylại không có nhỉ?
41:4541 phút, 45 giâyува
42:0442 phút, 4 giâymình thường một dấu rồi. Ok, như vậy đã check thành công
42:1342 phút, 13 giâyrồi. Mình xin lỗi các bạn một chút về một số sự cố trong cú pháp. Mong các bạn
42:1942 phút, 19 giâythông cảm. Đấy, sau khi chúng ta sửa xong nó cũng đã check thành công rồi.
42:2542 phút, 25 giâyĐấy, mình sẽ điểm lại một chút về cái hợp đồng của chúng ta. Thì chúng ta sẽ có hai cái hợp đồng chính. Hợp đồng đầu
42:3442 phút, 34 giâytiên đó là hợp đồng dùng để tạo ra cái minting proy script mục đích là dùng để min và burn token.
42:4442 phút, 44 giâyVà cái hợp đông thứ hai là cái hợp đồng dùng để store tức là dùng để chứa các cái UTO.
42:5342 phút, 53 giâyĐấy, trong uto sẽ chứa những cái datum để chúng ta update. Đấy, và trong nó sẽ có cái reference token.
43:0543 phút, 5 giâyĐấy.
43:0843 phút, 8 giâyĐấy, hợp đồng update thì chúng ta sẽ có các cái hành động đó là update metadata hoặc là bơ. Đấy,
43:2143 phút, 21 giâyđối với update thì nó sẽ có ba điều kiện. Điều kiện đầu tiên khi thực hiện
43:2843 phút, 28 giâyký giao dịch thì nó phải được ký đúng với cái khóa tương ứng với cái khóa được lưu trữ trong datum. Đấy, điều kiện
43:3643 phút, 36 giâythứ hai đó là cái input khi được chi tiêu nó phải chứa cái reference token.
43:4443 phút, 44 giâyVà điều kiện thứ ba đó là cái output được tạo ra gửi lên hợp đồng
43:5143 phút, 51 giâythì nó phải gửi đúng hợp đồng này. Thứ hai là nó phải chứa reference token. Và
43:5943 phút, 59 giâytiếp theo là các cái trường thông tin thì nó không được thay đổi ngoài cái trường metadata và version. Đấy.
44:0644 phút, 6 giâyĐấy như vậy thì mình cũng đã hướng dẫn các bạn khá là chi tiết về cái quy trình mình code hợp đồng thông minh cũng như
44:1544 phút, 15 giâylà triển khai nó để tạo ra cái ờ gì nhở?
44:2344 phút, 23 giâyMột cái bản hợp đồng gọi là đơn đơn giản hóa nhất có thể. giúp mọi người hiểu
44:3044 phút, 30 giâyđược một cái quy trình, những cái logic cần phải có trong cái hợp đồng thông
44:3744 phút, 37 giâyminh của một cái dự án theo chuẩn Shift 68 nó bao gồm những thành phần nào. Đấy,
44:4444 phút, 44 giâytiếp theo thì vì đã check thành công rồi thì chúng ta sẽ thực hiện build giao dịch
44:5144 phút, 51 giâyđể nó biên dịch cái file hợp đồng của chúng ta thành cái file Bluot. Jason phục vụ mục đích để xử lý như là code
45:0045 phútoff chain hoặc là back end trong các bài học tiếp theo. Đấy, chúng ta sẽ thực hiện câu lệnh I can build.
45:0945 phút, 9 giâyRồi trong suộc code thư mục hợp đồng thông minh của chúng ta sẽ có thêm cái file là.
45:1745 phút, 17 giâyĐây là file mà hệ thống đã biên dịch cho chúng ta. Đấy. Ok.
45:2445 phút, 24 giâyNhư vậy thì mình đã chia sẻ hướng dẫn khá là chi tiết trong
45:3245 phút, 32 giâycái phần hướng dẫn code hợp đồng thông minh theo chuẩn Shift 68. Mong rằng nó sẽ giúp mọi người hiểu được nguyên lý
45:4245 phút, 42 giâyhoạt động để sau này có thể code ra những cái
45:4945 phút, 49 giâyứng dụng thực tế áp dụng Shift 68. Hơn nữa phục vụ mục đích đời sống hàng ngày
45:5545 phút, 55 giâycủa mọi người. Và đến đây thì mình xin phép kết thúc video tại đây. Xin chào mọi người.

