video có 4 phần:
========================Phần 1 video 1 backend chưa có run: Link video :https://www.youtube.com/watch?v=BZ_EaiZyOY0 ==================

0:1414 giâyXin chào mọi người. Chào mừng mọi người đã đến với video tiếp theo trong khóa học lập trình B Cadano của chúng tôi.
0:2222 giâyTrong video này chúng ta sẽ tiếp tục triển khai ví dụ Shift 68.
0:2727 giâyThì tiếp tục với chuối video hướng dẫn triển khai ví dụ shift 68 trong những
0:3535 giâyvideo trước đó thì trong video này ờ chúng tôi sẽ hướng dẫn mọi người triển khai full một app bao gồm các thành phần
0:4444 giâyđó là front end và back end để thực hiện các tính năng min update metadata cũng
0:5050 giâynhư là burn upset trực tiếp ngay trên giao diện thì công nghệ
0:5757 giâyỜ công công nghệ mình sử dụng cho font end đó là next.
1:051 phút, 5 giâyCòn back end thì vẫn là back end được viết bằng by Canadano.
1:171 phút, 17 giâyThì đầu tiên cũng như là giống giống với những bài học trước đó thôi. Ờ
1:251 phút, 25 giâymình vẫn sẽ nói lại cái quy trình
1:321 phút, 32 giâyđấy. mình vẫn sẽ thực hiện cái ộc xộc code mà mình đã hướng dẫn trong
1:401 phút, 40 giâynhững bài học trước đó. Và trong bài học trước đó chúng ta đã triển khai xong phần ờ code hợp đồng thông minh và triển
1:491 phút, 49 giâykhai và thực hiện code phần code off trên để thực hiện tương tác ừ trực tiếp
1:561 phút, 56 giâyvới hợp đồng thông minh bằng các cái script.
2:002 phútĐấy và trong bài học tiếp theo này thì mình sẽ thực hiện tạo ra full một cái
2:072 phút, 7 giâyứng dụng de có hai phần font end và back end. Đấy thì đầu tiên vẫn là những bước quen thuộc
2:162 phút, 16 giâythôi. Đầu tiên thì chúng ta vẫn phải khởi tạo môi trường ảo như những bài học trước đó. Vì là chúng ta đã cài đặt rồi
2:242 phút, 24 giâynên chúng ta không chạy lại câu lệnh này. Chúng ta sẽ thực hiện kích hoạt môi trường ảo. Ok. Ờ sau khi kết hoạt môi
2:332 phút, 33 giâytrường ảo xong thì các cái setup ừ chúng ta cũng không cần phải install các cái thư viện trong những bài học trước đó để
2:422 phút, 42 giâycode cái back end. Đấy vì là chúng ta vẫn dùng cái xộc cũ ấy nên không cần install lại thư viện.
2:552 phút, 55 giâySau khóa học này thì mình sẽ gọi là pú tất cả code liên quan đến các video bài giảng lên gitub của team. Mọi người có
3:053 phút, 5 giâythể clon về và ừ đọc lại các cái nội dung code dự án mà
3:133 phút, 13 giâybọn mình đã triển khai trong các video mọi người nên mọi người cứ yên tâm.
3:193 phút, 19 giâyĐấy thì đầu tiên đó là chúng ta sẽ build một con con backend trước. Đấy
3:293 phút, 29 giâythì trong thư mục shift shift 68 này chúng ta sẽ thực hiện tạo một cái folder back end để chúng ta code back end.
3:383 phút, 38 giâyRồi đầu tiên thì chúng ta sẽ viết hàm main luôn.
3:493 phút, 49 giâyĐấy.
3:523 phút, 52 giâyRồi trong hàm trong hàm main này chúng ta sẽ làm những
3:593 phút, 59 giâygì? Chúng ta sẽ xây một cái con backend API, sử dụng phát API của back end
4:074 phút, 7 giâyđể xử lý các yêu cầu của font end. Đấy.
4:204 phút, 20 giâyBao gồm các yêu cầu đó là min access này.
4:254 phút, 25 giâyĐấy, update metadata, Bn access và query các metadata của từng asset để
4:344 phút, 34 giâyhiển thị lên giao dịch và list các asset trong ví. Đó.
4:424 phút, 42 giâyNgoài ra thì còn có các dịch vụ như là ờ tạo các cái
4:484 phút, 48 giâyừ giao dịch mà chưa có chữ ký ờ để gửi lại forend. Font ký bằng wallet browser.
4:584 phút, 58 giâyĐấy thì mình sẽ nhắc lại một chút vì là next JS ấy nó vẫn chưa có thư viện hỗ trợ.
5:095 phút, 9 giâycủa BY Canano để NJS có thể code thư viện Bano ngay trên
5:175 phút, 17 giâyờ ngay trên giao diện người dùng. Chính vì thế mà chúng ta cần phải build cái con backend
5:255 phút, 25 giâynày để khi mà chúng ta ờ gửi đến những cái ờ yêu cầu như là yêu cầu min access
5:355 phút, 35 giâynày update metadata hoặc là burn access từ font end thì back end này nó sẽ phải xử lý được.
5:425 phút, 42 giâyCòn bình thường nếu như chúng ta dùng thư viện luit thì mọi người có thể code ngay được trên suộc của font luôn.
5:535 phút, 53 giâyĐấy thì ok về tổng quan thì mục tiêu trong cái phần backend này mục tiêu của nó là dùng
6:026 phút, 2 giâyđể code các cái API nhận các cái yêu cầu từ font end và xử lý logic. Đấy thì các cái bước mình sẽ thực hiện xây dựng backend.
6:156 phút, 15 giâyĐầu tiên đó là chúng ta sẽ phải cài đặt phát API này.
6:226 phút, 22 giâyĐấy.
6:266 phút, 26 giâyTiếp theo ừ gọi là mình sẽ nói luôn có tổng bao nhiêu bước nhá. Xong đó mình sẽ nhảy vào code từng bước luôn. Đấy. Đầu
6:366 phút, 36 giâytiên mình sẽ cài đặt thư viện PH API và UVCE để xây dựng Backend API.
6:446 phút, 44 giâyĐấy. Tiếp theo là định nghĩa các mô hình dữ liệu với thư viện Bandanic Bantatic.
6:536 phút, 53 giâyĐấy, nó sẽ định nghĩa các yêu cầu và phản hồi API đến từ front end. Tiếp theo
7:007 phútđấy là sử dụng acing context manager để quản lý các cái vòng đời của ứng dụngấy. Thiết lập trên context và các cái script.
7:147 phút, 14 giâyĐấy. Tiếp theo là tạo ứng dụng phát API với cấu hình Mr. cần thiết. Và bước thứ
7:227 phút, 22 giâynăm đó là định nghĩa các envoy API để xử lý các yêu cầu từ font end bao gồm các envoy mình đã liệt kê này. Và thứ sáu và
7:317 phút, 31 giâyừ bước thứ sáu và bước thứ bảy chúng ta sẽ xử lý lối và trả về các cái phản hồi cho từng point. Và bước bảy là chạy ứng
7:407 phút, 40 giâydụng. Đầu tiên thì chúng ta sẽ thực hiện khai báo các cái thư viện, import các thư viện như là OS SH Jason này. Đấy,
7:507 phút, 50 giâythư viện Kiều này, thư viện Time này. Đấy,
7:577 phút, 57 giâyđầu tiên là import thư viện ừ
8:048 phút, 4 giâycontext a lif đấy.
8:108 phút, 10 giâyAing context manager để thực hiện quản lý vòng đời của ứng dụng này.
8:178 phút, 17 giâyTiếp theo thì chúng ta sẽ ờ import các cái thư viện liên quan đến phát API.
8:268 phút, 26 giâyĐấy thì cái phát API này mình sẽ nói lại dùng để ờ xây các cái API này và xử lý
8:368 phút, 36 giâycác cái yêu cầu http. Tiếp theo là import cáiwe
8:428 phút, 42 giâycore đấy để gọi là cho font end có thể query đến back end.
8:518 phút, 51 giâyRồi tiếp theo là thư viện Ban Bantic đấy.
9:009 phútĐể định nghĩa các mô hình dữ liệu ừ cho các request và red bond
9:079 phút, 7 giâyvà netinv.v tiền.
9:119 phút, 11 giâyTiếp theo là import các cái thư viện của B Canano.
9:159 phút, 15 giâyRồi tiếp theo là import ừ một số các cái thư viện để chúng ta ờ xử lý withnet set.
9:269 phút, 26 giâyĐấy thì cái widnet set này tí nữa mình sẽ nhấn mạnh lại cho các bạn tại sao cần
9:339 phút, 33 giâyphải dùng nó. Tiếp theo là import cái tiện x mà chúng ta đã xây dựng từ module of trên trong bài học trước đó. Đấy.
9:439 phút, 43 giâyCác cái hàm tiện x đây này.
9:469 phút, 46 giâyRồi vì là các cái video nó liên quan mật
9:539 phút, 53 giâytiết với nhau nên mọi người chú ý là ờ xem gọi là khi học thì phải học
10:0010 phúttừng video một và đúng thứ tự nhé. thì mới hiểu được bài học
10:0810 phút, 8 giâyđấy. Tiếp đầu tiên chúng ta nhảy vào code này. Đầu tiên đấy là load a môi trường khai báo một số cái biến toàn cục.
10:2110 phút, 21 giâyĐấy, đầu tiên là trên context này. Tiếp theo là block for context này.
10:2910 phút, 29 giâyRồi tiếp theo là đường dẫn đến file Bluetooth chên n.
10:3610 phút, 36 giâyTiếp theo là network này. Đấy, cái này để xử lý liên quan đến blood for đấy. Tiếp theo là khai báo
10:4410 phút, 44 giâykiểu dữ liệu min script này để đọc thông tin của hợp đồng thông minh này. Store script cũng vậy. Vol cidd này và store address. Đấy.
10:5910 phút, 59 giâyRồi sau khi chúng ta đã định nghĩa các cái biến toàn cục ừ để xử lý trong cái
11:0611 phút, 6 giâyứng dụng thì chúng ta sẽ đầu tiên đó là bước đến định nghĩa các cái mô đồ.
11:1311 phút, 13 giâyĐấy, định nghĩa các cái mô đồ để xác định cấu trúc dữ liệu cho các yêu
11:1911 phút, 19 giâycầu và phản hồi đến từ font. Đấy chúng ta sẽ sử dụng ờ Pantic model.
11:3311 phút, 33 giâyĐấy. Đầu tiên thì chúng ta sẽ khai báo cái min request.
11:4011 phút, 40 giâyMin request này thì nó sẽ ờ là cái module để
11:4911 phút, 49 giâykhai báo cái kiểu dữ liệu cho cái request min đấy nó sẽ khai báo khai
12:0012 phútbáo báo
12:0912 phút, 9 giâyKiểu dữ liệu
12:1912 phút, 19 giâycho yêu cầu min access này. Đấy, nó sẽ giúp xác định các trường cần thiết để
12:2712 phút, 27 giâymin một access mới. Đấy, mẫu của nó là như vậy.
12:3612 phút, 36 giâyĐây bao gồm các trường như là wall này,
12:4612 phút, 46 giâydescription, wall nè, token name này.
12:5512 phút, 55 giâyĐấy, description mô tả FT. Đấy.
13:0213 phút, 2 giâyOk. Tiếp theo thì chúng ta sẽ khai báo cái module của cái update request.
13:0913 phút, 9 giâyĐấy. Tiếp theo là mod.
13:1813 phút, 18 giâyModu của module của yêu cầu
13:2513 phút, 25 giâycập nhật metadata. Cái này nó sẽ dùng cho end point API update này. Đấy
13:3313 phút, 33 giâythì cái này khai báo class update request
13:4113 phút, 41 giâyđấy có các kiểu dữ liệu đó là valid address nè, token name nè, new
13:4913 phút, 49 giâydescription n tức là khi chúng ta gửi cái yêu cầu lên bao gồm các cái trường wallet, address nè, token name và new description.
13:5913 phút, 59 giâyĐấy. Tiếp theo là module của module của
14:0714 phút, 7 giâyB toen yêu cầu B access đấy. Dùng chop
14:1614 phút, 16 giâyAPI B này cần các trường như là đấy mình vừa code mình sẽ vừa chú thích luôn.
14:2714 phút, 27 giâyCó gì không hiểu mọi người xem lại burn request nào base model cái thừa base
14:3414 phút, 34 giâymodel này. Đấy cũng bao gồm các cái trường như là valid address và token name.
14:4414 phút, 44 giâyTiếp theo đó là mod trang session.
14:5614 phút, 56 giâyỪ
15:0615 phút, 6 giâycái này nó sẽ dùng cho các cái giao dịch như là min API update. Đấy dùng cho các
15:1415 phút, 14 giâycái point ừ gọi đến là yêu cầu min gọi đến yêu cầu update. Đấy, cái này là mod phản hồi nhá. Phản hồi tức là respon ấy,
15:2815 phút, 28 giâynó sẽ định nghĩa cấu trúc phản hồi khi một giao dịch được gửi tới. Đấy, bao gồm
15:3615 phút, 36 giâytrạng thái thành công, thông điệp của ừ thông điệp là COHấ
15:4415 phút, 44 giâyvà giao dịch là giao dịch chưa ký.
15:5215 phút, 52 giâycó các trường.
15:5715 phút, 57 giâyĐấy, mình sẽ nhấn mạnh lại mọi người một chút nhá. Khi mà chúng ta
16:0416 phút, 4 giâyừ min hay là update hay là bơ ấy thì có một điểm chung đó là chúng ta
16:1216 phút, 12 giâyký giao dịch thì phải ký bên font end đúng không? Đấy,
16:1816 phút, 18 giâycòn back end nó không có chế độ ký giao dịch. Chính vì thế mà khi người dùng gửi yêu cầu min
16:2716 phút, 27 giâyupdate bơ đấy thì người dùng sẽ gửi cái thông tin về tài sản muốn thực hiện này
16:3416 phút, 34 giâynày. Đấy, thì lên backend, backend sẽ thực hiện
16:4016 phút, 40 giâybuild giao dịch. Tuy nhiên là vì là chỉ có thể là ký hiệu ở font end đúng không?
16:4716 phút, 47 giâyNên back end không có chữ ký nên phải back end chỉ có thể build giao dịch không có chữ ký và gửi cái giao dịch đó về font end. Đấy,
16:5716 phút, 57 giâygửi cái giao dịch không có chữ ký đó về font end và font end sẽ phải ký bằng ví ở trình duyệt của người dùng ấy. Xong
17:0717 phút, 7 giâygửi lại, người dùng lại tiếp tục gửi lại cái giao dịch đá ký lên back end để back end xử lý ờ thêm cái chữ ký đó vào giao
17:1617 phút, 16 giâydịch và submit. Đấy, mình đã nhắc khá nhiều lần về cái a ờ gì nhở? nguyên lý
17:2317 phút, 23 giâyhoạt động của cái a của chúng ta. Rồi
17:3117 phút, 31 giâyrồi tiếp theo là chúng ta sẽ định nghĩa mô hình
17:3917 phút, 39 giâymod yêu cầu gửi giao dịch nha.
17:5217 phút, 52 giâyĐấy, mình sẽ dùng cho envoy.
17:5817 phút, 58 giâyĐấy, mô hình này xác định các trường cần thiết này. Đấy, bao gồm các
18:0618 phút, 6 giâygiao dịch này và witness set từ ví nà. Thứ hai là trang session object này.
18:1518 phút, 15 giâyĐấy.
18:2318 phút, 23 giâyỨ mình cứ chú thích một hồi nhá.
18:2918 phút, 29 giâyXong đấy mình giải thích lại. Mình vừa giải thích xong rồi. Đây mình nhắc lại
18:3518 phút, 35 giâymột lần nữa này. Tức là khi người dùng gửi cái submit này, submit giao dịch lên
18:4518 phút, 45 giâybackend ấy thì back end sẽ nhận được các cái thông tin bao gồm body và with
18:5218 phút, 52 giâywidnet set. Đấy. Đấy thì backend sẽ
18:5918 phút, 59 giâythực hiện hợp nhất cái widnet set và cái trang section và submit lên on trên.
19:1219 phút, 12 giâyỪ. Ok. Này có lẽ là hơi hơi hơi thiếu clear một chút thì mình sẽ clear lại.
19:2019 phút, 20 giâyỪ. Đầu tiên người dùng gửi những cái yêu cầu như là
19:2619 phút, 26 giâymin này, update này, bơ đúng không? Thì
19:3319 phút, 33 giâyvì là back end nó không thể có cái chế độ gọi đến ví ở bên back end đúng không?
19:3919 phút, 39 giâyTrình duyệt nó chỉ hỗ trợ ví ở front end thôi. Đấy nên back end nó không thể ký được bên back end được. Mọi
19:4819 phút, 48 giâyngười hiểu chứ? Đấy, trình duyệt nó chỉ hỗ trợ kết nối ví và ký giao dịch ở bên Font
19:5719 phút, 57 giâyend. Còn back end nó không thể không hỗ trợ. Đấy, nên chúng ta mới gọi là xử lý
20:0320 phút, 3 giâycái vấn đề này. Đó là người dùng yêu cầu tạo giao dịch min hoặc là update này
20:1120 phút, 11 giâyhoặc là bơ này. Đấy, người dùng sẽ yêu cầu đến back end. Đấy, back end sẽ thực hiện này build cái giao dịch đấy.
20:2420 phút, 24 giâyNhưng mà cái giao dịch đấy là cái giao dịch chưa ký đấy và gửi lại cái giao dịch chưa ký về với Font. Đấy thì tại
20:3420 phút, 34 giâyforend thì người dùng sẽ thực hiện ký cái giao dịch đấy bằng ví theo chuẩn shift 30 đây
20:4020 phút, 40 giâynày. Đấy sau đó sau khi ký xong sẽ gửi lại cái thông tin giao dịch kèm theo cái webnet
20:5020 phút, 50 giâyset đấy chứ chứa chữ ký của người dùng về lại back end thì back end nhận được
20:5720 phút, 57 giâysẽ hợp nhất cái widnet set này vào trang section gốc. và submit lên on trên. Đấy thì bình thường là trang session nó sẽ
21:0621 phút, 6 giâybao gồm hai thành phần. Mọi người có thể nhìn thấy này. Body đấy. Trang session body chứa các input, output này, min
21:1421 phút, 14 giâynày, một số các tham số khác. Ngoài ra còn chứa gọi là đối tượng witness set.
21:2121 phút, 21 giâyĐấy gọi là trang session wnet set chứa các thông tin như script này, redeem này, plus data chẳng hạn. Đấy mọi người ok chưa?
21:3121 phút, 31 giâyTức là end thì đóng vai trò là connect wallet này, ký giao dịch này. Còn back
21:3921 phút, 39 giâyend là build giao dịch. Đấy, build giao dịch và trả về giao dịch chưa có chữ ký.
21:4821 phút, 48 giâyvì back end nó không hỗ trợ ờ ừ kiểu như là connect ví hoặc là ký giao
21:5621 phút, 56 giâydịch ngay trên giao diện ấy. Đấy nên chúng ta phải xử lý như vậy. Ok. Tiếp
22:0422 phút, 4 giâytheo là mod là submit request đúng.
22:1722 phút, 17 giâyĐấy, bao gồm các trường mình đã nói ở trên rồi nhá.
22:2422 phút, 24 giâyRồi tiếp theo là phản hồi giao dịch màu đồ
22:3022 phút, 30 giâyphản hội phản hồi giao dịch giao dịch phản hồi
22:3922 phút, 39 giâygửi giao dịch đấy dùng cho API submit này
22:4922 phút, 49 giâysẽ định nghĩa cấu trúc phản hồi khi một giao giao dịch được gửi lên blockchain này. Đấy bao gồm các cái trạng thái thành công này. Submit respon này.
23:0223 phút, 2 giâyĐấy.
23:0623 phút, 6 giâyOk. Tiếp theo là module phản hồi truy vấn metadata.
23:1123 phút, 11 giâyPhản hồi phi vấn metadata.
23:2023 phút, 20 giâyĐấy, mô hình dùng cho ABI rồi. Định nghĩa class là metadata respon này.
23:3223 phút, 32 giâyĐấy, các trường như là trường sucid này,
23:3823 phút, 38 giâymesit này, Metatata này. Tiếp theo là một cái mô hình để
23:4523 phút, 45 giâymàu màu đồ hục
23:5223 phút, 52 giâyhục hụ màu đồ phản hồi thông tin ví nhá.
24:0124 phút, 1 giâyPhản hồi thông tin ví dung cho API.
24:1324 phút, 13 giâyTiếp theo là mô hình này định nghĩa cấu trúc phản hồi thông tin truy xuất ví này
24:1924 phút, 19 giâybao gồm các số dư này đấy.
24:2524 phút, 25 giâyKhai báo màu đồ các cái trường cần.
24:3424 phút, 34 giâyOk.
24:3624 phút, 36 giâyNhư vậy thì chúng ta đã định nghĩa các cái kiểu dữ liệu cho các yêu cầu request và red bond ừ phản hồi đến từ các cái
24:4624 phút, 46 giâyAPI. Đấy, tiếp theo thì chúng ta sẽ thực hiện khai báo cái
24:5624 phút, 56 giâyđối tượng quản lý ờ vòng đời của ứng dụng
25:0525 phút, 5 giâyđây. thực hiện khai báo
25:1925 phút, 19 giâyacc accounting context manager này xử lý vòng đời của ứng dụng này
25:2625 phút, 26 giâytiếp theo là định nghĩa acing de l spam này
25:3325 phút, 33 giâyvới các tham số như là với các global như là trên context chúng ta đại khai báo ở trên đấy để duy trì sử dụng trong
25:4325 phút, 43 giâytoàn bộ dự án đấy. Khởi tạo context này.
25:4925 phút, 49 giâyĐấy tiếp theo là lấy block for API key này.
26:0026 phútTiếp theo là lấy network ra.
26:1126 phút, 11 giâyTiếp theo là khởi tạo trên context.
27:2827 phút, 28 giâyChúng ta thiếu mất thứ viện block for API à.
27:3527 phút, 35 giâyOk. để bổ sung thêm thư viện đây.
27:5027 phút, 50 giâyFrom block for này, import này. Ok rồi.
28:0228 phút, 2 giâyTiếp theo thì chúng ta sẽ ừ khai báo thiết lập đường dẫn đến file Bluotấy.
28:1428 phút, 14 giâyvẫn chúng ta sẽ vẫn dùng đường dẫn giống như phần
28:2928 phút, 29 giâyđường dẫn của file Bluot Jason hôm trước ấy. Đấy, tiếp theo là load Script.
28:3728 phút, 37 giâyNói chung là đến bước này thì chắc chắn là mọi người cũng đã hiểu rất là rõ các
28:4428 phút, 44 giâybước này rồi nên mình sẽ không không nói chi tiết những phần này.
29:0129 phút, 1 giâyRồi tiếp theo là load các cái script
29:1229 phút, 12 giâyrồi in ra cid này.
29:2129 phút, 21 giâyStore address này.
29:2529 phút, 25 giâyTiếp theo là nếu như không có gì thì vào lỗi. Đấy và cuối cùng là in ra connect.
29:3429 phút, 34 giâyCon connect thành công rồi và out.
29:4929 phút, 49 giâyOk. Như vậy chúng ta đã ừ thiết lập xong cái
29:5629 phút, 56 giâyquản lý vòng đời cho cái ứng dụng của chúng ta. Đấy.
30:0330 phút, 3 giâyTiếp theo thì chúng ta sẽ khởi tạo ứng dụng phát API.
30:1330 phút, 13 giâyKhởi tạo ứng dụng PH PBI để chạy ứng dụng.
30:2430 phút, 24 giâycó title và description này, version này và chạy cái quản lý vòng đời.
30:3430 phút, 34 giâyOk. Sau khi đã khởi tạo ứng dụng xong thì chúng ta sẽ khai báo
30:4130 phút, 41 giâyCRS Meware để cho phép font end có thể truy cập vào endp của backend.
30:4930 phút, 49 giâyĐấy. App.
30:5330 phút, 53 giâyMidware này call midware
31:0331 phút, 3 giâyallow origin cái port của foren vào.
31:1031 phút, 10 giâyTiếp theo đó là cho phép xác minh allow credential và cho phép tất cả các cái method.
31:2231 phút, 22 giâyRồi vào chính vào nội dung chính này chúng ta sẽ bắt đầu xử lý các cái API end point để xử lý các cái yêu cầu.
31:3331 phút, 33 giâyĐầu tiên là khai báo phương thức get. Đấy,
31:4131 phút, 41 giâycái này thì lấy các cái thông số của ứng dụng bao gồm như là
31:5031 phút, 50 giâysức khỏe của là trả về các cái thông tin như status.
32:0132 phút, 1 giâyRồi tiếp theo là khai báo cái point đề chuyển đổi
32:0932 phút, 9 giâyđịa chỉ ví từ dạng H sang dạng B 32. Đấy cái này là
32:1732 phút, 17 giâyđặt tên là API convert address đi với hàm là convert address này.
32:2532 phút, 25 giâyĐấy.
32:2732 phút, 27 giâyỪ. Hex dạng xr
32:4732 phút, 47 giâytiếp theo là chung thích nhá.
32:5232 phút, 52 giâyĐấy. Chai
33:0233 phút, 2 giâyừ address dạng bài này. Sau đó thì chuyển về dạng
33:1133 phút, 11 giâyaddress p 32 return.
33:1933 phút, 19 giâyTiếp theo là chai kết except. Nếu như có lỗi rồi không thể chuyển đổi đây này.
33:4233 phút, 42 giâyreturn và except trả về full lỗi.
33:5333 phút, 53 giâyRồi tiếp theo thì là point lấy thông tin của hợp đồng thông minh.
34:0334 phút, 3 giâyĐấy định nghĩa tên là geti script info đấy. Định nghĩa hàm
34:1234 phút, 12 giâyget script info lấy thông tin của hợp đồng thông minh này.
34:2134 phút, 21 giâycác cái trường dữ liệu của hợp đồng thông minh mà chúng ta đã lấy ra. Đấy.
34:2834 phút, 28 giâyTiếp theo là API point lấy thông tin từ ví.
34:3834 phút, 38 giâyLấy các thông tin từ ví ra đấy. Ừ. Định nghĩa endpint là API valid address. Đấy,
34:5034 phút, 50 giâyhàm là get valid info rồi. Try.
35:0435 phút, 4 giâyTiếp theo thì chúng ta sẽ thực hiện convert address từ dạng ấy ra.
35:1435 phút, 14 giâyNếu như nó không phải dạng B 32 thì chúng ta sẽ phải convert.
35:2135 phút, 21 giâyTiếp theo là lấy ute oo và tổng hợp ba lần.
35:3235 phút, 32 giâyTiếp theo là try vấn ừ thông tin của asset.
35:3935 phút, 39 giâyKhởi tạo asset bằng rỗng này. Duyệt tất cả UXO for UXO in UXO này. Duyệt tất cả
35:4735 phút, 47 giâycác cái multi access trong UT.
35:5535 phút, 55 giâyĐấy.
36:0336 phút, 3 giâyXong. Duyệt tiếp từng cái access trong multiet.
36:1236 phút, 12 giâyvà lại tiếp tục duyệt các cái thông tin của access
36:2136 phút, 21 giâyvà up vào cái access của chúng ta rồi
36:3036 phút, 30 giâyreturn valid respon và except lại.
36:5236 phút, 52 giâyTiếp theo thì đến với những endp đó là giao dịch min tocen.
37:0137 phút, 1 giâysẽ gửi yêu cầu min token với địa chỉ ví và các trường liên quan.
37:0737 phút, 7 giâyĐấy, back in sẽ thực hiện tạo unside trans và trả về CP H nà.
37:1637 phút, 16 giâyVà cái thông tin trả về sẽ bao gồm body change section và witness set.
37:2537 phút, 25 giâyTrang section đấy. FN ký trang session bằng ví và gửi
37:3237 phút, 32 giâylại set. Cái nữa thì tí nữa đến bước submit mình sẽ
37:3837 phút, 38 giâythêm chú tích đó vào rồi định nghĩa API mean.
37:4737 phút, 47 giâyCái này sẽ là một red bond mod trả về cho thằng font khi nó gửi cái yêu
37:5437 phút, 54 giâycầu min đấy.
38:0038 phútCreate min trang section này. Viết hàm min trang section đầu vào là request.
38:1238 phút, 12 giâyỪ, tức là nó gửi lên thông tin của cái giao dịch min. Đấy,
38:1938 phút, 19 giâyrồi trong cái bước này thì chúng ta sẽ thực hiện tạo cái giao dịch chưa ký.
38:2738 phút, 27 giâyĐầu tiên vẫn là chai kết này.
38:3138 phút, 31 giâyChai chai và except.
38:5338 phút, 53 giâyRồi đầu tiên vẫn bước quen thuộc giống như phần trước đó thôi. Nhưng mà có thêm bước là
39:0239 phút, 2 giâynếu như min script hoặc là store script không có ấy thì sẽ ra cái lỗi.
39:1039 phút, 10 giâyĐấy.
39:1339 phút, 13 giâyRồi vẫn là lấy địa chỉ của
39:2139 phút, 21 giâyđối chiếu đối chiếu chư ký ấy. Tiếp theo là lấy
39:3339 phút, 33 giâypublic key của lấy UXO của ví người dùng.
39:4439 phút, 44 giâyĐấy. Tiếp theo là query rồi. Nếu không có thì race lỗi.
40:1840 phút, 18 giâyRay lỗi nà. Bước tiếp theo vẫn là tạo asset name. Đấy, từ cái
40:2740 phút, 27 giâyasset name truyền vào request ấy, chúng ta lấy ra và chuyển nó về dạng buy
40:3540 phút, 35 giâyencode nó đi và tạo refer access name đính được prefix vào.
40:4540 phút, 45 giâyVà tiếp theo là lấy proy ID vẫn là rất quen thuộc trong phần min ở trong phần off chain. Đấy. Tiếp theo là create datum.
40:5740 phút, 57 giâyRồi tiếp theo vẫn là tạo multiass access.
41:0241 phút, 2 giâyỪ. Nói chung là phần này khá là giống với các bài trước nên mình sẽ làm nhanh nhá. Đấy.
41:1041 phút, 10 giâyRồi tiếp theo là tạo redeemer vẫn rất quen thuộc. Tiếp theo là tính value cho từng tài sản.
41:2141 phút, 21 giâyĐấy cho cả multiac cho cả user reference token và
41:2841 phút, 28 giâyuser token. Tiếp theo là tạo builder rồi builder add input này vẫn rất quen.
41:4141 phút, 41 giâyTính kèm thông tin giao dịch min vào giao dịch min này. Adminting script này.
41:4941 phút, 49 giâyRồi tiếp theo là add output.
41:5441 phút, 54 giâyPhần này vẫn nói chung là giống y hệt phần buill giao dịch lúc chúng ta code off trên đấy.
42:0542 phút, 5 giâyĐấy. Tiếp theo là ừ yêu cầu chư ký này tương ứng với cái ờ public key head của cái địa chỉ. Đấy.
42:1842 phút, 18 giâyTiếp theo là đây. Cái này thì hơi khác một chút.
42:2342 phút, 23 giâyĐây bắt đầu khác rồi. Đấy.
42:3042 phút, 30 giâyThay vì cái cái kia kìa chúng ta ký giao dịch thì đến bước này thì chúng ta sẽ phải khởi tạo riêng cái trans body riêng. Đấy.
42:4242 phút, 42 giâyỨ. Tiếp theo là khởi tạo witness set này.
42:5642 phút, 56 giâyMình sẽ chú thích lại đây. Trang session body có các thành phần đó là
43:0343 phút, 3 giâybody và witness set. Đấy, trang session body gồm các input, output, min này.
43:1143 phút, 11 giâyCòn widnet set gồm chứa các cái script này. Đấy, để sau này chúng ta phải tách riêng hai cái thành phần này ra để xử lý chữ ký.
43:2343 phút, 23 giâyRồi tạo giao dịch từ hai cái đối tượng trên.
43:2943 phút, 29 giâyRồi tiếp theo là chuyển về STB.
43:3643 phút, 36 giâyVà cuối cùng là trả lại cái giao dịch đã được build nhưng mà chưa có chữ ký về
43:4243 phút, 42 giâyfont end. Đấy, xong cái bước gọi là
43:5043 phút, 50 giâyừ định nghĩa ờ endp cho yêu cầu min rồi.
43:5843 phút, 58 giâyĐấy, thì kết quả của cái ừ yêu cầu min thì chúng ta sẽ phải trả về
44:0644 phút, 6 giâybên font end một cái cấu trúc dữ liệu ờ trang session dạng CP này. Đấy. Đấy. Thì
44:1444 phút, 14 giâytrong cái trang session dạng Cort này nó sẽ có hai thành phần là thành phần đó là trang session body và thành phần Wness
44:2244 phút, 22 giâyset. Đấy. Thì ở bên font end chúng ta sẽ ký và
44:2944 phút, 29 giâythêm cái chữ ký vào WN set này và gửi lại bên backend. Đấy, tí nữa chúng ta sẽ xử lý phần đó.
44:3644 phút, 36 giâyĐấy. Ok.
44:4144 phút, 41 giâyMọi người đã hiểu ý tưởng chưa? Tiếp theo nhá, chúng ta sẽ đến với Endpoint tạo giao dịch update Metat Metadata
44:5144 phút, 51 giâythì khai báo API update respon module. Đấy, trang
44:5944 phút, 59 giâysession respon sử dụng cái module ở trên kia nhờ.
45:0445 phút, 4 giâyĐấy. Tiếp theo là khai báo cái hàm tạo update trang session này. Hàm này sẽ có
45:1345 phút, 13 giâytham số đầu vào là request update. Nó sẽ gửi cái request lên bao gồm cái thông số
45:2045 phút, 20 giâyừ thông số mình đã khai báo trên mod update request ở trên kia kìa. Đấy và
45:2845 phút, 28 giâychúng ta sẽ nhận lại và build cái giao dịch uns đấy. Tạo giao dịch uns và gửi lại cái
45:3745 phút, 37 giâygiao dịch defont ký. Đấy vẫn là chai vẫn khá là quen thuộc.
45:4645 phút, 46 giâyThì phần này thì mình sẽ đi nhanh nhá.
45:5145 phút, 51 giâyđi nhanh không không nói rồi
46:0346 phút, 3 giâyvẫn là check xem có tồn tại script không đấy
46:1246 phút, 12 giâytiếp theo vẫn là lấy địa chỉ và lấy public key head để
46:1946 phút, 19 giâylệnh khớp chữ ký này. Tiếp theo vẫn là lấy polo id ra tạo token name này.
46:2946 phút, 29 giâyĐấy tạo ref tượng asset name này.
46:3546 phút, 35 giâyĐấy tiếp theo vẫn là tìm UXO trong store address.
46:4046 phút, 40 giâyĐấy thì phần này mình sẽ ấy nhanh giống phần code off trên hôm trước thôi.
46:4646 phút, 46 giâyTiếp theo vẫn là xử lý datum xử lý datum
46:5546 phút, 55 giâyđể lấy public key của các thông tin của datum để khởi tạo datum mới.
47:0347 phút, 3 giâyRồi tiếp theo là tạo datum mới này. Vẫn giống như phần viết code trên cho cái
47:1347 phút, 13 giâyhàm update metadata ấy. Đấy. Tiếp theo là tạo redeem
47:2047 phút, 20 giâyvà build trang session và build add input address.
47:3047 phút, 30 giâyVà tiếp theo là add input script.
47:3447 phút, 34 giâyRồi tiếp theo vẫn là ừ tạo value cho
47:4347 phút, 43 giâyUTO chứa ref token. Đấy.
47:4947 phút, 49 giâyRồi tiếp theo vẫn là build add output vẫn là yêu cầu chư ký.
48:0148 phút, 1 giâyRồi bước này thì vẫn tương tự như phần mình vừa giải thích trong min ấy. Thì tx
48:0948 phút, 9 giâyđể chuyển cái trang session sang bên font end để người ta ký ấy chúng ta sẽ có hai thành phần. Thành phần đầu tiên đó là TX
48:1848 phút, 18 giâybody và thành phần thứ hai đó là withnet set. Đấy.
48:2448 phút, 24 giâyĐấy. Thì chúng ta sẽ build ờ widnet set nhưng mà không có chữ ký
48:3148 phút, 31 giâycho font end nó gắn thêm cái chữ ký vào đấy. Và cuối cùng là tạo đối tượng trang session.
48:4148 phút, 41 giâyTiếp theo là chuyển về kiểu dữ liệu.
48:4748 phút, 47 giâyVà cuối cùng là phản hồi trả về cho Fontend.
48:5348 phút, 53 giâyKết quả ừ gọi là thông tin của trang session chưa có chữ ký. Đấy, tương tự như vậy
49:0149 phút, 1 giâychúng ta cũng sẽ sang phần định nghĩa API endpint cho cái B toen đấy.
49:1149 phút, 11 giâyNó sẽ respon thì trả về các trường chúng ta đã
49:1849 phút, 18 giâykhai báo trong phần mod trước đó ấy. Đấy, tạo hàm này.
49:2649 phút, 26 giâyRequest cũng nhận vào kiểu dữ liệu theo kiểu màu đồ chúng ta đã khai báo trước đó.
49:3649 phút, 36 giâyRồi vẫn rất giống với min và update cụng trai và except.
49:5549 phút, 55 giâyRồi vẫn là xử lý build giao dịch.
50:0150 phút, 1 giâyĐầu tiên vẫn là kiểm tra xem store script có tồn tại hay không.
50:1350 phút, 13 giâyĐấy. Tiếp đến đấy là lấy thông tin của public key head tương ứng với địa chỉ và
50:2250 phút, 22 giâytạo tên tài sản từ cái trường token name truyền vào.
50:3050 phút, 30 giâyTiếp theo là tạo refer và user token name để tạo multi access trong bước tiếp
50:3750 phút, 37 giâytheo. Tiếp theo vẫn là query uto từ store address.
50:4450 phút, 44 giâyĐấy.
50:4850 phút, 48 giâyTiếp theo vẫn là xử lý datum.
50:5550 phút, 55 giâyĐấy,
51:0251 phút, 2 giâynếu Datum thuộc kiểu Shift 68 datum thì chúng ta sẽ lấy ra cái thông tin
51:0951 phút, 9 giâyừ tablet key của Honor để sau này đối chiếu chư ký. Ấy tiếp theo là
51:1651 phút, 16 giâytìm những cái a UTXO của
51:2451 phút, 24 giâyuser trong địa chỉ của ví địa chỉ ví của user.
51:2851 phút, 28 giâyĐấy những bước gọi là build giao dịch ấy nó tương tự trong phần code off trên luôn
51:3751 phút, 37 giâynên trong phần này mình sẽ không giải thích nhiều về nguyên lý cả.
51:4251 phút, 42 giâyĐấy, great redeem này vẫn có hai phần ừ gọi là
51:5051 phút, 50 giâymuốn bơ thì phải chi tiêu cái toko trên store address. Đấy, và sau khi chi tiêu
51:5751 phút, 57 giâyxong thì chúng ta phải hủy hủy bỏ cái token đó. Rồi tiếp theo là tạo builder add input address.
52:1152 phút, 11 giâyvà add input script và lấy input từ user
52:2052 phút, 20 giâyđấy. thực hiện đính kèm thông tin bơ vào giao dịch BN đấy và adminting script
52:3152 phút, 31 giâyvà yêu cầu chư ký và vẫn là giống như là min và bn thôi à
52:4252 phút, 42 giâymin và update ấy cũng build gọi là transaction body đấy sau đó thì build
52:5152 phút, 51 giâychưa có chữ ký ấy và cuối cùng là tạo trang session chuyển về C và phản hồi lại font end.
53:0453 phút, 4 giâyĐấy rồi ok. Ờ mình sẽ tổng kết lại một chút nhá.
53:1853 phút, 18 giâyTrong cái ba cái API endp cho min này,
53:2253 phút, 22 giâyupdate này, B này thì mục tiêu của nó là trả về cái thông tin trang session chưa
53:3253 phút, 32 giâycó chữ ký cho font end. Đấy để về font end nó thực hiện ký bằng ví trên trình
53:3953 phút, 39 giâyduyệt và submit lại cái giao dịch lên back end để back end hợp nhất chứ ký và
53:4653 phút, 46 giâysubmit lên on trên. Đấy thì ba cái API point này xử lý như vậy. Tiếp theo thì chúng ta sẽ thực hiện định nghĩa cái
53:5553 phút, 55 giâyendp ờ nhận cái giao dịch gửi lên back end sau khi đã được bổ sung chữ ký từ font end. Đấy,
54:0954 phút, 9 giâyđịnh nghĩa API post đấy.
54:1754 phút, 17 giâyTạo hàm này.
54:2154 phút, 21 giâyTiếp theo là có một chút chú thích.
54:2854 phút, 28 giâyĐấy. Tiếp theo là chai và get except.
54:3754 phút, 37 giâyMình cứ quen quen bên note dây note dây s.
54:4554 phút, 45 giâyRồi đầu tiên chúng ta sẽ thực hiện load lại trang session gốc từ CP chứa body và
54:5854 phút, 58 giâywithnet set nhá.
55:0755 phút, 7 giâyLoad trang session góc từ cb đấy.
55:1355 phút, 13 giâyF báo backtx này bằng trang section from cb.
55:2955 phút, 29 giâyĐấy.
55:3255 phút, 32 giâyTiếp theo là lấy ra withnet set
55:4555 phút, 45 giâyvalid wit with set bằng trang section with set from CB.
55:5555 phút, 55 giâylấy từ forend. Đấy.
55:5855 phút, 58 giâyRồi tiếp theo thì chúng ta sẽ hợp nhất hợp nhất cái
56:0756 phút, 7 giâychữ ký vào wnet set.
56:2556 phút, 25 giâybằng backendx nè chrang session withnets nè đấy
56:3456 phút, 34 giâynếu ví có trả về chữ ký v hãy thêm vào winess set
56:4256 phút, 42 giâyđây nếu ví trả về kỳ
57:0257 phút, 2 giâyỨ trong trường hợp này sẽ có hai trường hợp. Một là back end.
57:1157 phút, 11 giâyỪ.
57:1357 phút, 13 giâyNhiều lúc ấy nó có chế độ là multiic đấy. Đấy thì trong trường hợp đó thì backend có thể có thêm các chữ ký khác.
57:2357 phút, 23 giâyĐấy nên chúng ta cũng cần phải quét thêm cái điều kiện này.
57:2957 phút, 29 giâyĐấy trong trường hợp multi nhá. Multi
57:3657 phút, 36 giâyđấy. Nếu như tồn tại
57:4457 phút, 44 giâythì chúng ta sẽ gộp vào
57:5757 phút, 57 giâyđây. Thực hiện gộp này.
58:0158 phút, 1 giâyfinalnesset.vke V key này. Đấy, xing v cộng new key đấy.
58:0958 phút, 9 giâyChúng ta sẽ gộp vào. Còn nếu không thì chúng ta vẫn gộp bình thường thôi.
58:1758 phút, 17 giâyThì phổ biến thì đa số là back end sẽ không có trừ ký đâu. Đấy.
58:2958 phút, 29 giâyĐấy.
58:3258 phút, 32 giâythì gán lại gán lại cái final witness set bằng cái chữ ký của valid ấy. Và cuối cùng là gắn vào trang section.
58:4658 phút, 46 giâyGắn lại vào trang section.
59:0459 phút, 4 giâyRồi bước cuối cùng là submit.
59:1159 phút, 11 giâysubmit và tx context submit này kiểu dữ liệu
59:1859 phút, 18 giâysubmit phải là cb và cuối cùng là phản hồi lại.
59:3059 phút, 30 giâyRồi như vậy thì chúng ta đã xong những cái phần quan trọng của cái những cái yêu cầu đến từ front end. Đấy,
59:4359 phút, 43 giâymình xin nhắc lại một lần nữa, mặc dù nó tốn thời gian nhưng mà mình nghĩ là điều này sẽ giúp cho mọi người hiểu hơn. Đấy,
59:5159 phút, 51 giâytức là on nó chưa được xây dựng thư viện B Cadano
59:5959 phút, 59 giâytrên môi trường máy client. Đấy, chính vì thế
1:00:041 giờ, 4 giâymà khi code cái ví dụ án này ứ mình đã thiết kế cái back end để xử lý xây dựng
1:00:141 giờ, 14 giâygiao dịch và thực hiện xây dựng giao dịch với cái
1:00:221 giờ, 22 giâyừ trang session là chưa có chữ ký và gửi về font end. Đấy, font end sẽ thực hiện
1:00:291 giờ, 29 giâyký bằng cái ví được cài đặt trong cái extension của trình duyệt ấy. Đấy. Và
1:00:391 giờ, 39 giâygửi lại cái giao dịch đã có chữ ký lại bên back end. và back end sẽ thực hiện xử lý cái chữ ký và submit giao dịch lên
1:00:481 giờ, 48 giâyonchain. Đấy, đấy là điểm khó nhất mà cái bài toán ừ triển khai một cái app ừ
1:00:591 giờ, 59 giâyừ gọi là minh họa thực tế ấ ngay trên giao diện về các tính năng ờ của cái
1:01:051 giờ, 1 phút, 5 giâyShift 68 này. Mình thấy là đấy là điểm khúc mắc nhất. Và cái bài học này nó làm
1:01:121 giờ, 1 phút, 12 giâykhó mọi người và mình cũng đã chia sẻ cái giải pháp đó rồi đấy. Tiếp theo thì chúng ta sẽ định
1:01:201 giờ, 1 phút, 20 giâynghĩa một số cái point IPI cần thiết khác như là lấy metadata của các cái
1:01:271 giờ, 1 phút, 27 giâyaccess đấy. Get metadata
1:01:381 giờ, 1 phút, 38 giâyrồi chai
1:01:481 giờ, 1 phút, 48 giâychai và except T
1:02:001 giờ, 2 phútrồi.
1:02:031 giờ, 2 phút, 3 giâyĐầu tiên đó là vẫn là phải kiểm tra xem store address có tồn tại hay không.
1:02:121 giờ, 2 phút, 12 giâyTiếp theo đấy là tạo token name từ cái thằng request người lên đấy.
1:02:221 giờ, 2 phút, 22 giâyTừ cái thằng tiếp theo vẫn là tạo cái reference access name từ cái token name. Đấy,
1:02:321 giờ, 2 phút, 32 giâyin một số cái thông báo ra màn hình console.
1:02:401 giờ, 2 phút, 40 giâyTiếp theo đó là tìm UTO. Đấy,
1:02:491 giờ, 2 phút, 49 giâyvấn các UO trong hợp đồng thông minh.
1:02:521 giờ, 2 phút, 52 giâyNếu như có thì hiển thị xem có bao nhiêu cái duyệt.
1:02:591 giờ, 2 phút, 59 giâynày nếu đóng lại.
1:03:071 giờ, 3 phút, 7 giâyNếu như uto có multi access này thì lại tiếp tục duyệt trong multi access các cái item.
1:03:171 giờ, 3 phút, 17 giâyĐấy, xong in ra một số thông tin như là
1:03:261 giờ, 3 phút, 26 giâytiếp theo là tiếp tục lại duyệt trong cái access item
1:03:331 giờ, 3 phút, 33 giâyđể in ra những cái thông tin có access
1:03:431 giờ, 3 phút, 43 giâyvà xử lý thêm Ah
1:04:051 giờ, 4 phút, 5 giâyđạnn này thì nếu datum của kiểu dữ liệu thuê
1:04:151 giờ, 4 phút, 15 giâythì chúng ta sẽ chuyển nó về dạng datum shift 68.
1:04:371 giờ, 4 phút, 37 giâyRồi tiếp theo là nếu datum là kiểu dữ liệu có thể đọc
1:04:481 giờ, 4 phút, 48 giâythì chúng ta sẽ thực hiện convert metadata đấy.
1:04:581 giờ, 4 phút, 58 giâyduyệt các cái trường trong metadata
1:05:111 giờ, 5 phút, 11 giâytrong item hai chấm này
1:05:211 giờ, 5 phút, 21 giâyđi code và Lu
1:06:091 giờ, 6 phút, 9 giâyEl
1:06:301 giờ, 6 phút, 30 giâySau đó thì khởi tạo value metadata và in ra
1:06:461 giờ, 6 phút, 46 giâyin ra metadata.
1:06:521 giờ, 6 phút, 52 giâyRồi cuối cùng là return
1:07:061 giờ, 7 phút, 6 giâymetata.
1:07:161 giờ, 7 phút, 16 giâyNếu không thì không tìm thấy. Đ
1:07:461 giờ, 7 phút, 46 giâycuối cùng là return not file.
1:07:551 giờ, 7 phút, 55 giâyOk.
1:07:571 giờ, 7 phút, 57 giâyTiếp theo đó là chúng ta viết thêm một cái import liệt kê
1:08:021 giờ, 8 phút, 2 giâyliệt kê tất cả các cái shift 68 token
1:08:101 giờ, 8 phút, 10 giâytrong hợp đồng thông minh tương ứng với
1:08:181 giờ, 8 phút, 18 giâyđịa chỉ store list
1:08:291 giờ, 8 phút, 29 giâytrai này.
1:08:551 giờ, 8 phút, 55 giâyVẫn phải check tồn tại store hay không. Khởi tạo token bằng rẫm.
1:09:051 giờ, 9 phút, 5 giâyTiếp theo lấy các ut vẫn là duyệt
1:09:121 giờ, 9 phút, 12 giâytìm những các cái uto trong hợp đồng và lẫy
1:09:331 giờ, 9 phút, 33 giâyrồi. Rồi. Ok.
1:09:391 giờ, 9 phút, 39 giâyBước tiếp theo là chạy server rồi và khai báo khởi tạo thêm một cái ha
1:09:511 giờ, 9 phút, 51 giâyfile init để import export tất cả các cái file ra không cần. Ok,
1:10:051 giờ, 10 phút, 5 giâychúng ta thử chạy xem nào.
1:10:101 giờ, 10 phút, 10 giâyỪ. À để chạy được thì chúng ta sẽ phải có một cái file run server chứ. Run server, run backend.
1:10:191 giờ, 10 phút, 19 giâyHai bóng run backend chp.
1:10:271 giờ, 10 phút, 27 giâyĐầu tiên vẫn là import này. Thêm một số đường dẫn vào.
1:10:361 giờ, 10 phút, 36 giâyThêm đường dẫn của thư mục back end vào môi trường.
1:10:431 giờ, 10 phút, 43 giâyĐấy, mục tiêu của việc này đó là thư viện giúp thêm đường vẫn, nhập các
1:10:531 giờ, 10 phút, 53 giâymodule trong dự án đấy để đảm bảo các module dễ dàng được gọi trong dự án.
1:11:021 giờ, 11 phút, 2 giâyimporticore và chạy chạy thôi. Đấy rồi chúng ta thử chạy thử xem nào.
1:11:131 giờ, 11 phút, 13 giâyPython run backend.
1:11:281 giờ, 11 phút, 28 giâyLỗi gì đây?
1:11:411 giờ, 11 phút, 41 giâyblock trên context bằng non à
1:11:551 giờ, 11 phút, 55 giâyblock trên context đây H
1:12:161 giờ, 12 phút, 16 giâytrên context này.
1:12:201 giờ, 12 phút, 20 giâytrên context
1:12:411 giờ, 12 phút, 41 giâymình nhầm rồi mình lại thêm cái phím enter vào đây. Ok.
1:12:561 giờ, 12 phút, 56 giâygì đây?
1:13:041 giờ, 13 phút, 4 giâyOch trên context này apt
1:13:231 giờ, 13 phút, 23 giâynhầm nhầm nhầm blog for project đi. Ok rồi.
1:13:361 giờ, 13 phút, 36 giâyNào.

========================Phần 2 video 2 backend chưa run: Link video :https://www.youtube.com/watch?v=_4NE9cFxmhU ==================
0:044 giâyVẫn lỗi nhở. Xem nào. Main nà.
0:1313 giâyNetwork nwork token midx không đúng network à?
0:2727 giâyXem nào. Network network bằng pre
0:3434 giâynetwork.testnet à. Ok hiểu rồi.
0:4040 giâyDo cái này nó được gán bằng network.testnet rồi chứ không phải free prodot. Đấy chúng ta phải sửa cái này
0:4848 giâynày. Ok rồi. Ok.
0:5656 giâyNhư vậy back in của chúng ta đã chạy thành công rồi này. Đấy đã tìm thấy file BLUS này đã
1:051 phút, 5 giâycompile được cái blurus script thành ID rồi đã có address của store rồi. Ok.

========================Phần 3 video 3 frontend chưa demo: Link video :https://www.youtube.com/watch?v=5k7Esch4UQE ==================

0:033 giâyOk, sau khi back end đã code và chạy thành công rồi, bây giờ thì chúng ta sẽ thực hiện code font end.
0:1212 giâyĐấy thì như mình đã giới thiệu thì font end
0:1818 giâychúng ta sẽ dùng ờ thư viện là next JSJ Code và sử dụng chuẩn shift 30 để thực
0:2727 giâyhiện các cái thao tác của ví đấy để ký giao dịch và kết nối ví trên trình duyệt.
0:3737 giâyĐấy, chúng ta sẽ tạo một cái terminal mới để cái con backend nó vẫn chạy đấy.
0:4242 giâyỪ. CD vào Shift 68 rồi
0:5858 giâyrồi thì mình sẽ bắt đầu vì là
1:061 phút, 6 giâyquá trình code font end nếu như chúng ta thực hiện code cả giao diện ấy nó khá là tốn thời gian. Chính vì thế mà mình đã
1:141 phút, 14 giâytạo ra một cái teamate giao diện onend phục vụ chúng ta. Đấy,
1:211 phút, 21 giâytrong đấy chưa có code logic hay gì,
1:241 phút, 24 giâychưa có các cái dịch vụ như là ờ build trí giao dịch hay là viết cái hàm
1:341 phút, 34 giâyxử lý thu thập dữ liệu. Đấy, chính vì thế mà mình cũng đã tạo ra một cái template đã có giao diện rồi và chúng ta
1:421 phút, 42 giâychỉ việc vào đó và code thôi. Mọi người có thể lấy cái link này và clon cái template đấy về nhá.
1:521 phút, 52 giâyGit clon rồi tạ clon về.
1:591 phút, 59 giâyỨ khi clon về chúng ta vào CD template forame và chạy
2:102 phút, 10 giâynpm install npm install để thực hiện install các cái thư viện cho fontend.
2:232 phút, 23 giâyThì trong cái file backkit. này này mình đã khai báo khá là đầy đủ những cái thư viện cần thiết.
2:332 phút, 33 giâyĐấy mọi người chỉ việc chạy cái file chạy cái câu lệnh MPM Install sẽ tự động
2:402 phút, 40 giâytải các cái thư viện trong của dự án về đấy. Đấy.
3:183 phút, 18 giâyOk, như vậy là chúng ta đã cài xong các cái thư viện rồi. Bây giờ chúng ta sẽ chạy thử dự án và kiểm tra trên trình duyệt xem nào.
3:293 phút, 29 giâyDùng câu lệnh runf mpm r.
3:523 phút, 52 giâyRồi xem trên duyệt xem có chưa. Ah.
4:354 phút, 35 giâyOk, chúng ta đã có giao diện rồi. Ờ tuy nhiên thì giao diện này thì mới chỉ là giao diện tĩnh thôi. Nó chỉ là một cái
4:424 phút, 42 giâytemplate thôi. Đấy. Ờ để mà có giao diện chuẩn ấy, chúng ta sẽ phải thực hiện viết các cái logic. Ví dụ như là tích
4:524 phút, 52 giâyhợp ví này. Sau khi tích hợp ví và connect ví xong sẽ cho ra một cái giao diện cho người dùng, giao diện client
4:594 phút, 59 giâycho người dùng. Đấy, còn đây là giao diện dành cho những cái đối tượng vào mà chưa connect ví. Đấy, bây giờ chúng ta sẽ quay lại xuộc code của dự án này.
5:225 phút, 22 giâyChúng ta sẽ xem lại cái giao diện nó có những cái gì nào.
5:265 phút, 26 giâyĐấy. Đấy, có các thư mục như là thư mục application này. Đấy, trong đấy có các định nghĩa layout.
5:355 phút, 35 giâyĐấy, có B đấy, có home content.
5:415 phút, 41 giâyĐấy, thì trong cái teamate này thì mình cũng đã soạn sẵn những cái
5:495 phút, 49 giâycomment to do để mọi người có thể hiểu được những cái bước mình sẽ thực hiện code logic. Đấy.
6:006 phútĐấy. Layout này. Component thì có các cái moda để bơ này, min form này, moda để kế thừa đến các moda nhỏ.
6:146 phút, 14 giâyĐấy, list các này, các cái provider đấy.
6:206 phút, 20 giâyTrang session status để hiển thị thông tin giao dịch có thành công hay không.
6:276 phút, 27 giâycái form gọi là để update metadata này.
6:316 phút, 31 giâyTrong đây thì cũng có các cái chú tích to do để hướng dẫn viết logic code này.
6:386 phút, 38 giâyỪ đã có component wallet connect để thực hiện tích hợp wallet integration với ứng
6:476 phút, 47 giâydụng này context để thực hiện truyền dữ liệu của wallet trong cả ứng dụng này.
6:556 phút, 55 giâyĐấy, tai là dùng gọi là đây là định nghĩa wallet API theo chuẩn shift 30 dùng cho các dự án này.
7:077 phút, 7 giâyĐấy, bây giờ thì mình sẽ đi sâu vào code luôn.
7:147 phút, 14 giâyĐấy, bước đầu tiên chúng ta sẽ thực hiện bước valid integration.
7:217 phút, 21 giâyĐầu tiên đó là vào file ừ.
7:257 phút, 25 giâyChúng ta sẽ vào hoàn thiện cái wallet context để thực hiện truyền cái các cái thông tin liên quan đến wallet trong
7:347 phút, 34 giâytoàn bộ các cái trang của ừ giao diện của người dùng. Đấy thì ở đây thì mình cũng đã khởi tạo sẵn những cái state.
7:467 phút, 46 giâyĐấy. Tuy nhiên thì những cái logic như là lấy các cái thông tin như là kiểm tra
7:537 phút, 53 giâyxem trình duyệt có cái ví đã cài extension ví trên trình duyệt
8:018 phút, 1 giâyhay chưa này. Thứ hai đó là get cái address của Wall này.
8:078 phút, 7 giâyĐấy thì đầu tiên thì chúng ta sẽ thực hiện hoàn thành cái to 1 này.
8:138 phút, 13 giâyĐấy, mục tiêu của nó là kiểm tra các cái ví của Cadano đã được cài đặt trên trình duyệt hay chưa. Đấy, chúng ta sẽ khai
8:238 phút, 23 giâybáo con ST nà. Đây đã có hàm sẵn rồi viết vào đây.
8:328 phút, 32 giâyOn st use n trả về info này.
8:398 phút, 39 giâyTy of Windows T of Windows undefile
8:468 phút, 46 giâyhoặc hoặc Windows Cano return rỗng này.
8:598 phút, 59 giâyRồi tiếp theo là ừ
9:079 phút, 7 giâyreturn support wallet sport wallet này.
9:199 phút, 19 giâyỪ mình thấy là cũng khá là tiện ấy. Xong tiếp theo là lọc này. Wall này. Available. Ok.
9:309 phút, 30 giâyđã xong phần kiểm tra xem trình duyệt đã cài các cái extension của các cái ví của Cano hay chưa đấy. Đấy. Tiếp theo.
9:479 phút, 47 giâyTiếp theo thì chúng ta sẽ thực hiện query cái a
9:549 phút, 54 giâyaddress từ cái a wallet.
10:0210 phút, 2 giâyĐây đã có hàm này. Get wallet nà. Mình giải thích khá là chi tiết rồi.
10:0910 phút, 9 giâyĐây con ST address wallet con ST
10:2510 phút, 25 giâyđi bằng API.
10:3010 phút, 30 giâyUse address nè. Khá là tiện. If address ừ address
10:3910 phút, 39 giâytồn tại address
10:4710 phút, 47 giâyvà address.Llen Lần 0 nà
10:5310 phút, 53 giâyừ tại vị trí 0 và con ST unuse address này.
11:0511 phút, 5 giâyGet address này.
11:0911 phút, 9 giâyIf unuse address nàress L này return này. Đấy.
11:1711 phút, 17 giâyL return. Ok.
11:2511 phút, 25 giâyThì
11:4211 phút, 42 giâymình sẽ giải thích một chút nhá. Theo chuẩn shift 30 list ấy thì nó có ba loại address. Loại đầu tiên là use address.
11:5411 phút, 54 giâyĐấy đâu theo chuẩn ship giải thích một chút nhá.
12:0512 phút, 5 giâyGiải thích một chút. Ừ.
12:1612 phút, 16 giâytheo chuẩt shift 30
12:2112 phút, 21 giâyngười thì có ba loại address
12:3012 phút, 30 giâycó ba loại address này đầu tiên là use address
12:3812 phút, 38 giâytức là đã từng giao dịch thứ hai là unus R chưa chưa từng giao dịch và thứ ba là
12:4612 phút, 46 giâytrên address rate là nhận tiền thừa. Đấy thì mỗi wallet thì nó sẽ trả lại một cái format khác nhau.
12:5812 phút, 58 giâyĐấy thì cái address của chúng ta ấy, address của shift 30 này nó sẽ trả về là dạng ha
13:0613 phút, 6 giâycb và back end sẽ phải convert cái này về thành
13:1213 phút, 12 giây32 là cái dịch vụ mà chúng ta đã thực hiện code cái API and point cho cái convert sang back 32. Đấy. Đấy.
13:2713 phút, 27 giâyTiếp theo thì chúng ta sẽ tiếp tục code phần connect valid. Đấy. Thì ở đây cũng khá là chi tiết mình hướng dẫn từng bước
13:3513 phút, 35 giâyrồi. Đầu tiên là check này xem có tồn tại hay không. Nếu như có thì lấy ID.
13:4213 phút, 42 giâyNếu không tồn tại thì trả về và set connect.
13:4613 phút, 46 giâyVà tiếp theo là set các cái ừ các cái gì nhờ?
13:5513 phút, 55 giâyỪ state để dùng cho để dùng cho toàn bộ dự án. Đấy, triển khai thôi.
14:0714 phút, 7 giâyỪ, đầu tiên đó là connect wallet này. Use goback này. Đấy.
14:1714 phút, 17 giâyIfall id à đâu if
14:2314 phút, 23 giâytrình duyệt tồn tại wallet thì chúng ta sẽ không tồn tại ấ thì chúng ta sẽ báo ra.
14:3314 phút, 33 giâyĐấy. Còn nếu nếu tồn tại thì chúng ta sẽ thực hiện gán cái wallist
14:4114 phút, 41 giâythành cái wallet này.
14:5414 phút, 54 giâyRồi nếu như Wallist tồn tại thì chúng ta sẽ lấy cái one list đầu tiên này này.
15:0115 phút, 1 giâyNếu tồn tại, nếu không tồn tại thì lại báo tiếp
15:0815 phút, 8 giâyrồi. Set connecting to er bằng nun. Rồi tiếp theo là
15:2015 phút, 20 giâych con sti away valid
15:2615 phút, 26 giâyđấy. Con st address kiểu ha này.
15:3215 phút, 32 giâyRồi tiếp theo là set các cái state.
15:4115 phút, 41 giâyRồi tiếp theo là lưu cái a valid ID vào cái bộ nhớ local của trình
15:5015 phút, 50 giâyduyệt local storage của trình duyệt
15:5915 phút, 59 giâyany thông báo ra đấy.
16:0616 phút, 6 giâyFinally, set connecting bằng full. Ok,
16:1116 phút, 11 giâyđã thực hiện xong cái connect wallet nhá. Hàm connect wallet. Tiếp theo disconnect wallet này.
16:2716 phút, 27 giâyDisconnect wallet thì cũng đây. Viết tiếp vào đây mình đã
16:3316 phút, 33 giâychuẩn bị khá là chi tiết rồi. Sử dụng compact này các cái state bằng hoặc là nun. Đấy.
16:4616 phút, 46 giâyRồi set er bằng nun rồi. Loco storage remove xóa đi.
16:5516 phút, 55 giâyRồi tiếp theo thì chúng ta sẽ triển khai
17:0517 phút, 5 giâyừ ờ cái ờ cái gì nhở? Hàm gọi là ký giao dịch.
17:1617 phút, 16 giâyĐấy. Ứ chúng ta lại phải nhắc lại đấy. Thằng
17:2517 phút, 25 giâythằng back end đấy. Nó sẽ trả về cái giao dịch trả về cái thông tin giao dịch đã build
17:3417 phút, 34 giâyấy cho font end và font end nó sẽ ký cái giao dịch đấy. Đấy.
17:4517 phút, 45 giâyĐây chúng ta sẽ triển khai vào đây. Đầu tiên là if wallet abi.
17:5817 phút, 58 giâyRồi kiểm tra xem đã kết nối wallet chưa.
18:0018 phúttrai page
18:1418 phút, 14 giâyrồi xong return wallet.apisiz abi.
18:2618 phút, 26 giâyĐấy, kết thông báo lỗi
18:3818 phút, 38 giâyrồi bỏ cái true này đi.
18:4318 phút, 43 giâynày trong cái a hàm kết đã bắt lỗi rồi.
18:5518 phút, 55 giâyRồi ở đây nhá mình sẽ giải thích lại một chút.
19:0419 phút, 4 giâyỜ cái function ký trans này này thì đầu vào nó chính là cái TX ở dạng đã được
19:1519 phút, 15 giâygửi về sau khi người dùng gửi cái yêu cầu min hay là update hay là BN ấy. Đấy
19:2219 phút, 22 giâythì cái TX này nó là cái trang session chưa có chữ ký đấy.
19:3419 phút, 34 giâyVà khi nó thực hiện cái hàm này nó sẽ
19:4019 phút, 40 giâytạo ra một cái sport
19:5019 phút, 50 giâyừ tạo ra một cái trang session dạng sport đấy. chứa chư ký đấy.
20:2320 phút, 23 giâychữa chữ ký xong và gửi lại bên aend xử lý một chữ ký.
21:1321 phút, 13 giâyTiếp theo nhá, chúng ta sẽ viết thêm một cái hàm nữa là hàm how to reconnect.
21:2221 phút, 22 giâyĐấy, đây thêm vào cuối nà. Use effect nè.
21:3421 phút, 34 giâyReconnect use effect. Save wallet. Đấy, get id này.
21:4121 phút, 41 giâyNếu là Windows thì chúng ta sẽ save lại và connect cái wallet đó.
21:5721 phút, 57 giâyĐiều này sẽ làm cho mỗi lần chúng ta ừ mở lại ứng dụng trên web ấy thì nó sẽ tự
22:0522 phút, 5 giâyđộng connect lại những nếu như trong trình duyệt của chúng ta vẫn còn lưu cái wall trong những lần kết nối trước đó.
22:1422 phút, 14 giâyOk. Sau khi chúng ta đã xử lý cái Wall Context rồi thì chúng ta sẽ đến với bước tiếp theo
22:2422 phút, 24 giâyđó là ờ code cái nút collect wallet đấy.
22:3522 phút, 35 giâyỪ. để thực hiện ờ chọn ừ để thực hiện
22:4322 phút, 43 giâybấm vào cái nút kết nối wallet và kết nối ấy kết nối ví ấy. Đấy thì chúng ta sẽ vào code này under collect viết vào đây.
22:5422 phút, 54 giâyỪ connect wallet này. Đấy set drop down.
23:0323 phút, 3 giâyKết nối xong thì drop down bằng full. Đấy.
23:1223 phút, 12 giâyRồi rồi chúng ta sau khi set dropdown xong nhá.
23:3623 phút, 36 giâyRồi bây giờ chúng ta set dropdown xong chúng ta sẽ quay lại trình duyệt xem có gì khác không nhá. Tức là chúng ta đã thực hiện gọi đến cái gì nhở?
23:4923 phút, 49 giâycái hàm connect wallet ở trong cái context rồi đấy. Và đã gắn cái component
23:5723 phút, 57 giâyvào cái giao diện người dùng rồi. Bây giờ chúng ta sẽ vào thử xem đã thực hiện được kết nối Wallet chưa.
24:1124 phút, 11 giâyĐây kết nối ví này mình đang có ví đấy. chọn
24:1724 phút, 17 giâyđấy. Ok. Giao diện đã có này. Đấy. Có thông tin của cái form để min này rồi nhá. Đấy.
24:2824 phút, 28 giâyRồi chưa có NFT nào. Ngắt kết nối.
24:3524 phút, 35 giâyKết nối lại. Click. Rồi làm mới này. Không có gì. Ok chưa?
24:4324 phút, 43 giâyRồi chúng ta sẽ đến với bước tiếp theo.
25:0225 phút, 2 giâyBước tiếp theo của chúng ta đó là thực hiện cái xử lý các cái hành động
25:1025 phút, 10 giâygiao dịch min. update và bớn. Đấy, đầu tiên vào min trước đây. Thì đầu tiên thì
25:1825 phút, 18 giâychúng ta sẽ phải thực hiện xây dựng cái a
25:2425 phút, 24 giâyquy trình xử lý a phần min bao gồm các phần như là thu
25:3425 phút, 34 giâythập thông tin này, gửi cái yêu cầu min lên back end và back end sẽ xử lý.
25:4625 phút, 46 giâyxử lý trả về data này. Đấy. Đấy. Thì bước đầu tiên
25:5325 phút, 53 giâychúng ta sẽ thực hiện code
26:0126 phút, 1 giâyđây. Kiểm tra xem đã connect wallet hay chưa. Đấy. Nếu connect wallet rồi thì
26:0926 phút, 9 giâythông báo kết nối Wall. Đấy, xong bắt đầu vào rồi. Try này.
26:2326 phút, 23 giâyP đâu?
26:2626 phút, 26 giâyvà final đấy.
26:3126 phút, 31 giâyChai đầu tiên thì chúng ta sẽ test loading.
26:3926 phút, 39 giâyĐấy, khi nhấn cái nút min ấy nó sẽ mở một cái
26:4726 phút, 47 giâyspinner ra nó quay đấy. quay tạo hiệu ứng và set cái status này để thông báo
26:5426 phút, 54 giâyra màn hình này. Đầu tiên là build trang section này.
26:5926 phút, 59 giâyĐấy, respon. Chúng ta sẽ định giữa một cái respond và fết cái
27:0527 phút, 5 giâyAPI đây.
27:1527 phút, 15 giâyS gọi đến cái point API mean này là đúng chưa? API mean này.
27:2227 phút, 22 giâyĐấy cái này method là post đấy. Method là
27:3327 phút, 33 giâyheader là content type và application chon
27:4027 phút, 40 giâybody thì có kiểu là jon.
27:4627 phút, 46 giâyFile nè. Đấy,
27:5527 phút, 55 giâyadding file thì thu thập các cái trường để gửi lên backend bao gồm valid address
28:0228 phút, 2 giâynày, token name là description này. Các trường này đã được thu thập thông qua các state này, token name, description này.
28:1128 phút, 11 giâyOk chưa? Rồi tiếp theo là đóng cái hàm này lại đã có respond.
28:1828 phút, 18 giâyTiếp theo thì lấy cái data từ cái phản hồi rồi.
28:2728 phút, 27 giâyAwet respon chấm thằng chơ này.
28:4728 phút, 47 giâydata không có gì thì thông báo lỗi này.
28:5328 phút, 53 giâyĐấy bạn này thì hơi hơi ấy một chút nhá.
28:5728 phút, 57 giâyMình định nghĩa lại kiểu component mean này. Đấy,
29:0929 phút, 9 giâyđịnh nghĩa lạnh kiểu Hva
30:1430 phút, 14 giâyThôi cái đấy tí fix sau vậy. Bước thứ hai là bước ký giao dịch này.
30:2230 phút, 22 giâyKý giao dịch thì set status này.
30:2730 phút, 27 giâyĐấy và thực hiện ký
30:3930 phút, 39 giâyvà bước ba là submit giao dịch lại back end. Đấy lại tiếp tục set nè.
30:4730 phút, 47 giâyĐấy lại tiếp tục submit respon method.
31:0731 phút, 7 giâyVà cuối cùng là in cái thông tin ra ngoài màn hình.
31:1331 phút, 13 giâyĐấy. Tiếp theo là xét cái form rỗng
31:2131 phút, 21 giâyin thành công rồi.
31:4131 phút, 41 giâyRồi do mình thiếu dấu ngoặc đấy. Xong rồi nhá.
31:5031 phút, 50 giâyMình sẽ nói lại đoạn này một chút.
31:5331 phút, 53 giâyỪ. Đầu tiên thì chúng ta nói chung là mấy cái này là mấy cái hiển thị thôi. Đấy hiển thị nên
32:0132 phút, 1 giâymình sẽ không nói mấy cái này. Đầu tiên thì chúng ta sẽ gửi một cái request lên cái a back end. Đấy, backend
32:1132 phút, 11 giâynày với yêu cầu là gửi các cái thông tin như là valid này, token này và yêu cầu là min. Đấy, thằng API envoy min nhận
32:2032 phút, 20 giâycái request này và nó xử lý nó sẽ build tranh session trong back end như lúc chúng ta đã
32:2932 phút, 29 giâyxử lý lúc nãy đấy. Đấy. Và nó trả về trả về cái trang session unside. Đấy. Đây này. Trả về trang session unsize.
32:4132 phút, 41 giâyĐấy. Khi trả về trang session thì chúng ta sẽ gọi cái hàm size TX này mà chúng
32:4832 phút, 48 giâyta đã xây dựng trong cái valid context ấy. Đấy. Đây này. Wall context đây này.
32:5732 phút, 57 giâyĐây.
32:5932 phút, 59 giâyThì cái hàm này nó sẽ thực hiện ký ký cái giao dịch ừ ký cái giao dịch này.
33:0833 phút, 8 giâyĐấy và nó chủ động cập nhật cái winess set trong cái TXC này này.
33:1733 phút, 17 giâyĐấy.
33:2133 phút, 21 giâyVà sau khi chúng ta ký xong, tức là cái giao dịch đã có chữ ký rồi thì chúng ta
33:2833 phút, 28 giâysẽ lại gửi lại cái đã có witness set đấy.
33:3633 phút, 36 giâyLên cái gì nhở?
33:3933 phút, 39 giâylên cái back end để back end thực hiện mt chừ ký và submit lên on trên. Đấy mình nhắc lại một lần nữa nhá.
33:5033 phút, 50 giâyĐầu tiên font end gửi yêu cầu min này bao gồm thông tin token và description này. Sau đó thì
33:5933 phút, 59 giâybackend sẽ trả về cái ờ cấu trúc ừ red bond bao gồm các cái trường như là TX Body đấy.
34:1034 phút, 10 giâyỜ TX body này ờ TX WNE set này được gói
34:1734 phút, 17 giâytrong TXC đấy. Thì thằng Witness set này nó sẽ thực hiện ký ký vào đấy.
34:2634 phút, 26 giâyĐấy.
34:2934 phút, 29 giâyKý vào và nó tiếp tục nó gửi lại cái Witness set CB cho back end.
34:4034 phút, 40 giâyvà witness set nó sẽ xử lý chữ ký bên backend ấy. Nó sẽ ừ lấy cái chữ ký của
34:4734 phút, 47 giâycái wallet đá kỹ ấy trong cái widnet set và nó gộp vào trang session và nó thực hiện submit lên giao dịch.
35:0835 phút, 8 giâyĐây chúng ta có thể xem lại cái hàm ký này.
35:1635 phút, 16 giâyĐấy.
35:2035 phút, 20 giâyĐây là của cái API shift
35:3335 phút, 33 giâyshift 30. Đấy. Đấy.
35:4135 phút, 41 giâyĐấy. Cái a ừ mình sẽ nhắc lại một lần nữa. Cái a dự án này nó khó ở cái đó là cái xử lý tách cái giao dịch ra. Đấy.
35:5235 phút, 52 giâyLàm sao để khi gửi về font end chúng ta sẽ có thể ký được ký được cái giao dịch đó và chuyển về
35:5935 phút, 59 giâyback end. Backend sẽ lấy được cái chữ ký và gộp vào giao dịch và submit lên on trên.
36:0836 phút, 8 giâyOk, như vậy là chúng ta đã xong phần triển khai cái min logic min.
36:3136 phút, 31 giâyTriển khai xong cái logic min này rồi nhá.
36:3436 phút, 34 giâyChúng ta sẽ tiếp theo là chúng ta sẽ đến phần
36:4536 phút, 45 giâyupdate. Thì tương tự như vậy, chúng ta vào update moda này này. Đấy, tiếp tục triển khai logic.
36:5536 phút, 55 giâyĐầu tiên vẫn là phải trai chai và catch.
37:2637 phút, 26 giâyĐầu tiên vẫn là xét các cái hiệu ứng đấy.
37:3937 phút, 39 giâyRồi gửi request AP này API P này.
37:5437 phút, 54 giâyChúng ta sẽ gửi lên token name và valid address.
38:0038 phútÀ đâu cái này là bơ chứ mình nhầm mình nhầm.
38:0938 phút, 9 giâyUpdate đây. Update đây. Update đây.
38:1738 phút, 17 giâyBằng update. Đấy.
38:2538 phút, 25 giâyRồi lấy data lại tiếp tục xử lý chữ ký thôi.
38:3538 phút, 35 giâyRồi tiếp tục.
38:4738 phút, 47 giâyTiếp tục lấy ra chữ ký này và thực hiện ký.
39:0739 phút, 7 giâyỪ, mình sẽ nhắc lại một lần nữa thì cái TXC ấy nó sẽ có hai thành phần. Thành
39:1739 phút, 17 giâyphần đầu tiên đó là TX body và witness set. Đấy. Thì cái hàm hàm size TX này
39:2639 phút, 26 giâynày. Đấy. Cái hàm size TX này nó sẽ tự xử lý
39:3439 phút, 34 giâyký cái ký cho chúng ta đấy. Tự xử lý ký cho
39:4039 phút, 40 giâychúng ta vào cái TXCP trả về đây này. Và nó sẽ trả ra cái Witness set đã bao gồm
39:4939 phút, 49 giâytrừ ký của Wall. Đấy, mình sẽ nhắc lại một lần nữa để mọi người nắm bắt chi tiết hơn.
39:5739 phút, 57 giâyVì nãy trong phần min ấy mình cảm thấy là mình nói chưa thực sự clear. Đấy, tức
40:0440 phút, 4 giâylà cái hàm size TX này đấy, đầu vào tham số của nó là cái trang session,
40:1440 phút, 14 giâytức là full cái trang section ở dạng JB mà chúng ta đã xử lý bên back end đấy.
40:2240 phút, 22 giâyThì nó sẽ nhận vào là cái trang session dạng CB nó sẽ chủ động xử lý ký và trả
40:3040 phút, 30 giâyvề cái widnet set. Đấy, thì sau khi hàm này nó chạy xong rồi này, chúng ta không cần quan tâm nó xử lý như thế nào nhá.
40:4040 phút, 40 giâyĐấy, chúng ta chỉ quan tâm là chúng ta cho nó vào đầu vào của nó là cái trang
40:4640 phút, 46 giâysession ở dạng đã được xử lý bên back end. Đấy, đầu vào là trang session là dạng C đã xử lý bên back end.
40:5640 phút, 56 giâyVà nó kết quả của nó cho ra Witness set đã có chữ ký của Wall. Đấy mọi người chỉ cần hiểu thế thôi.
41:0641 phút, 6 giâySau đó sau khi có witness set rồi nhá.
41:1241 phút, 12 giâyTiếp theo bước tiếp theo này. Đấy chúng ta sẽ lại submit một lần nữa cái
41:2241 phút, 22 giâytrang session C4 này quay lại backend.
41:2541 phút, 25 giâyvà cái winess set core đấy. Tức là cái cái này này nó sẽ tự xử
41:3341 phút, 33 giâylý cho chúng ta để cho ra một cái đối tượng gọi là witness set. Đấy để chúng ta chuyển lại trong cái đối tượng
41:4241 phút, 42 giâywitness set đấy. Nó sẽ có chữ ký của Wallist.
41:4841 phút, 48 giâyMọi người chưa? Có cần mình mở lại code back end để nói lại không? Ok. Mở lại code backend để nói lại một chút nhá.
41:5841 phút, 58 giâyĐây đâu nhở? Xử lý chữ ký nhận về cái
42:0742 phút, 7 giâyyêu cầu submit đâu nhỉ? Đây nhá. Nói lại cái đoạn này đây nhá. Trang session C4 này này. Nó là cái trang session có hai thành phần body và witness set. Đấy.
42:1942 phút, 19 giâyĐấy. Thì quay lại đây thì nó sẽ trả về
42:2642 phút, 26 giâyờ trả về cái gì nhờ? Đây cái redond này nó sẽ trả về cái TXC chính là cái thằng này.
42:3942 phút, 39 giâyĐấy đã được chuyển sang CB.
42:4242 phút, 42 giâyThì trong cái thằng này nó sẽ có hai cái đối tượng là TX body và witness set.
42:4842 phút, 48 giâyĐấy thì khi thằng này nó xử lý cái hàm size này này, nó xử lý cái kiểu dữ liệu
42:5442 phút, 54 giâyCBO này, nó sẽ tự xử lý và trả ra cho chúng ta cái kiểu dữ liệu WiNet đã có cái V kỳ.
43:0543 phút, 5 giâyChúng ta không cần quan tâm nó xử lý như thế nào đâu. Đây là thư viện người ta làm, thư viện người ta thực hiện. Chúng ta không cần quan tâm, chúng ta chỉ cần
43:1443 phút, 14 giâyquan tâm cái hàm size này nó nhận vào là một đối tượng trang session ở dạng Core
43:2243 phút, 22 giâyvà nó trả ra cho chúng ta đối tượng WN set. Đấy, widnet set này nó sẽ có V key của Wallet đã được ký. Đấy, ok.
43:3243 phút, 32 giâyĐấy. Thì cái hàm sau khi chúng ta ký xong nhá là chúng ta submit lại này.
43:4043 phút, 40 giâyĐấy, submit lại.
43:4443 phút, 44 giâyKý xong chúng ta submit lại. Đây, submit lại đây. Đúng không? Request này cái này thì
43:5243 phút, 52 giâybackend TX là full các cái TX. Đấy, thì chúng ta gắn nhá. Còn cái wallet widnck
43:5943 phút, 59 giâynày đấy thì nó sẽ lấy cái cnnet này và nó gán vào cái wallet widnet này.
44:0844 phút, 8 giâyĐấy thì trong cái wallet winnet này sẽ nó sẽ có cái v chúng ta đã ký đấy. Đấy
44:2544 phút, 25 giâyđấy. Xong cái a TXC này bởi vì nó được cấu tạo bởi hai
44:3344 phút, 33 giâythành phần đúng không? Trang session body và trang session webnet. Đấy thì sau khi chúng ta đã gộp cái chữ ký từ
44:4044 phút, 40 giâyWall người dùng gửi lên rồi thì nó sẽ gụp vào đây. Nó thay thế cái WNET ban đầu kia kìa.
44:5144 phút, 51 giâyĐấy mình nói khá là chi tiết như vậy cũng mong là cũng mọi người sẽ hiểu rõ
44:5944 phút, 59 giâyhơn. Đấy. Ok. Tiếp theo là submit data.
45:0645 phút, 6 giâySubmit data này kiểm tra xem có suc hay không.
45:1245 phút, 12 giâyĐấy nhá.
45:1945 phút, 19 giâySuc không? Nếu như suc thì chúng ta sẽ thực hiện close bỏ cái
45:2845 phút, 28 giâymora đó đi rồi và phát bỏ.
45:4245 phút, 42 giâyOk. Ừ.
45:5145 phút, 51 giâyOk, đã xong phần update nhá.
45:5845 phút, 58 giâyĐã xong logic phần update. Tiếp theo thì chúng ta sẽ vào phần logic B. Thì cũng
46:0546 phút, 5 giâykhông khác gì mấy trong phần logic B này thì vẫn là gửi cái yêu cầu bơ lên bao
46:1246 phút, 12 giâygồm những cái thông tin như là toen muốn bơ chẳng hạn.
46:1946 phút, 19 giâyĐầu tiên vẫn phải thêm những cái rer này cho giao diện nó có sự trải nghiệm mượt mà. Ok. Gửi request.
46:3246 phút, 32 giâyỪ. BN này gửi end point là burn API BN này tham số yêu cầu là token này tiếp
46:4246 phút, 42 giâytheo là nhận về data phản hồi
46:5046 phút, 50 giâytiếp theo là nhận về data phản hồi à đấy tiếp theo là nếu data sucit
46:5846 phút, 58 giâythì hiển thị.
47:0347 phút, 3 giâyCòn nếu không thì not vẫn là lấy cái a
47:1247 phút, 12 giâywitness set ra và thực hiện ký và trả về winess set đã có chữ ký đấy. Gọi lại
47:1947 phút, 19 giâysubmit lại giao dịch đây. Submit lại txc
47:2647 phút, 26 giâynày để gán lại cái trang session và wn
47:3047 phút, 30 giâyset. để gộp cái chữ ký vào TXC sau đó rồi lấy ra cái thông tin kết quả.
47:4347 phút, 43 giâyVà bây giờ là thông báo và thoát form.
47:5347 phút, 53 giâyOk.
47:5847 phút, 58 giâyRồi sau khi chúng ta đã viết sang viết xong một số các cái logic của cái
48:0648 phút, 6 giâycác cái thằng gọi là min b update ấy thì chúng ta sẽ có thêm một cái
48:1548 phút, 15 giâyphần bổ trợ cho cái giao diện của chúng ta như là hiển thị các cái asset theo chuẩn shift 68 trong ví của chúng ta.
48:2448 phút, 24 giâyĐấy, chúng ta sẽ thực hiện đây nào. Đây triển khai ở đây.
48:3248 phút, 32 giâyRồi đầu tiên sẽ loading này. Đấy, chai kết.
48:5048 phút, 50 giâyRồi đầu tiên đó là gửi request lên
48:5748 phút, 57 giâyvà nhận lại respon
49:0549 phút, 5 giâyrespon này. P nè, point là API Wall, địa chỉ valid này.
49:1649 phút, 16 giâyĐấy.
49:1749 phút, 17 giâyRồi tiếp theo đó là nhận lại data và nếu như không thành công thì return rẫm.
49:2949 phút, 29 giâyCòn tiếp theo là xử lý profit này. Đấy,
49:3549 phút, 35 giâylập những cái access có profit là user token profit
49:4449 phút, 44 giâyvà decode ra dạng
49:5249 phút, 52 giâycó thể đọc token name đấy.
50:0650 phút, 6 giâyRồi tức là tên thì lấy là tên là xa nhưng mà hiển thị là hiển thị to nhá.
50:1550 phút, 15 giâyĐấy. Sau đấy thì set state rồi tiếp theo là load thôi.
50:2750 phút, 27 giâyRồi chúng ta đã lấy xong.
50:3450 phút, 34 giâyRồi tiếp theo có một số các cái phần như là cần phải load metadata
50:4250 phút, 42 giâycủa từng cái token một chúng ta cũng phải viết. Đấy.
50:4950 phút, 49 giâyĐây try này. Kết.
51:0651 phút, 6 giâyĐầu tiên thì chúng ta cũng phải query từ back end những cái metadata theo token name.
51:1651 phút, 16 giâyĐấy.
51:1951 phút, 19 giâyTiếp theo là vãy ra.
51:2751 phút, 27 giâyVà nếu như thành công thì description sau đó thì xử lý metadata.
51:4051 phút, 40 giâyNếu metadata data chmetion
51:5251 phút, 52 giâybằng metadata
52:0752 phút, 7 giâynếu như không phải thì là heading rồi.
52:1252 phút, 12 giâyRồi tiếp theo là xét danh sách Đ
52:4552 phút, 45 giâyOk.
53:0053 phútTiếp theo thì chúng ta sẽ code thêm một cái hàm gọi là hàm auto refresh khi mà
53:0753 phút, 7 giâyNFT thay đổi. Khi mà access nó thay đổi ấy, get hàm effect.
53:1553 phút, 15 giâyĐấy.
53:1853 phút, 18 giâyRồi. Ok. Sau khi chúng ta đã hoàn thành xong các cái component rồi bao gồm các
53:2653 phút, 26 giâycái component để phục vụ cho quá trình min này đấy.
53:3253 phút, 32 giâynày, update này và burn
53:3853 phút, 38 giâyvà list các cái access và
53:4453 phút, 44 giâylist các cái metadata, hiển thị metadata thì chúng ta sẽ tiếp theo đó là thực hiện
53:5353 phút, 53 giâyconvert cái địa trí và
54:0354 phút, 3 giâytruyền cái địa chỉ vào back end. Đấy, vì là theo chuẩn shift 30 ấy, địa chỉ nó là địa chỉ dạng hexa.
54:1354 phút, 13 giâyĐấy, nên chúng ta cũng phải chuyển nó thành dạng.
54:1854 phút, 18 giâyRồi chúng ta sẽ vào file Home Context này và thực hiện chuyển.
54:2654 phút, 26 giâyĐầu tiên thì chúng ta sẽ phải chce.
54:5254 phút, 52 giâyỪ. Gửi request lên yêu cầu convert đấy.
55:0355 phút, 3 giâyReturn này. Return này hình như trong ít đúng không? Ok.
55:0955 phút, 9 giâyRồi tiếp theo là lấy ra data. Đấy.
55:1655 phút, 16 giâyVà nếu data success 32
55:2555 phút, 25 giâyrồi. Ok. Tiếp theo thì có một số các cái
55:3255 phút, 32 giâyhàm tính năng như là lấy thông tin script từ back end như là ID của các cái access mà store address.
55:4555 phút, 45 giâyChúng ta sẽ thực hiện luôn.
55:5455 phút, 54 giâyVẫn là try. Try này.
56:0356 phút, 3 giâyBacket. Đấy,
56:1156 phút, 11 giâyvẫn là gửi request này.
56:1456 phút, 14 giâyĐấy, lấy data và set script info.
56:3356 phút, 33 giâyRồi script info đã khai báo chưa?
56:3756 phút, 37 giâyinfo
56:5656 phút, 56 giâyscript info này.
57:3357 phút, 33 giâySao cái này lại không dùng được add script info đ Ah
58:0958 phút, 9 giâyconvert address này.
58:2258 phút, 22 giâyRồi mình thừa một giống ngoặc. Ok, xong rồi.
58:3458 phút, 34 giâyNhư vậy là chúng ta đã code xong phần
58:4158 phút, 41 giâygiao diện. Mình sẽ tổng kết lại một chút phần code
58:4758 phút, 47 giâykỳ đầu tiên. Đấy. Ừ. chúng ta đã vào thiết lập
58:5558 phút, 55 giâyờ các cái hàm trong phần Wallet Context để sử dụng trong toàn bộ ứng dụng bao gồm như là
59:0359 phút, 3 giâyờ kiểm tra xem trình duyệt đã cài đặt các cái extension cho các cái ví của Gano
59:1159 phút, 11 giâyhay chưa. Đấy. Thứ hai đó là lấy address
59:1859 phút, 18 giâytừ shift 30 trả về dạng x dạng buy. Đấy. Đấy. Tiếp theo đấy là
59:2859 phút, 28 giâychúng ta sẽ thực hiện ờ viết cái a hàm connect wallet đấy.
59:3759 phút, 37 giâyVà disconnect wallet này và viết hàm ký ký giao dịch.
59:4659 phút, 46 giâyĐấy, ký giao dịch thì đầu vào của nó là trang session ở dạng core và nó sẽ trả về cái winess set. Đấy,
1:00:011 giờ, 1 giâyvà từ cái widnet set đấy, chúng ta sẽ gửi lại backend để back end thực hiện gộp cái widnet set vào cái widnet set trong trang section.
1:00:131 giờ, 13 giâyĐấy để cái submit giao dịch.
1:00:181 giờ, 18 giâyĐấy sau đấy thì chúng ta cũng đã ừ gọi đến cái hàm connect wallet trong cái component connect wallet.
1:00:331 giờ, 33 giâyĐấy. Rồi tiếp theo thì chúng ta cũng đã viết logic phần min.
1:00:411 giờ, 41 giâyĐấy, phần min thì lộ trình của nó đấy là gửi yêu cầu lên là min 1 access theo
1:00:491 giờ, 49 giâychuẩn ship 68 ở bên back end với các tham số là token name và description
1:00:561 giờ, 56 giâynhận về một data phản hồi. Đấy, phản hồi này là có chứa trang session ở dạng Core chưa có chữ ký này.
1:01:061 giờ, 1 phút, 6 giâysau khi a và dùng cái hàm size TX để ký ký và trả
1:01:141 giờ, 1 phút, 14 giâyvề cái Witness set. Đấy, witness set tiếp tục được submit lại trên back end
1:01:211 giờ, 1 phút, 21 giâycùng với cái trang session CB này. Và bên back end sẽ thực hiện gục cái WN set
1:01:281 giờ, 1 phút, 28 giâyđã có cái chữ ký của ví vào trang session CB và submit lên on trên. Đấy,
1:01:361 giờ, 1 phút, 36 giâyđối với update cũng như vậy,
1:01:431 giờ, 1 phút, 43 giâycũng tương tự và bơn cũng tương tự.
1:01:471 giờ, 1 phút, 47 giâyRồi sau khi chúng ta đã xong thì chúng ta có thêm một bước xử lý nhỏ nữa đó là
1:01:531 giờ, 1 phút, 53 giâylist các cái asset của người dùng đấy theo chuẩn shift 68.
1:02:051 giờ, 2 phút, 5 giâyvà xử lý hiển thị metadata.
1:02:121 giờ, 2 phút, 12 giâyRồi như vậy đã xong
1:02:211 giờ, 2 phút, 21 giâyđã xong phần code đấy. Đấy.
1:02:481 giờ, 2 phút, 48 giâyChúng ta đã xong phần code frontend rồi.

========================Phần 4 video 4 frontend demo: Link video :https://www.youtube.com/watch?v=SJJrgRPWdu0 ==================

0:00Ok.
0:044 giâySau khi chúng ta đã code xong font end rồi thì mình sẽ thực hiện demo ngay trên giao diện luôn.
0:1212 giâyĐầu tiên thì chúng ta sẽ test thử tính năng min xem nào.
0:1717 giâyDemo demo min ờ 1102 này.
0:2626 giâyDemo minấy min submit giao dịch.
0:3838 giâyOk. Đợi ký giao dịch. Confirm.
0:4646 giâyConfirm.
0:4949 giâyĐấy, giao dịch đã được min thành công rồi. Chúng ta sẽ đợi để nó submit lên blockchain và nó sẽ cập nhật lại danh
0:5858 giâysách cái cái các cái shift 68 NFT của chúng ta. Chúng ta sẽ đợi.
1:071 phút, 7 giâyĐấy,
1:091 phút, 9 giâygiao diện cũng mình cũng chỉ thiết kế cái giao diện làm sao đủ dùng thôi.
1:361 phút, 36 giâyOk.
1:371 phút, 37 giâyỜ như vậy là ừ giao diện của chúng ta đã cập nhật thêm cái
1:451 phút, 45 giâyaccess mới rồi này. Mọi người có thể nhìn thấy nhá. Demo min này version 1 nhá.
1:511 phút, 51 giâyĐấy. Bây giờ chúng ta sẽ thử tính năng update metadata xem nào. Update metadata đấy.
1:591 phút, 59 giâyThử V2 đi. Cập nhật.
2:142 phút, 14 giâyConfirm cái giao dịch. Confirm.
2:212 phút, 21 giâyOk. Xem nào. Thành công. Metadata đã được cập nhật. Chúng ta sẽ đợi để nó cập nhật xem nào.
2:582 phút, 58 giâyCheck trên Canano Scan xem vẫn chưa có
3:253 phút, 25 giâyrồi chúng ta làm mới lại xem nào.
3:283 phút, 28 giâyđã chuyển sang Version 2. Ok chưa? Rồi bây giờ chúng ta sẽ test tính năng bơ
3:353 phút, 35 giâynhé. B đây. Tôi đồng ý muốn xóa này. Xóa NFT này. Đợi và ký giao dịch thôi.
3:573 phút, 57 giâyRồi xem nào.
4:004 phútNFT đã được bơn. Ok. Chúng ta sẽ đợi một lúc. để giao dịch được submit lên on
4:074 phút, 7 giâytrên
4:244 phút, 24 giâylúc đợi thì mình sẽ mở lại cái slide để Ừ,
4:354 phút, 35 giâymở lại cái slide để trình bày lại cho mọi người tổng kết lại cái bài học về chuẩn Shift 68 của chúng ta.
4:464 phút, 46 giâyĐấy, làm mới xem nào. Ok,
4:574 phút, 57 giâyđã bơn thành công rồi. Chúng ta xem lại trên Cadano Scan xem.
5:045 phút, 4 giâyOk, như vậy là giao dịch đã được bơn thành công là số lượng đã thành -1 này.
5:115 phút, 11 giâyĐấy. Rồi bây giờ mình sẽ
5:185 phút, 18 giâytổng kết lại một chút về cái bài học của chúng ta trong cái chuỗi ờ ví dụ thực tế
5:285 phút, 28 giâyvề triển khai ờ toàn bộ một cái quy trình ờ chuẩn Shift 68 Dynamic Access
5:375 phút, 37 giâyNFT trên Cadano nó như thế nào rồi như vậy thì trong Cái chuỗi video mà mình
5:445 phút, 44 giâyvừa hướng dẫn về cái Shift 68 này thì mọi người cũng đã hiểu được về cơ chế
5:505 phút, 50 giâyhoạt động của Shift 68. Đấy, mục đích của nó sinh ra là giải quyết cái vấn đề
5:575 phút, 57 giâyđó là nếu như chúng ta gắn metadata kèm theo cái trang section khi chúng ta thực
6:046 phút, 4 giâyhiện giao dịch min các cái token hoặc là access trên hệ sinh thái thì nó sẽ tạo
6:116 phút, 11 giâyra một cái hạn chế đó là metadata đấy không thể cập nhật được. Đấy, cái Shift 68 nó được sinh ra nhằm khắc phục cái
6:206 phút, 20 giâyvấn đề đó. Đấy giúp chúng ta có thể update metadata một cách dễ dàng hơn thông qua cái cơ chế đó là min một cặp
6:296 phút, 29 giâytoken đấy một token là user token được
6:386 phút, 38 giâychuyển về ví của chúng ta còn một token gọi là reference token ứ token đó sẽ
6:446 phút, 44 giâychứa metadata được lưu trong datum đấy và chúng ta có thể cập cập nhật metadata
6:526 phút, 52 giâythông qua cách cập nhật datum và ờ cập nhật datum trong tế cô chứa ref
6:596 phút, 59 giâytoken đấy và trong cái chuỗi video hướng dẫn thì mình cũng đã ừ mô tả hướng dẫn
7:097 phút, 9 giâythực hành chi tiết về quy trình triển khai một cái ví dụ thực tế bao gồm đầu tiên đó là triển khai hợp đồng thông
7:187 phút, 18 giâyminh này đấy mình cũng đã ờ chia sẻ khá là chi tiết trong cái logic thiết kế hợp đồng thông minh như
7:277 phút, 27 giâythế nào, thiết kế datum hay là thiết kế redeemer như thế nào. Rồi thứ hai đó là thực hiện code off trên để tương tác với
7:367 phút, 36 giâyhợp đồng thông minh bao gồm các tính năng như min này, update metadata và bn.
7:417 phút, 41 giâyĐấy và cuối cùng là video lần này video khá là dài đó là xây dựng một ứng dụng
7:497 phút, 49 giâyfull stack de app đấy có giao diện đấy mọi người có thể min update và bn cái
7:577 phút, 57 giâychuẩn shift 68 này trên giao diện đấy như vậy thì trong chuỗi video vừa rồi thì mình cũng đã chia sẻ cho các bạn khá
8:058 phút, 5 giâylà chi tiết mong rằng cái những cái hiểu biết những cái thực hành về cái chuẩn
8:138 phút, 13 giâyShift 68 này nó sẽ mang lại cho các bạn nhiều kiến thức bổ ích. Sau này các bạn ờ sẽ bước vào quy trình xây dựng các ứng
8:218 phút, 21 giâydụng thực tế trên Canadano và áp dụng các cái chuẩn Shift 68 này. Thì mình rất
8:298 phút, 29 giâycảm ơn mọi người đã theo dõi các video giảng dạy của bọn mình.
8:348 phút, 34 giâyVề thời lượng thì nó khá là dài rồi nên mình cũng xin phép kết thúc video tại đây. Mình xin cảm ơn mọi người và mình xin chào mọi người.