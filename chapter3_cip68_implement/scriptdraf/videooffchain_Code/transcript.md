video có 2 phần:
========================Phần 1 video 1 chưa có demo: Link video : https://www.youtube.com/watch?v=TwjW-AfIVts==================

0:055 giâyXin chào mọi người. Chào mừng mọi người đã đến với video tiếp theo trong khóa học lập trình Badano của chúng tôi. Ờ
0:1313 giâythì trong video này chúng ta sẽ tiếp tục quá trình triển khai ví dụ Shift 68. Ờ sau khi chúng ta đã triển khai thành
0:2222 giâycông hợp đồng thông minh lên mạng ờ Preort Testlet. Đấy thì trong bài học này thì chúng ta sẽ thực hiện code off
0:3131 giâychain để tương tác với các tính năng của hợp đồng thông minh bao gồm min token,
0:3737 giâyupdate metadata và bơ b
0:4444 giâysau khi chúng ta đã triển khai hợp đồng thông minh ở giai đoạn trước rồi đấy thì chúng ta sẽ nhảy
0:5454 giâyvào code off trên luôn. Mình sẽ hướng dẫn các bạn trực tiếp từng bước một. Thì
1:001 phútđầu tiên vẫn như các bước chuẩn bị trước đó thì chúng ta cũng phải set up môi trường. Đầu tiên chúng ta khởi tạo setup
1:091 phút, 9 giâymôi trường ảo thì chúng ta sẽ vào cái thư mục Shift 68 trước.
1:191 phút, 19 giâyĐây set up môi trường chúng ta sẽ đợi một lúc.
1:351 phút, 35 giâyOk.
1:361 phút, 36 giâySau khi chúng ta đã setup môi trường ảo xong rồi, chúng ta sẽ thực hiện kích hoạt môi trường ảo. Thì đây là một câu
1:441 phút, 44 giâylệnh trên để kích hoạt môi trường ảo trên Windows.
1:491 phút, 49 giâyRồi sau khi kích hoạt xong rồi thì chúng ta sẽ thực hiện cài đặt các thư viện liên quan đến Pano hay là những thư viện
1:581 phút, 58 giâyờ thực hiện để xây dựng các giao dịch liên quan đến Blog for đấy thì mọi người sẽ thêm cho mình một file là requirement.txt.
2:092 phút, 9 giâyTrong đây sẽ ừ đưa ra những cái phiên bản về các thư viện mà chúng ta sẽ sử
2:172 phút, 17 giâydụng. Thì trong bài học code off trên này chúng ta sẽ thực hiện cài đặt các cái thư viện như Bano,
2:282 phút, 28 giâyBlockford, Python này, Python.net ENV này và một số các cái thư viện khác
2:362 phút, 36 giâynhư Fast API để sử xây dựng backend cho bài học tiếp theo và Unicor hoặc là
2:452 phút, 45 giâyBATC. Đấy thì chúng ta sẽ thực hiện chúng ta lưu vào lưu vào và thoát bỏ.
2:532 phút, 53 giâyChúng ta sẽ thực hiện câu lệnh give install requirement để thực hiện chạy
3:053 phút, 5 giâyrồi chúng ta không cần
3:233 phút, 23 giâycan not statify lớn hơn 11
3:413 phút, 41 giâytừ phiên bản sớm hơn xem nào. Không có à?
3:563 phút, 56 giâyKhông có thì chúng ta không cần ghi phiên bản đâu. Nó sẽ chủ động install phiên bản lớn nhất cho chúng ta đấy. Mới nhất cho chúng ta.
4:094 phút, 9 giâyĐợi cho quá trình install các thư viện trong quá trình này nhá.
4:184 phút, 18 giâyĐể cho nó tự chạy thì chúng ta sẽ tạo một cái file INV đấy, file đề lưu biến môi trường của chúng ta. Thì giống như
4:264 phút, 26 giâycác bài học trước đó thì mình vẫn dùng lại file INV của các bài học trước đó. Mọi người có thể xem nhé.
4:354 phút, 35 giâyOk.
5:035 phút, 3 giâyOk, đã cài đặt xong các thư viện. Tiếp theo thì chúng ta sẽ bắt đầu đi vào code. Thì đầu tiên thì chúng ta sẽ thực
5:125 phút, 12 giâyhiện tạo một file gọi là Shift 68 Unitive.
5:195 phút, 19 giâyĐấy, file này nó sẽ mục đích là chúng ta sẽ khai báo các cái
5:275 phút, 27 giâytrước khi tạo file đấy, chúng ta sẽ tạo một thư mục off trên để lưu code off trên của chúng ta. Đấy, tạo file Shift
5:355 phút, 35 giây682 để gọi là chúng ta sẽ khai báo các cái biến, các cái hàng số, các cái kiểu dữ
5:445 phút, 44 giâyliệu và các cái hàm cần thiết cho quá trình chúng ta ừ tích hợp thư điện. Đấy
5:525 phút, 52 giâythì chúng ta sẽ nhảy vào code luôn. Đấy thì mình sẽ có một chút chú thích về cái file này. Đấy chung
6:016 phút, 1 giâycung cấp các cái hàng function để thực hiện tương tác với Shift 68 hợp đồng thông minh. Đấy.
6:096 phút, 9 giâyTiếp theo thì chúng ta sẽ import một số các thư viện cần thiết ừ
6:206 phút, 20 giâybao gồm các cái thư viện như là xử lý chas này, OS nà, các cái thư viện liên quan đến
6:286 phút, 28 giâyclass hay là thư viện liên quan đến của Python. Rồi tiếp theo là import by Canadano,
6:386 phút, 38 giâyimport các cái thư viện. Ok. Tiếp theo chúng ta sẽ định nghĩa hai cái hàng số
6:456 phút, 45 giâyprofit cho cái reference token và user token.
6:516 phút, 51 giâyĐấy, đây chính là hai cái hàng số mà chúng ta sẽ phải sử dụng sau này khá là nhiều để tạo ra các user token và referent token.
7:047 phút, 4 giâyOk.
7:067 phút, 6 giâyRồi sau khi chúng ta đã thêm hai cái prefit này vào rồi thì chúng ta sẽ định nghĩa các cái datum cũng như là redeemer cho Shift 68.
7:197 phút, 19 giâyĐấy 68 thì đầu tiên chúng ta sẽ thực hiện định nghĩa redeem cho
7:287 phút, 28 giâyhợp đồng mining policy mà chúng ta đã code trước đó. Thì hợp đồng minting
7:377 phút, 37 giâycó redeem kiểu redeem cho minting ấy nó sẽ có hai vari hai vario gồm đó là
7:497 phút, 49 giâymin và bn token và nó có cái tham số đầu vào là token name. Đấy chúng ta cũng phải định nghĩa tương tự.
7:597 phút, 59 giâyĐầu tiên đó là min token đây.
8:158 phút, 15 giâyĐấy, mình sẽ nói lại một chút cái a
8:278 phút, 27 giâyờ cái ừ tham số đầu tiên là ừ con ST ID
8:338 phút, 33 giâynày này. Cái này chính là cái vị trí đầu tiên của cái hai cái variant của cái min redeemer.
8:448 phút, 44 giâyKhi chúng ta đưa ra conctor là 1 thì khi chúng ta chuyển cái data từ cái by
8:528 phút, 52 giâyCadano này này lên on thì nó sẽ hiểu là nó là cái tham số đầu tiên là cái varian vị trí
9:029 phút, 2 giâyđầu tiên đây này nó khớp với cái min token. Đấy. Còn tiếp theo là cái a
9:119 phút, 11 giâyđịnh nghĩa cái redeem thứ hai là cái bơ bn token
9:209 phút, 20 giâyđấy thì nó sẽ có cái trường contractor là 1 v token name. Đấy thì khi chúng ta
9:289 phút, 28 giâychuyển lên nó sẽ hiểu là contractor làng một thì nó sẽ đứng ở vị trí thứ hai trong cái min redeem này. Kiểu dữ liệu
9:389 phút, 38 giâymin redeem này. Đấy tức là contractor là vị trí của hành động
9:479 phút, 47 giâyđược định nghĩa trong kiểu dữ liệu trên hợp đồng thông minh. Mọi người có thể hiểu rõ ràng như thế. Tương
9:559 phút, 55 giâytự như vậy, ờ đối với store hợp đồng store ấy, tức là khai báo
10:0310 phút, 3 giâyredeem cho cái store nó cũng có hai cái ờ redeem. Đầu tiên là update, thứ hai là
10:1110 phút, 11 giâyburn reference. Chúng ta cũng khai báo tương tự. Mọi người có hiểu ý tưởng không? Đấy.
10:2110 phút, 21 giâyĐấy. Update metadata này. Ép kiểu thành Bluetooth data. Đấy.
10:2810 phút, 28 giâyTrong đó thì cái thằng redeem này thì nó không có tham số là token name ở trên bởi vì là
10:3810 phút, 38 giâynó chỉ cần vị trí thôi. Trong hợp đồng nó chỉ cần vị trí để khớp với redeem là
10:4410 phút, 44 giâygì? để hợp đồng nó biết redeem của nó là gì thôi.
10:4910 phút, 49 giâyĐấy, tương tự như vậy với burn reference cũng tương tự.
10:5510 phút, 55 giâyTiếp theo đấy xong phần định nghĩa
11:0711 phút, 7 giâyphần định nghĩa tim.
11:1711 phút, 17 giâyRồi tiếp theo thì chúng ta sẽ định nghĩa datum đấy.
11:2411 phút, 24 giâyĐịnh nghĩa datum vẫn khai báo acc data class này ờ kiểu
11:3211 phút, 32 giâyshift 68 datum và theo kiểu dữ liệu data. Đấy thì datum sẽ chứa các trường sau đây
11:4011 phút, 40 giâygiống y hệt như trên hợp đồng th thông thông minh chúng ta định nghĩa kiểu ấy. Đầu tiên vẫn cần có constructor ID đấy.
11:5011 phút, 50 giâyVì là trong Datum của Shift 68 ấy nó sẽ không có varian. Varian của nó là bộ dữ
11:5911 phút, 59 giâyliệu này là duy nhất rồi nên chúng ta cũng cần phải khai báo nó là bắt đầu từ vị trí không. Đấy. Tiếp theo đó là trường poly id này.
12:1112 phút, 11 giâyỨ tiếp theo đó là asset name. Thì asset name này nó chưa có profit mọi người chú
12:1912 phút, 19 giâyý. Và tiếp theo là trường owner. Hon chính là public key để sau này chúng ta xác thực trừ ký ấy.
12:3112 phút, 31 giâyTiếp theo là metadata kiểu dữ liệu là di đấy.
12:3612 phút, 36 giâyDictionary với key và value và version. Ok, như vậy chúng ta đã định nghĩa xong kiểu 68 ở off trên đấy.
12:5012 phút, 50 giâyRồi tiếp theo thì chúng ta sẽ viết các cái hàm ờ
12:5812 phút, 58 giâyviết à lot script
13:0813 phút, 8 giâytừ file Bluetooth chjon.
13:1413 phút, 14 giâyĐấy. Ờ file này thì chúng ta sẽ phải định nghĩa có tham số đầu vào là
13:2413 phút, 24 giâyờ đường dẫn của file này và trả về kiểu một dictionary.
13:3413 phút, 34 giâyĐấy, chú thích một chút.
13:4013 phút, 40 giâyĐấy, tiếp theo chúng ta sẽ thực hiện mở cái file với đường dẫn
13:4613 phút, 46 giâyvà load vào đấy. Tiếp theo chúng ta sẽ khai báo script
13:5413 phút, 54 giâybằng một mảng rỗng xong duyệt qua ờ các validator trong file ờ với cái title
14:0514 phút, 5 giâyvới cái key là validator đấy.
14:1514 phút, 15 giâyĐấy,
14:1814 phút, 18 giâylấy ra title của cái validator. Xong lấy ra script.
14:2614 phút, 26 giâyĐấy, xong trả về script.
14:5114 phút, 51 giâyCái này đây đúng không? Ok,
14:5614 phút, 56 giâyload script xong rồi nhá. Tiếp theo chúng ta sẽ thực hiện load meinting.
15:0215 phút, 2 giâyLad minting poly script này từ.
15:1215 phút, 12 giâyĐấy chúng ta sẽ khai báo thằng này nó sẽ là một hàm nhận vào đường dẫn và trả về plus v3.
15:2515 phút, 25 giâyỪ, vì là đây là một ví dụ ờ gọi là giúp cho mọi người hiểu về
15:3415 phút, 34 giâynguyên lý ờ xây dựng và triển khai chuẩn Shift 68 trong thực tế. Chính vì thế mà
15:4215 phút, 42 giâyhợp đồng nó sẽ đơn giản, nó sẽ không có các parameter nên nó sẽ tạo ra polosy ID cố định. Đấy,
15:5415 phút, 54 giâychúng ta sẽ lấy ra script này. Đấy, dùng cái hàm load
16:0216 phút, 2 giâyscript ở trên ấy. Đấy, xong lấy ra cái
16:0916 phút, 9 giâythông tin của cái script đấy. Thông tin của cái hàm script min ấy. Đấy.
16:2016 phút, 20 giâythực hiện trả về kiểu P3.
16:2616 phút, 26 giâyOk chưa? Rồi tiếp theo thì chúng ta tương tự như vậy chúng ta cũng sẽ phải load cái script của cái hợp đồng store đúng không?
16:3816 phút, 38 giâyĐấy,
16:4016 phút, 40 giâynot đấy. Nó cũng trả về Bluetooth V3 script này.
16:5216 phút, 52 giâyRồi tiếp theo cũng tương tự như vậy, nó chỉ thay cái ờ title thôi, thay cái key là shift 68
17:0217 phút, 2 giâyđấy. Chấm span. Lấy đúng cái hàm spend trong
17:0817 phút, 8 giâycái gì nhở? Đây lấy đúng cái hàm này trong hợp đồng thông minh. Ừ được
17:1717 phút, 17 giâyconvert sang file. sơ đấy. Tiếp theo thì chúng ta sẽ phải viết một cái hàm gọi là hàm tạo ờ shift 68 access name. Đấy,
17:3617 phút, 36 giâyshift 68 access name.
17:3817 phút, 38 giâyỪ, tức là gắn thêm cái prefit cho nó này. Đấy, mình gọi là vừa code vừa có
17:4517 phút, 45 giâythêm một chút. Ví dụ đầu tiên đó là chúng ta sẽ
17:5217 phút, 52 giâyừ phải convert cái ching nếu như cái token name nó đang là ing kiểu xem là
17:5917 phút, 59 giâykiểm tra kiểu không đấy nếu mà token name là exing thì chuyển thành
18:0718 phút, 7 giâybuy còn không thì giữ nguyên giữ nguyên ok rồi sau đó thì chúng ta sẽ
18:1618 phút, 16 giâythực hiện nối thêm nối thêm đấy.
18:3118 phút, 31 giâyTương tự với user username username cũng vậy.
18:3618 phút, 36 giâyUser token đấy. Đấy và trả về hai thằng hai thằng đấy. Rồi tiếp theo thì chúng
18:4418 phút, 44 giâyta sẽ tạo một cái hàm để xử lý metadata. Đấy
18:5218 phút, 52 giâychuyển nó thành cái metadata trong datum. Đấy mình sẽ vừa viết.
19:0319 phút, 3 giâyĐấy thì metadata khi chúng ta xây dựng thì nó sẽ có
19:1119 phút, 11 giâyhai loại ấy. Thứ nhất là nó chỉ có trường description thôi. Trong bài này thì mình chỉ xây dựng met data là
19:2019 phút, 20 giâydescription. Chỉ có trường description nó sẽ chuyển cái description từng
19:2919 phút, 29 giâysang encode. Đấy, nếu như metadata nó mà có nhiều hơn các trường này thì mình sẽ
19:3719 phút, 37 giâyphải xử lý. Đấy, đầu tiên là for key và value trong metadata.
19:4619 phút, 46 giâyĐấy, nếu value mà là thì chúng ta sẽ phải chuyển nó sang
19:5519 phút, 55 giâythành dạng bài và nếu không thì giữ nguyên.
20:1320 phút, 13 giâyRồi sau khi xử lý xong metadata rồi tiếp theo thì chúng ta sẽ thực hiện ờ tạo
20:2220 phút, 22 giâydatum cho chuẩn shift 68. Đấy thì chúng ta sẽ dựng hàm này đây với các tham số là bolos ID này,
20:3420 phút, 34 giâyasset name này,
20:3720 phút, 37 giâypublic key head là metadata có thể là các kiểu đơn dữ liệu hoặc là kiểu
20:4520 phút, 45 giâydictionary đấy và versionấy trả về kiểu shift 68 chúng ta đã khai báo trên đấy.
20:5420 phút, 54 giâyTiếp theo là rồi đầu tiên chúng ta sẽ xử lý metadata.
21:0921 phút, 9 giâyĐấy xử lý metadata vì là polos idame đều là dạng buy hết
21:1521 phút, 15 giâyrồi đúng không? Còn cái metadata thì nó vẫn là kiểu cây là ing đấy nên chúng ta
21:2521 phút, 25 giâyphải xử lý nếu như metadata mà là có một trường ấy,
21:3221 phút, 32 giâycó một trường là ching thì chúng ta tạo metadata dùng cái hàm hàm tạo met convert cái
21:3921 phút, 39 giâymetadata đấy sang kiểu metadata phù hợp với dữ liệu on trên đấy. Nếu metadata mà là dictionary
21:4821 phút, 48 giâythì chúng ta cũng cần phải xử lý đấy.
21:5321 phút, 53 giâyMetadata mà là dictionary thì convert.
22:0322 phút, 3 giâyĐầu tiên chúng ta sẽ khởi tạo một cái mảng một cái đối tượng metadata đích rỗng này. Đấy.
22:1322 phút, 13 giâyĐấy. Tiếp theo là duyệt qua từng key và value trong dictionary của metadata này
22:1922 phút, 19 giâyfor key value in metadata item đấy key.
22:4222 phút, 42 giâyỪ.
22:4622 phút, 46 giâykey nếu như gọi là key mà là ing ấy UTX F8 ấy thì chúng ta phải
22:5322 phút, 53 giâyencode lại. Đấy tương tự như vậy buy cũng thế value của dictionary cũng
23:0223 phút, 2 giâythế đấy. Và sau đó thì metadata ờ gắn vào metadata
23:1123 phút, 11 giâyrồi nếu không thì giữ nguyên
23:2323 phút, 23 giâyrồi và cuối cùng là return.
23:3523 phút, 35 giâyRồi ờ chúng ta sẽ viết thêm một vài hàm nữa
23:4023 phút, 40 giâyđó là hàm get bos id từ cái thằng script ấ đấy.
23:5223 phút, 52 giâyFollow Cid nó lấy vào là cái min script và nó trả về kiểu dữ liệu script khác. Đấy.
24:1224 phút, 12 giâyRồi ơ đây nhập.
24:2224 phút, 22 giâyOk. Tiếp theo thì chúng ta sẽ viết thêm một cái hàm này lấy public key head trong một số trường hợp cần thiết từ
24:3024 phút, 30 giâydatum đấy. Defile này exchanger
24:3724 phút, 37 giâyfrom datum này. Tam số nhận vào là datum đấy.
24:4324 phút, 43 giâyDatum kiểu shift 68 đã được convert về đấy. Return atum.
24:5624 phút, 56 giâyRồi tiếp theo cần một hàm để lấy address từ script của Bluetooth V3. Đấy, get
25:0525 phút, 5 giâyscript address nà. Hàm này là một cái hàm lấy vào tham số là Bluetooth script và network trả về kiểu address. Đấy.
25:1925 phút, 19 giâyRồi đầu tiên đó làuscript.h này. Đấy.
25:4125 phút, 41 giâyNhầm.
25:5525 phút, 55 giâyXong. Return upgrade. Đấy.
26:0026 phútOk. Ờ như vậy thì chúng ta đã có một số hàm cần thiết rồi. Đấy.
26:0926 phút, 9 giâyTiếp theo thì chúng ta sẽ sang ờ phần quan trọng hơn đó là viết các cái
26:1726 phút, 17 giâyhàm để cái thực hiện view giao dịch.
26:2226 phút, 22 giâyĐấy chúng ta sẽ tắt cái này đi.
26:2926 phút, 29 giâyOk. Tiếp theo đó là tạo một cái file ừ là file
26:3626 phút, 36 giâyShift 68 Operation để thực hiện build giao dịch.
26:4326 phút, 43 giâyShift 68 operation
26:5526 phút, 55 giâyvẫn trong thư mục off shift 68 operation này. Đấy, file này
27:0427 phút, 4 giâysẽ thực hiện cung cấp các hàm để min burn, token này.
27:1227 phút, 12 giâySử dụng by cano để xây dựng trang session. Đầu tiên vẫn là import thư viện
27:1827 phút, 18 giâycần thiết. Đấy. Import các rồi.
27:3127 phút, 31 giâyImport các nào.
27:4227 phút, 42 giâyĐấy. Tiếp theo là import.netv net invv để load các biến môi trường. Đấy, tiếp
27:5027 phút, 50 giâytheo là import block for này, import by Cadano này. Đấy, tiếp theo là import một
27:5727 phút, 57 giâysố cái hàm mà chúng ta đã xây dựng trước đó của cái file Shift 68 YouTube. Đấy.
28:0528 phút, 5 giâyĐấy. Ok. Bước đầu tiên thì chúng ta sẽ thực hiện load envir environment. Đấy,
28:1228 phút, 12 giâybước tiếp theo thì chúng ta sẽ xây dựng một cái hàm hàm khởi tạo context trên.
28:1928 phút, 19 giâyĐấy,
28:2128 phút, 21 giâyđịnh nghĩa hàm này. Đấy, mình sẽ thêm một chú thích vào đây.
28:2828 phút, 28 giâyRồi chúng ta sẽ lấy ra network từ cái biến môi trường. Đấy, thứ hai là lấy block for key.
28:3928 phút, 39 giâyĐấy. Ừ. Mình sẽ xem lại xem nào.
28:4428 phút, 44 giâyFor project ID này đây mới đúng này. Đấy. Network. Network.
28:5328 phút, 53 giâyOk. Rồi tiếp theo thì chúng ta sẽ map network tương ứng
29:0329 phút, 3 giâyrồi và trả về cái context trên. Ok.
29:1129 phút, 11 giâyNhư vậy chúng ta đã xong. Tiếp theo là hàm khôi phục các thông tin của ví.
29:1929 phút, 19 giâyỪ trả về một double định nghĩa nó sẽ nhận vào cụm 24 ký tự và trả về top này. Đấy.
29:3229 phút, 32 giâyRồi đầu tiên đó là khôi phục phí từ memonic.
29:4229 phút, 42 giâyTiếp theo thì chúng ta sẽ lấy hai cái cặp key từ cái ờ dẫn suất. Đấy.
29:5129 phút, 51 giâyTiếp theo thì chúng ta sẽ thực hiện gọi là tạo hai cái S key từ cái key trên.
30:0230 phút, 2 giâyRồi tiếp theo thì chúng ta sẽ
30:1130 phút, 11 giâychuyển thành public key public gọi là public key.
30:2030 phút, 20 giâyOk.
30:2330 phút, 23 giâyỪ. lấy cái network ra lấy lại cái network. Đấy.
30:3630 phút, 36 giâyRồi tiếp theo thì chúng ta sẽ lấy địa chỉ chính
30:4330 phút, 43 giâyrồi và trả về các cái giá trị cần thiết như là payment s key,
30:5130 phút, 51 giâypayment v key này, stake sake vred. Đấy.
30:5630 phút, 56 giâyOk. Chúng ta sẽ có một cái hàm get network đi cho tiện.
31:0431 phút, 4 giâyĐấy,
31:0631 phút, 6 giâynetwork nà lấy từ biến môi trường là return. Đấy. Ok. Rồi tiếp theo thì chúng
31:1331 phút, 13 giâyta sẽ lấy các script trong bài này và lấy các clos.
31:2231 phút, 22 giâyNói chung là lấy hết ấy.
31:2531 phút, 25 giâyChúng ta sẽ khai báo ừ chung tích.
31:3331 phút, 33 giâyRồi ờ đầu tiên đấy là hàm này nó nhận vào một cái tham số.
31:4231 phút, 42 giâyTham số này là có thể non nhé. Đấy, nếu tham số là non
31:4931 phút, 49 giâythì chúng ta sẽ thiết lập tham số của nó là cái đường dẫn vào cái thư mục Plot
31:5631 phút, 56 giâyJason ấy. Đấy, if 68 này. 68 access
32:0532 phút, 5 giâyờ gì à? Dynamic access đúng rồi. Nếu như cái đường dẫn nó mà
32:1432 phút, 14 giâykhông có đường dẫn truyền vào thì chúng ta sẽ khai báo cái đường dẫn chính là cái đường dẫn của cái thư mục Blot Jason
32:2232 phút, 22 giâyđã được biên dịch thành file Blu Jason trong phần code hợp đồng thông minh trước đó. Đây này. Đấy.
32:3032 phút, 30 giâyOk.
32:3232 phút, 32 giâyRồi tiếp theo thì chúng ta sẽ lấy ra một là min min mining script đấy.
32:4032 phút, 40 giâygọi đến hàm load min script mà chúng ta đã định nghĩa lúc này ấy bằng
32:4832 phút, 48 giâytiếp theo thì chúng ta cũng tương tự chúng ta sẽ lấy thằng store script gọi đến hàm load store script đấy gọi là
32:5732 phút, 57 giâytiếp theo tạo policy id từ mean script đấy tiếp theo là lấy network nào để lấy
33:0633 phút, 6 giâytiếp theo là chúng ta sẽ lấy được cái địa chỉ từ cái store script P và network đấy. Và cuối cùng là trả về các giá trị chúng ta vừa lấy ra.
33:1933 phút, 19 giâyOk.
33:2133 phút, 21 giâyNhư vậy là chúng ta đã lấy xong ừ gọi là khởi tạo xong các cái hàm cần thiết rồi. Bây giờ thì chúng ta sẽ đi
33:3033 phút, 30 giâyvào những cái hàm chính. Đấy. Đầu tiên chúng ta sẽ thực hiện viết hàm min.
33:3633 phút, 36 giâyĐầu tiên chúng ta sẽ định nghĩa hàm min này.
33:4133 phút, 41 giâyĐấy các tham số truyền vào bao gồm là
33:5533 phút, 55 giâyđấy con này đấy. Payment s key. Payment v key này.
34:0134 phút, 1 giâyHonner address này. name description này. Đấy, hàm này sẽ trả về
34:0934 phút, 9 giâydi dictionary là kết quả giao dịch. Đấy,
34:1834 phút, 18 giâymình sẽ vừa code vừa chú thích để sau này mọi người đọc lại tài liệu sẽ hiểu rõ hơn. Đấy, đầu tiên là khai báo
34:2834 phút, 28 giâynetwork. Lấy network ra. Tiếp theo là load script. Ừ.
34:3534 phút, 35 giâyĐấy. Tiếp theo là last script từ tất cả các cái script mà
34:4434 phút, 44 giâychúng ta đã lấy ra từ hàm get script lú trước đó ấy. Đấy. Tiếp theo là lấy honor public key.
34:5734 phút, 57 giâyBước tiếp theo là chúng ta bắt đầu.
35:0135 phút, 1 giâyđi vào xây dựng giao dịch rồi thì đầu tiên thì nó sẽ là tạo access name theo
35:0735 phút, 7 giâychuẩn shift 68. Đấy, chúng ta sẽ lấy token name ra
35:1435 phút, 14 giâyvà encode nó lại thành dạng buy. Và tiếp theo là tạo
35:2235 phút, 22 giâyuser access name và referent top access name. Đấy từ cái hàm gọi là create shift 6 thằng access name ấy.
35:3235 phút, 32 giâyĐấy.
35:3335 phút, 33 giâyOk. Tiếp theo là tạo c ID kiểu by phải ép kiểu by nhá. Tiếp theo là tạo datum.
35:4635 phút, 46 giâyTom bằng mở ngoặc.
36:0336 phút, 3 giâyTrong đây có các tham số như là bolosi id này, access name này,
36:0936 phút, 9 giâyđấy. Honner, public gh metadata. Metadata thì có trường description đấy.
36:1936 phút, 19 giâyOk. Tiếp theo vẫn là quy trình quen thuộc giống như min NFT bình thường thôi. Đầu tiên vẫn là tạo multiac access cho mining.
36:3136 phút, 31 giâyTạo multiac access này. Đấy, trước khi tạo multi access thì vẫn là khởi tạo access.
36:3936 phút, 39 giâyĐấy, sau khởi tạo thì chúng ta sẽ thiết lập số lượng ứ thiết lập số lượng này.
36:4936 phút, 49 giâyĐấy, đầu tiên là chúng ta sẽ thiết lập số lượng cho reference token. Đấy, thứ hai là cho user token.
36:5836 phút, 58 giâyĐấy, access của chúng ta sẽ ờ tiếp theo thì min access khởi tạo multi access này
37:0737 phút, 7 giâygắn min access vào đấy mọi người nhớ chứ? Trong multiet sẽ có nhiều access đấy.
37:2037 phút, 20 giâyOk. Tiếp theo thì chúng ta sẽ thực hiện tạo redeem để thực hiện hành động là
37:3037 phút, 30 giâyờ gọi là hành động min đấy. Redeem thì redeem cho hành động min thì có là
37:3837 phút, 38 giâyredeem là add kiểu kiểu là min token như chúng ta đã khai
37:4637 phút, 46 giâybáo đấy. Đấy, Min token thì có tham số truyền vào là token name. Đấy, thì chúng ta sẽ gắn cái token name vào.
37:5637 phút, 56 giâyRồi gắn token name. Rồi tiếp theo nhá, chúng trong tức là chúng ta đã khởi tạo multi
38:0538 phút, 5 giâyaccess xong đúng không? Đấy, chúng ta sẽ đính cái multi access này vào giao dịch min. Đấy, thì chưa đến bước đó.
38:2138 phút, 21 giâyChưa đến mức đó, chúng ta sẽ xử lý đầu tiên tạo hai cái đối tượng gọi là đối tượng referent token.
38:3038 phút, 30 giâyỜ đấy vẫn phải gọi là quy trình tạo token
38:3838 phút, 38 giâyvẫn phải tạo ra asset và set khối lượng. Đây refer multi access này.
38:4838 phút, 48 giâyĐấy asset value cho nó bình thường nhá mọi người. Hình gọi là
38:5638 phút, 56 giâymình vẫn phải nhắc lại một chút trong UK Echo nếu như mà khi mà giao dịch ấy thì mọi
39:0439 phút, 4 giâyngười phải setup cho nó một cái giá trị lượng ADA bằng một con số. tối thiểu đấy
39:1339 phút, 13 giâythì bước này chính là bước xét cho cái ut chứa reference token một cái lượng
39:2039 phút, 20 giâyada tối thiểu này để sau đấy thì chúng ta sẽ truyền vào truyền vào cái
39:2839 phút, 28 giâyhợp đồng store đấy. Đấy build trang session đấy.
39:3839 phút, 38 giâyBuilder tạo builder đấy. Tiếp theo là add input address thì thực hiện lấy
39:4639 phút, 46 giâyUxo trả phí này. Tiếp theo là min access. Đấy, trong bước này mới bắt đầu
39:5239 phút, 52 giâymin này này. Đấy, đính cái thông tin của cái mondi access này vào cái giao dịch.
40:0140 phút, 1 giâyĐấy, là đính thêm cái a meaning script.
40:0740 phút, 7 giâyRồi và thêm một cái output để chuyển cái token này về cái địa chỉ store.
40:1840 phút, 18 giâyTức là bước này này. Thực ra nó là chuyển cái chứa reference token về địa
40:2940 phút, 29 giâychỉ hợp đồng thông minh. Đấy. Đấy. Bước này chính là khởi tạo cái multiet.
40:4240 phút, 42 giâykhởi tạo cái multi access để gọi là đính nó vào cái uto và chuyển vào hợp đồng
40:4840 phút, 48 giâythông minh. Đấy tương tự như vậy ừ vì là min một cặp token, một cái là user token, một cái là reference token đúng
40:5740 phút, 57 giâykhông? thì chúng ta cũng phải xử lý chuyển cái user token về thằng địa chỉ ví của thằng Min cũng tương tự như vậy.
41:0841 phút, 8 giâyKhởi tạo asset nàởi tạo số lượng này đấy
41:1441 phút, 14 giâykhởi tạo multiass access này đấy gọi là khởi tạo value.
41:2241 phút, 22 giâyRồi add input.
41:2641 phút, 26 giâyRồi add input chính là chuyển về địa chỉ ví của thằng ấy. Đấy. Tiếp theo là thêm một cái
41:3541 phút, 35 giâyrequire size này và ví giao dịch.
41:4141 phút, 41 giâyVà tiếp theo là submit. A submit giao dịch.
41:5041 phút, 50 giâyTiếp theo đấy là chúng ta sẽ thực hiện trả về thông tin giao dịch.
42:0042 phútRồi ừ mình sẽ tổng kết lại các bước chúng ta xây dựng giao dịch min
42:0942 phút, 9 giâythì nó cũng không khác gì ừ giao dịch min token bình thường như những bài học trước mình đã hướng dẫn. Nhưng mà trong
42:1742 phút, 17 giâybài học này nó có thêm cái tạo thêm cái datum cũng như là
42:2542 phút, 25 giâyờ sau khi min xong thì chúng ta sẽ thực hiện ờ chuyển cái UTXO chứa reference
42:3542 phút, 35 giâytoken về địa chỉ hợp đồng thông minh và cái địa chỉ store đấy. Đấy, cái
42:4242 phút, 42 giâyreference token đấy nó sẽ đi theo cái UTXO và UTXO đó nó chứa cái datum để sau
42:5042 phút, 50 giâynày chúng ta thực hiện chi tiêu cái datum đấy và cập nhật lại cái datum.
42:5942 phút, 59 giâyOk, bước tiếp theo thì chúng ta sẽ thực hiện viết tiếp hàm update metadata.
43:0643 phút, 6 giâyĐấy, hàm này sẽ nhận vào các tham số đó là đầu tiên đó là context này,
43:1543 phút, 15 giâythứ hai là payment s key và payment vy. Đấy,
43:2143 phút, 21 giâytiếp theo là cái địa chỉ của người cập nhật ấy. Tiếp theo là token name.
43:3543 phút, 35 giâyTiếp theo là trường thay đổi, metadata thay đổi thì chúng ta là description đã định cho metadata nên chúng ta sẽ thay
43:4343 phút, 43 giâyđổi cái description này. Và cuối cùng là cái đường dẫn đến file blotus.chach
43:5143 phút, 51 giâytrả về disary là kết quả giao dịch.
43:5943 phút, 59 giâyRồi thì mình sẽ thêm một chút chú thích trong đây.
44:1044 phút, 10 giâyĐầu tiên vẫn phải hình như là cái network này chúng ta không cần dùng đúng không?
44:1744 phút, 17 giâyOk thôi.
44:2044 phút, 20 giâyĐầu tiên vẫn là L script giống các bước trước đó ấy. Đấy L script này mục tiêu
44:2644 phút, 26 giâylà lấy ra cái store address và follow ID store script.
44:3244 phút, 32 giâyTiếp theo vẫn là get cái public key để sau này thực hiện gọi là
44:3844 phút, 38 giâyđối chiếu kiểm chứng chư ký. Đấy tiếp theo đấy là tạo cidd.
44:4644 phút, 46 giâyRồi bước tiếp theo vẫn là xây dựng token name
44:5544 phút, 55 giâyrồi tạo reference access name bằng cách nối thêm nối thêm cái prefit vào. Rồi sau khi đã
45:0545 phút, 5 giâyset up xong là chúng ta sẽ bắt đầu tìm UXO chứa refer token.
45:1345 phút, 13 giâyĐấy, vẫn dùng cái hàm gọi là context.
45:2045 phút, 20 giâyĐấy. Đấy, đầu tiên là khởi tạo reference UTXO bằng nă. Đấy, duyệt tất cả các UXO.
45:3245 phút, 32 giâyNếu ừ gọi là UTO ờ chấm output này ch amount. Multi asset
45:4145 phút, 41 giâyđấy. Đấy, xong lại duyệt trong multiet các cái asset
45:5145 phút, 51 giâycác cái multiet item đây này. Đấy, mọi người có thể hình dung là multiass access nó trong đấy nó lại gồm nhiều cái asset.
46:0246 phút, 2 giâyĐấy, chính vì thế mà từ thằng cha lại đến thằng con.
46:1046 phút, 10 giâyRồi tiếp theo là kiểm tra.
46:1646 phút, 16 giâyNếu cái poy id mà bằng cái poly id của cái thằng muốn update đấy cộng với cái ref
46:2546 phút, 25 giâytoken đấy thì chúng ta sẽ thực hiện gán cái reference UTO bằng cái UXO đó.
46:3846 phút, 38 giâyĐấy, nếu như không có thì trả lời là không tìm thấy.
46:4446 phút, 44 giâyRồi, ok. Tiếp theo thì chúng ta sẽ phải xử lý datum này. Xử lý datum.
46:5446 phút, 54 giâyXử lý datum để lấy ra public public public key hết à. Pkhon.
47:0747 phút, 7 giâyĐấy, đầu tiên đó là từ cái reference uto đấy, chúng ta sẽ
47:1447 phút, 14 giâylấy ra cái datum. Đấy, nếu datum
47:2147 phút, 21 giâyừ thuộc kiểu thì chúng ta sẽ gán current
47:2947 phút, 29 giâycái current owner đấy bằng cái
47:3647 phút, 36 giâyừ public key head ừ chứa trong cái datum.
47:4147 phút, 41 giâyCòn nếu current khác public kia hết đây này thì nó không phải
47:5547 phút, 55 giâyđấy.
47:5647 phút, 56 giâyVà tiếp theo thì nếu như đúng thì
48:0748 phút, 7 giâynếu như đúng thì cho nó cập nhật.
48:1248 phút, 12 giâyVà rồi
48:2448 phút, 24 giâybước tiếp theo là chúng ta sẽ phải khởi tạo datum mới.
48:2948 phút, 29 giâyKhởi tạo datum mới. Đấy. New datum này sẽ bằng exit 68 datum.
48:4348 phút, 43 giâyvà OSI ID này đấy. Access name này
48:5248 phút, 52 giâyon public hết này.
48:5848 phút, 58 giâyVà metadata sẽ new description mới và version bằng new version.
49:0649 phút, 6 giâyRồi ok.
49:1049 phút, 10 giâyĐấy, bước tiếp theo sau khi đã tạo datum xong chúng ta sẽ tạo redeem cho cái hành động này. Spending này. Thì hành động
49:1949 phút, 19 giâynày chính là update metadata. Chúng ta sẽ tạo cái redeem dựa trên cái
49:2749 phút, 27 giâyđịnh nghĩa variable của cái redeem chúng ta đã khai báo trước đó là update metadata. Và tiếp theo là view trang section.
49:3849 phút, 38 giâyĐấy, view trang section khởi tạo trang section này. Đấy, tiếp theo là add input address.
49:4749 phút, 47 giâyRồi tiếp theo là thực hiện gọi là add input script từ cái địa chỉ hiện tại.
49:5949 phút, 59 giâyĐấy. Tiếp theo đó là gửi lại cái UTXO chứa ref token trở lại
50:0850 phút, 8 giâystore script ấy. Đấy là vẫn là khởi tạo access đầu tiên này. Đấy, vẫn là
50:1650 phút, 16 giâykhởi tạo số lượng và khởi tạo multiass access này. Gắn nó vào multi gắn asset vào multiet này. Đấy, đính kèm một cái
50:2550 phút, 25 giâylượng Ada này và gửi nó về
50:3350 phút, 33 giâyđịa chỉ store. Đấy, cuối cùng là yêu cầu ký và thực hiện ký giao dịch.
50:4450 phút, 44 giâyVà cuối cùng là submit.
50:4950 phút, 49 giâyOk. Và trả về thông tin kết quả giao dịch.
50:5750 phút, 57 giâyOk. Mình sẽ nhắc lại một lần nữa nhé.
51:0051 phúttrong hợp đồng ờ thông minh phần điều kiện để spend ấy tức là spending cái uto
51:1051 phút, 10 giâyờ đang chứa cái referent token mà chúng ta đã đang và muốn cập nhật cái metadata
51:1951 phút, 19 giâythì chúng ta sẽ phải nhớ lại cái hợp đồng thông minh nó có ba điều kiện đầu tiên đó là phải được ký bởi cái thằng
51:2751 phút, 27 giâyờ có cái chữ ký tương ứng với cái public key head được lưu trong datum của cái UXO đó. Đấy thì đây chính là điều kiện
51:3551 phút, 35 giâyđầu tiên này. Đấy điều kiện thứ hai đó là input phải chứa
51:4251 phút, 42 giâycái reference token. Đấy thì đây chính là cái xử lý điều kiện đấy nhá. Đấy.
51:5051 phút, 50 giâyVà điều kiện tiếp theo đó là cái output nó cũng phải chứa cái reference token.
52:0052 phútThì đây chính là điều kiện thứ ba này.
52:0252 phút, 2 giâyĐấy, mọi người có thể hình dung lại. Ok chưa?
52:0752 phút, 7 giâyOk rồi. Đấy, mình gọi là cũng đã code xong cái phần update metadata. Tiếp theo
52:1452 phút, 14 giâylà phần bơ. Phần đơn. B này thì cũng khá là đơn đơn giản thôi. Định nghĩa là bơ này.
52:2752 phút, 27 giâyTương tự như các hàm khác cũng nhận vào context payment s. Ừ.
52:3552 phút, 35 giâyĐấy, contact này payment s key này. Đấy, trả về đích này.
52:4652 phút, 46 giâyĐấy,
52:4852 phút, 48 giâytrả về đích thì mình sẽ chú thích một chút cái này.
52:5252 phút, 52 giâyRồi tiếp theo vẫn là lấy network. Cái này hơi thừa thôi cứ đi. Tiếp theo vẫn là load squ.
53:0153 phút, 1 giâyRồi tiếp theo vẫn là get on public key hết để đổi chiều trừ ký này. Đâu tiếp
53:0853 phút, 8 giâytheo vẫn là tạo access name đấy và tạo reference và user token name này từ cái
53:1753 phút, 17 giâytoken mình vừa tạo này. Đấy khá là quên làm.
53:2453 phút, 24 giâyVà tiếp theo vẫn là tìm UTO chứa reference token trên store này. Đấy dùng
53:3153 phút, 31 giâycái hàm context.O đấy tại store vẫn là khởi tạo ref
53:4053 phút, 40 giâybằng nă đấy. Đấy tiếp theo là duyệt.
53:4653 phút, 46 giâyDuyệt tất cả các cái đấy xong lại duyệt tiếp tục duyệt trong multiass access này. Đấy,
53:5653 phút, 56 giâyduyệt trong multiet là nếu như có tồn tại cái id
54:0254 phút, 2 giâyvà cái a reference asset name đấy. Đấy thì chúng
54:0954 phút, 9 giâyta sẽ gán cái reference asset bằng cái UTO đó và break. Nếu không thì chúng ta
54:1754 phút, 17 giâysẽ trả về là không tìm thấy. Đấy. Tiếp theo
54:2454 phút, 24 giâylà vẫn là lấy cái thông tin của public key header.
54:3054 phút, 30 giâyĐấy, xử lý datum này.
54:3554 phút, 35 giâyĐấy, nếu như Datum đã là kiểu shift 68 chúng ta đã xây dựng thì
54:4254 phút, 42 giâychúng ta lấy ra cái a public key head của này. Đấy, nếu như
54:5154 phút, 51 giâypublic key head của mà trùng với cái thằng truyền vào không trùng thì thông báo là nó không
55:0055 phútphải chủ. Đấy. Và tiếp theo là tìm
55:0755 phút, 7 giâytrong ví của lấy lấy trong ví của này. Đấy cũng khởi tạo rồi. Khởi tạo xong rồi cũng duyệt qua.
55:2055 phút, 20 giâyNói chung cũng tương tự như trên rồi. Nếu như không có thì thông báo
55:3255 phút, 32 giâyrồi để giao dịch tạo giao dịch thì vẫn là những bước quen
55:4055 phút, 40 giâythuộc chỉ khác là nó sẽ khởi tạo số lượng là âm thôi.
55:4855 phút, 48 giâyĐấy vẫn là tạo access, vẫn là khởi tạo số lượng.
55:5455 phút, 54 giâythì để rồi
56:0656 phút, 6 giâyđây gắn vào khởi tạo multi access này sau đó gắn thông tin access m này đấy
56:1456 phút, 14 giâyxong đó tạo redeem tạo redeem thì có hai cái chúng ta cần chú ý nhé
56:2356 phút, 23 giâyNhư mình đã chia sẻ trong bài thực hành phần code hợp đồng thông minh hôm trước
56:3056 phút, 30 giâymình đã nhấn mạnh là để bơ một cái token theo shift 68 thì nó có hai cái công
56:3756 phút, 37 giâyđoạn. Công đoạn đầu tiên đó là phải chi tiêu bỏ cái uteko trong hợp đồng store đi. Đấy, sau khi chi tiêu xong rồi thì
56:4756 phút, 47 giâycái refer token đấy nó vẫn tồn tại trên chuỗi. Chính vì thế mà chúng ta phải thêm một hành động là hành động hủy.
56:5756 phút, 57 giâyHủy nó tức là hủy nó đi, thực hiện giao dịch, bơn nó. Đấy, gồm hai công đoạn.
57:0357 phút, 3 giâyCông đoạn đầu tiên là chi tiêu. Công đoạn thứ hai là công đoạn hủy. Đấy.
57:1057 phút, 10 giâyVào bước build trang section này. Rồi tạo builder. Ứ.
57:1657 phút, 16 giâyTiếp theo là ừ add input address để thực hiện có uto
57:2457 phút, 24 giâytrả phí này. Tiếp theo là add script input. Tức là lấy UTO từ địa chỉ hợp
57:3257 phút, 32 giâyđồng ra để chi tiêu này. Đấy. Tiếp theo đấy là add input
57:4157 phút, 41 giâycái uto chứa user token để thực hiện lấy ra cái token để thực hiện hủy và tiếp
57:4957 phút, 49 giâytheo đấy là thực hiện gọi là đính kèm cái thông tin của cái tài sản multiass
57:5757 phút, 57 giâyaccess vào cái giao dịch. min đấy các mỗi giao dịch min là số lượng ở đây là
58:0358 phút, 3 giây-1 thôi. Và cuối cùng là đính thêm cái mining script giống như lúc chúng ta min
58:1058 phút, 10 giâynày. Đấy thêm cái redeem.
58:1758 phút, 17 giâyOk. Tiếp theo đấy là khớp chữ ký và ký giao dịch.
58:2558 phút, 25 giâyVà cuối cùng là submit giao dịch.
58:3358 phút, 33 giâyĐấy, submit xong thì trả về thông tin.
58:4258 phút, 42 giâyRồi bây giờ mình sẽ nhắc lại một số những điểm cốt lõi trong cái hàm B Shift 68
58:5258 phút, 52 giâytoken này. Thì về cái khởi tạo giao dịch khởi tạo token name, access name ấy nó
58:5958 phút, 59 giâyvẫn giống như các cái quy trình khởi tạo trong những hàm min token trước đó ấy. Đấy nó chỉ khác đó là
59:0859 phút, 8 giâykhi chúng ta bơ một cái token theo chuẩn shift 68
59:1559 phút, 15 giâynó sẽ có hai hành động. Hành động thứ nhất là hành động chúng ta phải spend
59:2259 phút, 22 giâytức là chi tiêu bỏ cái UTO đang được chứa trong cái hợp đồng store này đi.
59:2959 phút, 29 giâyCái hình hành động thứ hai đó là phải hủy bỏ cái reference token và cái
59:3859 phút, 38 giâyuser token này đi. Đấy. Ok.
59:4459 phút, 44 giâyRồi bước tiếp theo thì chúng ta cũng có thêm một cái hàm bổ sung để list token
59:5259 phút, 52 giâytoken khi cân đấy khi cần thiết đấy thì
59:5859 phút, 58 giâychúng ta sẽ định nghĩa hàm này hàm list token này thì nó sẽ nhận vào
1:00:061 giờ, 6 giâymột vài thông tin như là context này store này.
1:00:131 giờ, 13 giâyvà user address để thực hiện list các cái token theo chuẩn shift 68 ừ tương ứng với địa
1:00:241 giờ, 24 giâychỉ của người và địa chỉ của hợp đồng đã được triển khai đầu tiên thì chúng ta sẽ định
1:00:311 giờ, 31 giâydạng các cái benefit cho các cái reference token và user token.
1:00:381 giờ, 38 giâyĐấy, tiếp theo chúng ta sẽ khai vào một cái user token list này và holding token name này.
1:00:491 giờ, 49 giâyĐấy, bước một chúng ta sẽ lấy các danh sách trong ví, danh sách token trong ví của user. Đấy.
1:01:051 giờ, 1 phút, 5 giâyRồi for này vẫn là những cái bước khá là quen thuộc.
1:01:131 giờ, 1 phút, 13 giâyDuyệt multi này đấy. Duyệt từng cái item một đấy.
1:01:281 giờ, 1 phút, 28 giâyDyệt từng item một này. Nếu như số lượng lớn 0.
1:01:351 giờ, 1 phút, 35 giâyVà cái asset name của cái user token là cái user grafit thì chúng ta sẽ lấy phần tên sau của nó.
1:01:471 giờ, 1 phút, 47 giâyNếu cái số lượng của cái asset đấy lớn hơn và cái tên bắt đầu bằng user profit này
1:01:561 giờ, 1 phút, 56 giâynày. Đấy thì chúng ta sẽ lấy phần tên sau profit.
1:02:021 giờ, 2 phút, 2 giâyĐấy. B names đấy. Phần tên sau.
1:02:111 giờ, 2 phút, 11 giâyRồi và thực hiện thêm cái B name này vào đấy.
1:02:231 giờ, 2 phút, 23 giâyVà in ra.
1:02:331 giờ, 2 phút, 33 giâyCái này không không cần đi bớ đâu. Cứ hiển thị ra cho rồi. Tiếp theo đấy là tìm refer token
1:02:431 giờ, 2 phút, 43 giâytương ứng trong store cũng duyệt các UO của store đấy. for
1:02:511 giờ, 2 phút, 51 giâyđấy cũng fory id duyệt các cái multi access trong cái
1:02:591 giờ, 2 phút, 59 giâyuto đấy duyệt trong multip access
1:03:051 giờ, 3 phút, 5 giâyđấy nếu access nameb chref grafit này đấy
1:03:131 giờ, 3 phút, 13 giâythì lấy phần sau đấy Mà nếu
1:03:201 giờ, 3 phút, 20 giâyBay name này mà có trong cái reference token
1:03:291 giờ, 3 phút, 29 giâythì chúng ta sẽ thực hiện lấy ra một số thông tin giải mã datum
1:03:381 giờ, 3 phút, 38 giâytrai roda đaat
1:03:471 giờ, 3 phút, 47 giâybằng chấm atum này if
1:04:021 giờ, 4 phút, 2 giâyđấy ra datum thuộc kiểu thì chúng ta sẽ chuyển về dạng
1:04:091 giờ, 4 phút, 9 giâyshift 68 nếu không thì nguyên
1:04:211 giờ, 4 phút, 21 giâyVà cuối cùng là trả về thông tin metadata deck này.
1:04:361 giờ, 4 phút, 36 giâyĐấy duyệt tất cả các trường trong metata. Metadata nếu như metad đích đấy
1:04:471 giờ, 4 phút, 47 giâycây bằng đấy.
1:04:571 giờ, 4 phút, 57 giâyValue cũng vậy rồi.
1:05:041 giờ, 5 phút, 4 giâyMetadata ừ gãn metadata
1:05:121 giờ, 5 phút, 12 giâykiểu dictionary bằng một giá trị và user token listen
1:05:291 giờ, 5 phút, 29 giâyAspend token name
1:05:431 giờ, 5 phút, 43 giâybase.name.dcode đấy. Tiếp theo là Polos ID đấy.
1:05:551 giờ, 5 phút, 55 giâyChblot.Hh. Tiếp theo đó là metadata.
1:06:081 giờ, 6 phút, 8 giâyTiếp theo đó là version. Th lấy từ datum. Version.
1:06:131 giờ, 6 phút, 13 giâyĐấy. Và cuối cùng là hết rồi.
1:06:201 giờ, 6 phút, 20 giâyOk. Và except thật trai đây.
1:06:341 giờ, 6 phút, 34 giâyVà cuối cùng là return user token list.
1:06:451 giờ, 6 phút, 45 giâyOk,
1:06:491 giờ, 6 phút, 49 giâycuối cùng thì viết thêm một số cái hàm test trong đây.
1:06:571 giờ, 6 phút, 57 giâyRồi ok. Như vậy là chúng ta đã xong ờ một số các hàm khá là quan trọng trong
1:07:071 giờ, 7 phút, 7 giâycái quá trình chúng ta thực hiện code off trên.
1:07:161 giờ, 7 phút, 16 giâyBước tiếp theo thì chúng ta sẽ viết các script đấy. Gọi đến các cái hàm này.
1:07:261 giờ, 7 phút, 26 giâyNhưng mà đầu tiên thì chúng ta phải init init trước khởi tạo trước.
1:07:321 giờ, 7 phút, 32 giâyỪ. viết viết cái hàm tổng hợp lại
1:07:401 giờ, 7 phút, 40 giâyrồi nó sẽ lấy ra từ các hàm trong
1:07:491 giờ, 7 phút, 49 giâytrong hai cái file chúng ta vừa code ấy. Đấy. Import này.
1:07:571 giờ, 7 phút, 57 giâyFrom shift đây. Rồi. Ồ,
1:08:061 giờ, 8 phút, 6 giâycái này như là khai báo ấy cũng khá quan trọng. Rồi ok.
1:08:141 giờ, 8 phút, 14 giâyTiếp theo thì chúng ta sẽ tạo ờ tạo một vài cái file
1:08:211 giờ, 8 phút, 21 giâyscript để chạy thử. Đấy, file đầu tiên đó là file min. Ừ.
1:08:291 giờ, 8 phút, 29 giâyDemo min đi.
1:08:321 giờ, 8 phút, 32 giâyDemo min. file đấy.
1:08:491 giờ, 8 phút, 49 giâyTrong file này chúng ta sẽ thực hiện gọi là min ờ
1:08:591 giờ, 8 phút, 59 giâyđấy. Đầu tiên vẫn là import cái thư viện. Rồi tiếp theo là import do ENV này. Đấy.
1:09:091 giờ, 9 phút, 9 giâyTiếp theo là ờ import một số cái hàm dùng cho min.
1:09:161 giờ, 9 phút, 16 giâyĐấy. Và đầu tiên vẫn là load. ENV. Tiếp theo là khai báo hàm main.
1:09:261 giờ, 9 phút, 26 giâyMa main nà in. một số các cái văn bản trình bày.
1:09:331 giờ, 9 phút, 33 giâyĐấy, tiếp theo là load Walid.
1:09:401 giờ, 9 phút, 40 giâyĐầu tiên là Lad Wall ừ load biến SH face này. Đấy, nếu không có thì th in thông tin ra.
1:09:501 giờ, 9 phút, 50 giâyĐấy. Tiếp theo thì chúng ta sẽ lấy các thông tin của Wallist bằng cái hàm get
1:09:571 giờ, 9 phút, 57 giâywallet from sheet ấy. Đấy, lấy được thì print ra. Ok.
1:10:041 giờ, 10 phút, 4 giâyTiếp theo thì chúng ta sẽ phải tạo context này.
1:10:111 giờ, 10 phút, 11 giâyRồi tiếp theo thì chúng ta sẽ qu một số thông tin của ví để ví dụ
1:10:201 giờ, 10 phút, 20 giâycheck số dư chẳng hạn. Đấy.
1:10:271 giờ, 10 phút, 27 giâyĐấy. Nếu như tiền nhỏ hơn 10 thì print là không đủ.
1:10:381 giờ, 10 phút, 38 giâyRồi tiếp theo thì chúng ta sẽ có một cái biến là biến time stam
1:10:471 giờ, 10 phút, 47 giâyđể mỗi một lần min thì chúng ta sẽ đính kèm cái time stame đấy vào. Đấy. Đấy.
1:10:561 giờ, 10 phút, 56 giâyTên token này đếnh kèm t này đỡ phải thêm một cái trường gọi là trường description.
1:11:041 giờ, 11 phút, 4 giâyĐấy,
1:11:081 giờ, 11 phút, 8 giâydescription. Sau đó thì chúng ta sẽ in cái thông tin ra.
1:11:141 giờ, 11 phút, 14 giâyĐấy. Rồi đây bắt đầu vào bước gọi hàm min này. Đấy. Đây kiểu như là setup
1:11:211 giờ, 11 phút, 21 giâythông tin để min thôi. Đấy. Gọi hàm min rest run min shift 68 token này.
1:11:351 giờ, 11 phút, 35 giâyGồm có các cái tham số như là context, payment s key đấy.
1:11:421 giờ, 11 phút, 42 giâyPayment Sky, payment V key này, address này,
1:11:481 giờ, 11 phút, 48 giâytoken name và description. Đấy, tiếp theo là in
1:11:541 giờ, 11 phút, 54 giâythêm một số thông tin giao dịch thành công hay không. Đấy.
1:12:011 giờ, 12 phút, 1 giâyRồi là thêm một cái công đoạn đấy là lưu lưu
1:12:091 giờ, 12 phút, 9 giâycái thông tin của token vào đấy.
1:12:141 giờ, 12 phút, 14 giâyMở cái một lưu vào file chơ. Đấy. Mở cái file chas ra.
1:12:231 giờ, 12 phút, 23 giâyChayson.
1:12:321 giờ, 12 phút, 32 giâyĐấy, trước khi đi vào bước tiếp theo, mình muốn bổ sung
1:12:381 giờ, 12 phút, 38 giâythêm một câu lệnh đó là thêm một cái a đường dẫn của dự án.
1:12:481 giờ, 12 phút, 48 giâyĐây tức là thiết lập ừ cái project rot của cái dự án này chính là cái thư mục hiện tại. Đấy.
1:13:031 giờ, 13 phút, 3 giâyRồi tiếp theo chúng ta sẽ exception đúng không nhở?
1:13:151 giờ, 13 phút, 15 giâyTab à nào? Ok. Và tiếp theo là kết thúc hàm.
1:13:251 giờ, 13 phút, 25 giâyRồi chúng ta đã viết xong cái script để demo. Tí nữa chúng ta sẽ chạy một thể.
1:13:351 giờ, 13 phút, 35 giâyTiếp theo thì đó là viết thêm một cái script khác là demo update.
1:13:441 giờ, 13 phút, 44 giâyĐấy.
1:13:551 giờ, 13 phút, 55 giâyTrong file này mục đích của nó cũng
1:14:041 giờ, 14 phút, 4 giâylà để update cái trường metadata. Đấy cũng import các thư viện cũng phải add project rot đấy.
1:14:141 giờ, 14 phút, 14 giâyCũng phải import các cái hàm phục vụ cho update. Đấy cũng phải load đv này đấy.
1:14:231 giờ, 14 phút, 23 giâyKhai báo hàm main và in ra.
1:14:331 giờ, 14 phút, 33 giâyTiếp theo đó là l wall. Tương tự như min thôi.
1:14:451 giờ, 14 phút, 45 giâyRồi tiếp theo thì cũng lấy các cái a script ừ à lấy các cái thông tin liên quan đến ví.
1:15:031 giờ, 15 phút, 3 giâyRồi tiếp theo đó là lấy một số cái script cần thiết này. Lấy dùng hàm get script ấy không có tham số gì cũng được.
1:15:141 giờ, 15 phút, 14 giâyĐấy,
1:15:161 giờ, 15 phút, 16 giâyin ra cái địa chỉ ví và địa chỉ của store. Đấy,
1:15:251 giờ, 15 phút, 25 giâythì chúng ta ở đây chúng ta cần một cái id bằng
1:15:341 giờ, 15 phút, 34 giâycái này thì chúng ta sẽ thay thế sau đấy.
1:15:381 giờ, 15 phút, 38 giâytế sau khi có token NFT min nhá.
1:15:561 giờ, 15 phút, 56 giâyRồi đấy. Print cái poosin này ra. Đấy cũng phải khởi tạo context.
1:16:061 giờ, 16 phút, 6 giâyĐấy thì trong cái update này nó sẽ có thêm một cái công đoạn đó là chúng ta sẽ
1:16:141 giờ, 16 phút, 14 giâylead các cái token mà chúng ta đang sở hữu theo chuẩn ship 68 ấy. Đấy
1:16:281 giờ, 16 phút, 28 giâyđây token mang list o token đấy. Nếu như không tìm thấy thì thông báo,
1:16:381 giờ, 16 phút, 38 giâycòn nếu như tìm thấy rồi tiếp theo đấy là duyệt với cái danh sách token đấy nhá.
1:16:521 giờ, 16 phút, 52 giâyin ra đấy. Thông tin như là token name nà, version này,
1:17:001 giờ, 17 phútmetadata. Đấy,
1:17:041 giờ, 17 phút, 4 giâytiếp theo chúng ta sẽ gọi là khi chúng ta thực hiện ừ update thì chúng ta sẽ tạo ra một cái select ấy. Ừ. Đấy,
1:17:161 giờ, 17 phút, 16 giâymình xin nhắc lại một lần nữa nhé. Vì là trong cái ví dụ của chúng ta hợp đồng thông minh không có các parameter nên
1:17:251 giờ, 17 phút, 25 giâypoloid được tạo ra từ cáiinting script ấy nó sẽ là một cái poloid cố định. Đấy nên khi
1:17:341 giờ, 17 phút, 34 giâychúng ta min thì nó sẽ min nhiều cái token với po ID giống nhau nhưng cái
1:17:431 giờ, 17 phút, 43 giâytoken name là khác nhau. Đấy nên khi chúng ta sẽ quét các cái
1:17:511 giờ, 17 phút, 51 giâyờ token trong ví ấ chúng ta sẽ có nhiều cái token theo chuẩn shift 68.
1:17:571 giờ, 17 phút, 57 giâyĐấy thì khi chúng ta quét ra chúng ta sẽ lựa chọn một trong số các cái token
1:18:041 giờ, 18 phút, 4 giâychúng ta quét để chúng ta update. Đấy nếu như token số lượng token bằng 1 thì tự chọn luôn.
1:18:161 giờ, 18 phút, 16 giâyCòn nếu như số lượng token lớn hơn 1 đấy thì chúng ta sẽ dùng một cái hàm nhập
1:18:271 giờ, 18 phút, 27 giâychoice input chọn token này. Đấy choice xử lý
1:18:371 giờ, 18 phút, 37 giâyđấy và except rồi đấy. Chúng ta đã chọn xong token rồi
1:18:461 giờ, 18 phút, 46 giâyđúng không? Đây token name. Đấy.
1:18:511 giờ, 18 phút, 51 giâyLấy cái token name ra và thêm một cái a trường metadata muốn cập nhật ở cụ thể ở
1:19:011 giờ, 19 phút, 1 giâyđây là new description. Đấy thì chúng ta sẽ đính cho nó một cái file, một cái thời gian đấy. Thay cho nó cái
1:19:091 giờ, 19 phút, 9 giâydescription đây này. Thành cái update metadata. Cái cũ là
1:19:171 giờ, 19 phút, 17 giâyđây cái cũ đâu nhở? Demo shift 68 này này. Đấy cái mới là update. Đấy.
1:19:251 giờ, 19 phút, 25 giâyRồi tiếp theo là in thông tin ra.
1:19:331 giờ, 19 phút, 33 giâyin rồi và tiếp theo là bước gọi đến hàm update metadata này truyền các cái thông
1:19:401 giờ, 19 phút, 40 giâysố vào đấy
1:19:481 giờ, 19 phút, 48 giâyrồi truyền thông số vào nhá context này key v key này đấy on address này.
1:20:031 giờ, 20 phút, 3 giâyRồi tiếp theo là in các cái thông tin ra và except.
1:20:151 giờ, 20 phút, 15 giâyRồi cuối cùng là Ok.
1:20:221 giờ, 20 phút, 22 giâyNhư vậy thì trong cái script này mình chỉ có một cái điểm lưu ý đó là chúng ta sẽ query trong ví của user xem là user
1:20:311 giờ, 20 phút, 31 giâymuốn thay đổi metadata của cái token nào. Đấy, chỉ có điểm mới như vậy thôi.
1:20:391 giờ, 20 phút, 39 giâyĐấy, sau khi chúng ta lựa chọn xong cái token muốn thay đổi ấy thì chúng ta sẽ truyền cái new description này vào cái hàm update metadata. Đấy.
1:20:521 giờ, 20 phút, 52 giâyRồi tiếp theo thì chúng ta sẽ thực hiện viết hàm demob.
1:21:041 giờ, 21 phút, 4 giâyĐấy.
1:21:191 giờ, 21 phút, 19 giâyĐầu tiên vẫn phải import cái thư viện,
1:21:231 giờ, 21 phút, 23 giâyvẫn phải định nghĩa root của project này. Post các cái hàm để bơ này. Đấy. Load.netv
1:21:331 giờ, 21 phút, 33 giâynào khá là giống các bước cũ nên mình sẽ làm nhanh luôn nhá.
1:21:381 giờ, 21 phút, 38 giâyĐịnh nghĩa main này cũng in ra này. Đấy không khác gì min với update. Đây tiếp
1:21:461 giờ, 21 phút, 46 giâytheo là load shit face này. Đấy lấy các cái trường liên quan đến ví này.
1:21:541 giờ, 21 phút, 54 giâyRồi tiếp theo là lấy các cái script để thực hiện có cái địa chỉ như để list token tiếp theo là in ra. Đấy,
1:22:061 giờ, 22 phút, 6 giâytrong bước này cũng phải chuẩn bị một cái po ID của cái token cần
1:22:151 giờ, 22 phút, 15 giâytoken đã minấy sau khi chúng ta min xong thì chúng ta sẽ thực hiện thao tác với cái poy id hoặc token đấy. Rồi khởi tạo
1:22:241 giờ, 22 phút, 24 giâycontext này. Đấy, vẫn là lead token này.
1:22:311 giờ, 22 phút, 31 giâyRồi, vẫn là nếu không tồn tại token thì thông báo ra.
1:22:401 giờ, 22 phút, 40 giâyVà nếu như tìm thấy thì hiển thị.
1:22:501 giờ, 22 phút, 50 giâyRồi tiếp theo là chọn lựa chọn cái token bn này giống hệt như update thôi. Đấy nếu
1:22:591 giờ, 22 phút, 59 giâynhư land token bằng 1 thì select luôn cái token ở vị trí là 0 luôn.
1:23:081 giờ, 23 phút, 8 giâyRồi cho thêm một cái trường nhập confirm vào
1:23:151 giờ, 23 phút, 15 giâycó muốn bơ không ấy. Đấy
1:23:211 giờ, 23 phút, 21 giâyxử lý thêm một cái đã hủy
1:23:321 giờ, 23 phút, 32 giâyrồi. Nếu như có nhiều nhiều token thì tiếp tục gán cái select à tìm cho một
1:23:411 giờ, 23 phút, 41 giâycái input để lựa chọn này. Đấy, xong lại tiếp tục lựa chọn try này. Lại except nào.
1:23:511 giờ, 23 phút, 51 giâyRồi gán cái token name.
1:23:571 giờ, 23 phút, 57 giâyTiếp theo là in ra và cuối cùng là thực thi bơ gọi đến hàm bn này.
1:24:091 giờ, 24 phút, 9 giâyIsan này.
1:24:211 giờ, 24 phút, 21 giâyVà cuối cùng là in ra thông tin giao dịch. Đấy. Except.
1:24:341 giờ, 24 phút, 34 giâyRồi như vậy là chúng ta đã viết xong hàm
1:24:421 giờ, 24 phút, 42 giâydemo rồi. Chúng ta đã viết xong ba cái script.

========================Phần 2 video 2 nối tiếp video 1 demo:link : https://www.youtube.com/watch?v=wFkFvBGOCH4 ==================
0:033 giâyOk,
0:044 giâytiếp theo thì chúng ta sẽ thực hiện nhảy vào chạy thử các cái script này xem chúng ta đã thực hiện
0:1313 giâythành công các tính năng như min update bớn hay chưa. thì chúng ta sẽ thực hiện
0:1919 giâyừ min trước thì chúng ta sẽ gõ lệnh python
0:2828 giâydemo min.byd đấy.
0:4646 giâyOk.
0:4848 giâyTrang section đã thực hiện thành công rồi nhá. Đây chính là bolid này.
0:5959 giâyĐấy,
1:011 phút, 1 giâyở đây thì chúng ta đã lưu lưu cái thông tin token sau khi min vào một cái file chas để sau này chúng ta sử dụng lại.
1:111 phút, 11 giâyMọi người có thể thấy này, F ID này.
1:141 phút, 14 giâyĐấy, tiếp theo thì chúng ta sẽ thực hiện tra cứu trên Cano Scan xem
1:231 phút, 23 giâyđã verify, submit lên trên hay chưa. Vẫn chưa mọi người sẽ đợi một lúc. Đấy,
1:301 phút, 30 giâytrong quá trình đó thì chúng ta sẽ tạm thời quay lại cái file update để điền lại cái file ID. À điền lại cái thông tin của Poy ID.
1:401 phút, 40 giâyĐấy.
1:431 phút, 43 giâyRồi quay lại file bn để điền lại cái file điền lại cái thông tin của po ID.
1:521 phút, 52 giâyĐây Ctrl Save nào. Đấy description nhá.
2:032 phút, 3 giâyQuá trình này có thể hết một vài thời gian đấy. Ok, đã xong này.
2:112 phút, 11 giâyĐấy, giao dịch min này. Ừ,
2:172 phút, 17 giâythông tin là trang section này
2:252 phút, 25 giâyđâu nhở? Đây token min tạo ra hai token này. Đấy chung voly id này
2:332 phút, 33 giâyđấy contract này. Chúng ta sẽ xem xem cái
2:422 phút, 42 giâycontract này nó có cái datum như thế nào.
2:512 phút, 51 giâyĐấy mọi người có thấy không?
2:552 phút, 55 giâyKey là description còn value là
3:013 phút, 1 giâydemo cp 68 này. Thời gian của nó là đuôi là 5185. Chúng ta thử quay lại xem nào.
3:103 phút, 10 giâyThời gian của nó là 5185.
3:143 phút, 14 giâyOk. Như vậy đã đúng rồi. Tiếp theo thì chúng ta sẽ kiểm tra trên hợp đồng thông minh xem nào.
3:223 phút, 22 giâyConc này. Contct đấy. Đấy.
3:313 phút, 31 giâyĐây 5185 này được tạo 3 phút trước này. Ok chưa?
3:393 phút, 39 giâyĐấy.
3:473 phút, 47 giâyĐấy. Đây chính là cái hợp đồng thông minh store lưu cái ref token đấy. Đấy.
3:543 phút, 54 giâyCòn cái địa chỉ của chúng ta, chúng ta cũng cần phải xem địa chỉ của chúng ta có gì.
4:014 phút, 1 giâyWallet address này khá là nhiều đấy.
4:114 phút, 11 giâyĐuôi là 85 rồi chính là cái này đấy.
4:194 phút, 19 giâyMin trang session này 3 phút trước đấy. Ok chưa?
4:314 phút, 31 giâyỪ như vậy thì chúng ta đã thực hiện min thành công một cái chuẩn một cái cặp
4:404 phút, 40 giâychuẩn token shift ch 8 gồm hai cái token đó là một cái token là user
4:484 phút, 48 giâynằm trên ví của chúng ta, một cái token là refer token nằm trên hợp đồng thông minh mà metadata của nó là cái trường
4:574 phút, 57 giâydescription. Đấy, sau đây thì chúng ta sẽ thực hiện demo cái tính năng update bằng cách chạy cái script của cái file
5:075 phút, 7 giâydemo update.
5:175 phút, 17 giâyChúng ta sở hữu khá nhiều token đấy.
5:235 phút, 23 giâyNhưng mà cái token mà chúng ta sở hữu với cái
5:285 phút, 28 giâypoloid này thì chỉ có cái demon cái này thôi. Đấy nên nó sẽ tự động cập
5:375 phút, 37 giâynhật thành cái trường là update metadata
5:425 phút, 42 giâyvới thời gian là 5 4 64. Đấy, chúng ta sẽ đợi một lúc và tra cứu trên cái
5:525 phút, 52 giâythông tin của trang session của Cano Scan em có được hay chưa. Đấy,
6:016 phút, 1 giâymetadata cũ là 5185 này. Đấy, new description mới là một cái trường là update metadata.
6:116 phút, 11 giâyĐấy, trong đây mình cũng sở hữu khá nhiều cái token nhưng mà chỉ có một cái token là có poly
6:206 phút, 20 giâyID ấy thôi. Poo ID là 1 9127. Đấy, chúng
6:266 phút, 26 giâyta sẽ đợi một chút để kiểm tra on trên xem nào.
6:346 phút, 34 giâyOk,
6:366 phút, 36 giâyđây nó tự chi tiêu này và lại gửi lại hợp đồng.
6:416 phút, 41 giâyĐấy, tiếp tục xem cái du tệ nguồn này này.
6:536 phút, 53 giâyInput output là cái này đây. Update metadata
7:027 phút, 2 giâyđấy. Đã thay đổi rồi nhá. Lúc nãy là ờ demo shift 68 thời gian là có đuôi là 5185. Bây giờ là 5464.
7:117 phút, 11 giâyOk, như vậy thì chúng ta đã demo update rồi. Tiếp theo chúng ta sẽ thực hiện demo tính năng bơn.
7:317 phút, 31 giâyChắc là nó cũng sẽ đấy. Nó cũng chọn luôn cái NFT vừa rồi này.
7:417 phút, 41 giâyĐấy. Zác nhận.
7:527 phút, 52 giâyThành công. Đợi một chút nhé. Đợi một chút.
8:538 phút, 53 giâyCái này nó sẽ mất khá là lâu đấy. tầm 20 đến 30 giây
9:029 phút, 2 giâythì cái on trên nó ờ submit và verify thành công.
9:129 phút, 12 giâyOk, đã xong rồi. Đây thông tin giao dịch nó đã biến thành -1 rồi này.
9:199 phút, 19 giâyĐấy, token min đã biến thành -1 này. Đấy,
9:289 phút, 28 giâybây giờ chúng ta sẽ kiểm tra lại cái địa chỉ xem nào. Xem có còn cái token nữa nữa không.
9:379 phút, 37 giâyLúc nãy là 12 token đúng không? đuôi là 85 giờ lại không còn nữa rồi đấy. Kiểm tra lại cái địa chỉ store xem nào.
9:509 phút, 50 giâyCái này thì lại không có cái địa chỉ store rồi. Không thì lấy lại cái địa chỉ này cũng được.
9:589 phút, 58 giâyĐấy, đây chính là địa chỉ store này. Đấy. Đấy, 5185 cũng đã trừ đi rồi.
10:0810 phút, 8 giâyĐây, không còn cái 515 nữa.
10:1110 phút, 11 giâyOk, như vậy là trong phần demo phần code off trên này mình cũng đã hướng dẫn các
10:2010 phút, 20 giâybạn nó khá là chi tiết về cái quá trình mình thực hiện sử dụng thư viện BY
10:2810 phút, 28 giâyCadano để xây dựng code off chain tương tác với hợp đồng thông minh cho các tính
10:3510 phút, 35 giâynăng như là min này, update này, BN này với chuẩn shift 68. bài học mà chúng ta
10:4210 phút, 42 giâychúng mình đang giảng dạy cho các bạn thì mình mong rằng những hướng dẫn chi tiết ừ của mình sẽ giúp cho các bạn có
10:5310 phút, 53 giâythể dễ dàng hiểu được cái ví dụ thực tế trong việc triển khai hợp đồng thông minh ship 68 và ứng dụng thư viện B
11:0211 phút, 2 giâyCadano để thực hiện tương tác với hợp đồng thông minh Thì
11:1111 phút, 11 giâytrong bài học tiếp theo mình sẽ thực hiện ờ một cái video cuối đó là xây dựng một
11:1911 phút, 19 giâycái full app hoàn chỉnh bao gồm cả font end và back end để minh họa quy trình ờ
11:3011 phút, 30 giâytriển khai các cái tính năng như là pin này ờ tính năng min update và bn ờ cái
11:3811 phút, 38 giâyshift 68 này trên giao diện mọi người có thể thực hiện trực tiếp trên giao diện luôn mà không phải môi trường dòng lệnh
11:4611 phút, 46 giâynhư bài học ngày hôm nay thì tất cả các tài liệu liên quan đến code hoặc là
11:5311 phút, 53 giâyhướng dẫn mình sẽ thực hiện tổng kết lại và tổng hợp lại tại một cái hit hub của
12:0112 phút, 1 giâyteam và mình sẽ public cho mọi người sau khóa học. Mình mong rằng những cái video hướng dẫn, những cái chia sẻ của nhóm
12:1112 phút, 11 giâymình sẽ giúp cho mọi người có thêm kiến thức cũng như là hiểu biết để mọi người
12:1812 phút, 18 giâychuẩn bị hành trang vào các dự án thực tế. Mình xin phép kết thúc video tại đây và mình xin cảm ơn mọi người.
