# Script bam sat video - Off-chain CIP-68

## Part 1
Link: https://www.youtube.com/watch?v=TwjW-AfIVts

Xin chào mọi người. Chào mừng mọi người đã đến với video tiếp theo trong khóa học lập trình Cardano của chúng tôi. Ờ
trong video này chúng ta sẽ tiếp tục quá trình triển khai ví dụ CIP-68. Ờ sau khi chúng ta đã triển khai thành
hợp đồng thông minh lên mạng ờ Preprod Testnet. Đấy thì trong bài học này thì chúng ta sẽ thực hiện code off
để tương tác với các tính năng của hợp đồng thông minh bao gồm mint token,
update metadata va burn token
khi chúng ta đã triển khai hợp đồng thông minh ở giai đoạn trước rồi đấy thì chúng ta sẽ nhảy
code off-chain luôn. Mình sẽ hướng dẫn các bạn trực tiếp từng bước một. Thì
tiên vẫn như các bước chuẩn bị trước đó thì chúng ta cũng phải set up môi trường. Đầu tiên chúng ta khởi tạo setup
trường ảo thì chúng ta sẽ vào cái thư mục CIP-68 trước.
Đây set up môi trường chúng ta sẽ đợi một lúc.
Ok.
Sau khi chúng ta đã setup môi trường ảo xong rồi, chúng ta sẽ thực hiện kích hoạt môi trường ảo. Thì đây là một câu
trên để kích hoạt môi trường ảo trên Windows.
Rồi sau khi kích hoạt xong rồi thì chúng ta sẽ thực hiện cài đặt các thư viện liên quan đến PyCardano hay là những thư viện
thực hiện để xây dựng các giao dịch liên quan đến Blockfrost đấy thì mọi người sẽ thêm cho mình một file là requirements.txt.
Trong đây sẽ ừ đưa ra những cái phiên bản về các thư viện mà chúng ta sẽ sử
Thì trong bài học code off-chain này chúng ta sẽ thực hiện cài đặt các cái thư viện như Cardano,
Blockfrost, Python này, Python.net ENV này và một số các cái thư viện khác
Fast API để sử xây dựng backend cho bài học tiếp theo và Unicor hoặc là
BATC. Đấy thì chúng ta sẽ thực hiện chúng ta lưu vào lưu vào và thoát bỏ.
Chúng ta sẽ thực hiện câu lệnh pip install -r requirements.txt để thực hiện chạy
chúng ta không cần
khong satisfy duoc version lon hon 11
phiên bản sớm hơn xem nào. Không có à?
Không có thì chúng ta không cần ghi phiên bản đâu. Nó sẽ chủ động install phiên bản lớn nhất cho chúng ta đấy. Mới nhất cho chúng ta.
Đợi cho quá trình install các thư viện trong quá trình này nhá.
Để cho nó tự chạy thì chúng ta sẽ tạo một cái file .env đấy, file đề lưu biến môi trường của chúng ta. Thì giống như
bài học trước đó thì mình vẫn dùng lại file .env của các bài học trước đó. Mọi người có thể xem nhé.
Ok.
Ok, đã cài đặt xong các thư viện. Tiếp theo thì chúng ta sẽ bắt đầu đi vào code. Thì đầu tiên thì chúng ta sẽ thực
tạo một file gọi là cip68_utils.py.
Đấy, file này nó sẽ mục đích là chúng ta sẽ khai báo các cái
khi tạo file đấy, chúng ta sẽ tạo một thư mục off-chain để lưu code off-chain của chúng ta. Đấy, tạo file Shift
để gọi là chúng ta sẽ khai báo các cái biến, các cái hàng số, các cái kiểu dữ
và các cái hàm cần thiết cho quá trình chúng ta ừ tích hợp thư điện. Đấy
chúng ta sẽ nhảy vào code luôn. Đấy thì mình sẽ có một chút chú thích về cái file này. Đấy chung
cấp các cái hàng function để thực hiện tương tác với CIP-68 hợp đồng thông minh. Đấy.
Tiếp theo thì chúng ta sẽ import một số các thư viện cần thiết ừ
gồm các cái thư viện như là xử lý chas này, OS nà, các cái thư viện liên quan đến
hay là thư viện liên quan đến của Python. Rồi tiếp theo là import PyCardano,
các cái thư viện. Ok. Tiếp theo chúng ta sẽ định nghĩa hai cái hàng số
cho cái reference token và user token.
Đấy, đây chính là hai cái hàng số mà chúng ta sẽ phải sử dụng sau này khá là nhiều để tạo ra các user token và reference token.
Ok.
Rồi sau khi chúng ta đã thêm hai cái prefix này vào rồi thì chúng ta sẽ định nghĩa các cái datum cũng như là redeemer cho CIP-68.
Đấy 68 thì đầu tiên chúng ta sẽ thực hiện định nghĩa redeem cho
đồng mining policy mà chúng ta đã code trước đó. Thì hợp đồng minting
redeem kiểu redeem cho minting ấy nó sẽ có hai vari hai vario gồm đó là
và burn token và nó có cái tham số đầu vào là token name. Đấy chúng ta cũng phải định nghĩa tương tự.
Đầu tiên đó là mint token đây.
Đấy, mình sẽ nói lại một chút cái a
cái ừ tham số đầu tiên là ừ con ST ID
này. Cái này chính là cái vị trí đầu tiên của cái hai cái variant của cái mint redeemer.
Khi chúng ta đưa ra conctor là 1 thì khi chúng ta chuyển cái data từ cái by
Cardano này này lên on thì nó sẽ hiểu là nó là cái tham số đầu tiên là cái varian vị trí
tiên đây này nó khớp với cái mint token. Đấy. Còn tiếp theo là cái a
nghĩa cái redeem thứ hai là cái bơ burn token
thì nó sẽ có cái trường contractor là 1 v token name. Đấy thì khi chúng ta
lên nó sẽ hiểu là contractor làng một thì nó sẽ đứng ở vị trí thứ hai trong cái mint redeem này. Kiểu dữ liệu
redeem này. Đấy tức là contractor là vị trí của hành động
định nghĩa trong kiểu dữ liệu trên hợp đồng thông minh. Mọi người có thể hiểu rõ ràng như thế. Tương
như vậy, ờ đối với store hợp đồng store ấy, tức là khai báo
cho cái store nó cũng có hai cái ờ redeem. Đầu tiên là update, thứ hai là
reference. Chúng ta cũng khai báo tương tự. Mọi người có hiểu ý tưởng không? Đấy.
Đấy. Update metadata này. Ép kiểu thành Plutus data. Đấy.
Trong đó thì cái thằng redeem này thì nó không có tham số là token name ở trên bởi vì là
chỉ cần vị trí thôi. Trong hợp đồng nó chỉ cần vị trí để khớp với redeem là
để hợp đồng nó biết redeem của nó là gì thôi.
Đấy, tương tự như vậy với burn reference cũng tương tự.
Tiếp theo đấy xong phần định nghĩa
định nghĩa tim.
Rồi tiếp theo thì chúng ta sẽ định nghĩa datum đấy.
Định nghĩa datum vẫn khai báo acc data class này ờ kiểu
và theo kiểu dữ liệu data. Đấy thì datum sẽ chứa các trường sau đây
y hệt như trên hợp đồng th thông thông minh chúng ta định nghĩa kiểu ấy. Đầu tiên vẫn cần có constructor ID đấy.
Vì là trong Datum của CIP-68 ấy nó sẽ không có varian. Varian của nó là bộ dữ
này là duy nhất rồi nên chúng ta cũng cần phải khai báo nó là bắt đầu từ vị trí không. Đấy. Tiếp theo đó là trường policy ID này.
Ứ tiếp theo đó là asset name. Thì asset name này nó chưa có prefix mọi người chú
Và tiếp theo là trường owner. Hon chính là public key để sau này chúng ta xác thực trừ ký ấy.
Tiếp theo là metadata kiểu dữ liệu là di đấy.
Dictionary với key và value và version. Ok, như vậy chúng ta đã định nghĩa xong kiểu 68 ở off-chain đấy.
Rồi tiếp theo thì chúng ta sẽ viết các cái hàm ờ
à lot script
file plutus.json.
Đấy. Ờ file này thì chúng ta sẽ phải định nghĩa có tham số đầu vào là
đường dẫn của file này và trả về kiểu một dictionary.
Đấy, chú thích một chút.
Đấy, tiếp theo chúng ta sẽ thực hiện mở cái file với đường dẫn
load vào đấy. Tiếp theo chúng ta sẽ khai báo script
một mảng rỗng xong duyệt qua ờ các validator trong file ờ với cái title
cái key là validator đấy.
Đấy,
ra title của cái validator. Xong lấy ra script.
Đấy, xong trả về script.
Cái này đây đúng không? Ok,
script xong rồi nhá. Tiếp theo chúng ta sẽ thực hiện load minting.
Lad minting poly script này từ.
Đấy chúng ta sẽ khai báo thằng này nó sẽ là một hàm nhận vào đường dẫn và trả về PlutusV3Script.
Ừ, vì là đây là một ví dụ ờ gọi là giúp cho mọi người hiểu về
lý ờ xây dựng và triển khai chuẩn CIP-68 trong thực tế. Chính vì thế mà
đồng nó sẽ đơn giản, nó sẽ không có các parameter nên nó sẽ tạo ra policy ID cố định. Đấy,
ta sẽ lấy ra script này. Đấy, dùng cái hàm load
ở trên ấy. Đấy, xong lấy ra cái
tin của cái script đấy. Thông tin của cái hàm script mint ấy. Đấy.
hiện trả về kiểu P3.
Ok chưa? Rồi tiếp theo thì chúng ta tương tự như vậy chúng ta cũng sẽ phải load cái script của cái hợp đồng store đúng không?
Đấy,
đấy. Nó cũng trả về Plutus V3 script này.
Rồi tiếp theo cũng tương tự như vậy, nó chỉ thay cái ờ title thôi, thay cái key là CIP-68
Chấm span. Lấy đúng cái hàm spend trong
gì nhở? Đây lấy đúng cái hàm này trong hợp đồng thông minh. Ừ được
sang file. sơ đấy. Tiếp theo thì chúng ta sẽ phải viết một cái hàm gọi là hàm tạo ờ CIP-68 asset name. Đấy,
name.
Ừ, tức là gắn thêm cái prefix cho nó này. Đấy, mình gọi là vừa code vừa có
một chút. Ví dụ đầu tiên đó là chúng ta sẽ
phải convert cái ching nếu như cái token name nó đang là ing kiểu xem là
tra kiểu không đấy nếu mà token name là exing thì chuyển thành
còn không thì giữ nguyên giữ nguyên ok rồi sau đó thì chúng ta sẽ
hiện nối thêm nối thêm đấy.
Tương tự với user username username cũng vậy.
User token đấy. Đấy và trả về hai thằng hai thằng đấy. Rồi tiếp theo thì chúng
sẽ tạo một cái hàm để xử lý metadata. Đấy
nó thành cái metadata trong datum. Đấy mình sẽ vừa viết.
Đấy thì metadata khi chúng ta xây dựng thì nó sẽ có
loại ấy. Thứ nhất là nó chỉ có trường description thôi. Trong bài này thì mình chỉ xây dựng met data là
Chỉ có trường description nó sẽ chuyển cái description từng
encode. Đấy, nếu như metadata nó mà có nhiều hơn các trường này thì mình sẽ
xử lý. Đấy, đầu tiên là for key và value trong metadata.
Đấy, nếu value mà là thì chúng ta sẽ phải chuyển nó sang
dạng bài và nếu không thì giữ nguyên.
Rồi sau khi xử lý xong metadata rồi tiếp theo thì chúng ta sẽ thực hiện ờ tạo
cho chuẩn CIP-68. Đấy thì chúng ta sẽ dựng hàm này đây với các tham số là bolos ID này,
name này,
key head là metadata có thể là các kiểu đơn dữ liệu hoặc là kiểu
đấy và versionấy trả về kiểu CIP-68 chúng ta đã khai báo trên đấy.
Tiếp theo là rồi đầu tiên chúng ta sẽ xử lý metadata.
Đấy xử lý metadata vì là polos idame đều là dạng buy hết
đúng không? Còn cái metadata thì nó vẫn là kiểu cây là ing đấy nên chúng ta
xử lý nếu như metadata mà là có một trường ấy,
một trường là ching thì chúng ta tạo metadata dùng cái hàm hàm tạo met convert cái
đấy sang kiểu metadata phù hợp với dữ liệu on-chain đấy. Nếu metadata mà là dictionary
chúng ta cũng cần phải xử lý đấy.
Metadata mà là dictionary thì convert.
Đầu tiên chúng ta sẽ khởi tạo một cái mảng một cái đối tượng metadata đích rỗng này. Đấy.
Đấy. Tiếp theo là duyệt qua từng key và value trong dictionary của metadata này
key value in metadata item đấy key.
Ừ.
nếu như gọi là key mà là ing ấy UTX F8 ấy thì chúng ta phải
lại. Đấy tương tự như vậy buy cũng thế value của dictionary cũng
đấy. Và sau đó thì metadata ờ gắn vào metadata
nếu không thì giữ nguyên
và cuối cùng là return.
Rồi ờ chúng ta sẽ viết thêm một vài hàm nữa
là hàm get policy id từ cái thằng script ấ đấy.
Follow Cid nó lấy vào là cái mint script và nó trả về kiểu dữ liệu script khác. Đấy.
Rồi ơ đây nhập.
Ok. Tiếp theo thì chúng ta sẽ viết thêm một cái hàm này lấy public key hash trong một số trường hợp cần thiết từ
đấy. Defile này exchanger
datum này. Tam số nhận vào là datum đấy.
Datum kiểu CIP-68 đã được convert về đấy. return datum.
Rồi tiếp theo cần một hàm để lấy address từ script của Plutus V3. Đấy, get
address nà. Hàm này là một cái hàm lấy vào tham số là Plutus script và network trả về kiểu address. Đấy.
Rồi đầu tiên đó làuscript.h này. Đấy.
Nhầm.
Xong. return address. Đấy.
Ok. Ờ như vậy thì chúng ta đã có một số hàm cần thiết rồi. Đấy.
Tiếp theo thì chúng ta sẽ sang ờ phần quan trọng hơn đó là viết các cái
để cái thực hiện view giao dịch.
Đấy chúng ta sẽ tắt cái này đi.
Ok. Tiếp theo đó là tạo một cái file ừ là file
cip68_operations.py để thực hiện build giao dịch.
CIP-68 operation
trong thư mục off CIP-68 operation này. Đấy, file này
thực hiện cung cấp các hàm để mint burn, token này.
Sử dụng by cano để xây dựng transaction. Đầu tiên vẫn là import thư viện
thiết. Đấy. Import các rồi.
Import các nào.
Đấy. Tiếp theo là import.netv net invv để load các biến môi trường. Đấy, tiếp
là import Blockfrost này, import PyCardano này. Đấy, tiếp theo là import một
cái hàm mà chúng ta đã xây dựng trước đó của cái file cip68_utils.py. Đấy.
Đấy. Ok. Bước đầu tiên thì chúng ta sẽ thực hiện load envir environment. Đấy,
tiếp theo thì chúng ta sẽ xây dựng một cái hàm hàm khởi tạo context trên.
Đấy,
nghĩa hàm này. Đấy, mình sẽ thêm một chú thích vào đây.
Rồi chúng ta sẽ lấy ra network từ cái biến môi trường. Đấy, thứ hai là lấy Blockfrost key.
Đấy. Ừ. Mình sẽ xem lại xem nào.
For project ID này đây mới đúng này. Đấy. Network. Network.
Ok. Rồi tiếp theo thì chúng ta sẽ map network tương ứng
và trả về cái context trên. Ok.
Như vậy chúng ta đã xong. Tiếp theo là hàm khôi phục các thông tin của ví.
Ừ trả về một double định nghĩa nó sẽ nhận vào cụm 24 ký tự và trả về top này. Đấy.
Rồi đầu tiên đó là khôi phục phí từ mnemonic.
Tiếp theo thì chúng ta sẽ lấy hai cái cặp key từ cái ờ dẫn suất. Đấy.
Tiếp theo thì chúng ta sẽ thực hiện gọi là tạo hai cái S key từ cái key trên.
Rồi tiếp theo thì chúng ta sẽ
thành public key public gọi là public key.
Ok.
Ừ. lấy cái network ra lấy lại cái network. Đấy.
Rồi tiếp theo thì chúng ta sẽ lấy địa chỉ chính
và trả về các cái giá trị cần thiết như là payment s key,
v key này, stake sake vred. Đấy.
Ok. Chúng ta sẽ có một cái hàm get network đi cho tiện.
Đấy,
nà lấy từ biến môi trường là return. Đấy. Ok. Rồi tiếp theo thì chúng
sẽ lấy các script trong bài này và lấy các clos.
Nói chung là lấy hết ấy.
Chúng ta sẽ khai báo ừ chung tích.
Rồi ờ đầu tiên đấy là hàm này nó nhận vào một cái tham số.
Tham số này là có thể non nhé. Đấy, nếu tham số là non
chúng ta sẽ thiết lập tham số của nó là cái đường dẫn vào cái thư mục Plot
Jason ấy. Đấy, if 68 này. 68 asset
gì à? Dynamic asset đúng rồi. Nếu như cái đường dẫn nó mà
có đường dẫn truyền vào thì chúng ta sẽ khai báo cái đường dẫn chính là cái đường dẫn của cái thư mục plutus.json
được biên dịch thành file plutus.json trong phần code hợp đồng thông minh trước đó. Đây này. Đấy.
Ok.
Rồi tiếp theo thì chúng ta sẽ lấy ra một là mint mint mining script đấy.
đến hàm load mint script mà chúng ta đã định nghĩa lúc này ấy bằng
theo thì chúng ta cũng tương tự chúng ta sẽ lấy thằng store script gọi đến hàm load store script đấy gọi là
theo tạo policy id từ mean script đấy tiếp theo là lấy network nào để lấy
theo là chúng ta sẽ lấy được cái địa chỉ từ cái store script P và network đấy. Và cuối cùng là trả về các giá trị chúng ta vừa lấy ra.
Ok.
Như vậy là chúng ta đã lấy xong ừ gọi là khởi tạo xong các cái hàm cần thiết rồi. Bây giờ thì chúng ta sẽ đi
những cái hàm chính. Đấy. Đầu tiên chúng ta sẽ thực hiện viết hàm mint.
Đầu tiên chúng ta sẽ định nghĩa hàm mint này.
Đấy các tham số truyền vào bao gồm là
con này đấy. Payment s key. Payment v key này.
Honner address này. name description này. Đấy, hàm này sẽ trả về
dictionary là kết quả giao dịch. Đấy,
sẽ vừa code vừa chú thích để sau này mọi người đọc lại tài liệu sẽ hiểu rõ hơn. Đấy, đầu tiên là khai báo
Lấy network ra. Tiếp theo là load script. Ừ.
Đấy. Tiếp theo là last script từ tất cả các cái script mà
ta đã lấy ra từ hàm get script lú trước đó ấy. Đấy. Tiếp theo là lấy honor public key.
Bước tiếp theo là chúng ta bắt đầu.
vào xây dựng giao dịch rồi thì đầu tiên thì nó sẽ là tạo asset name theo
CIP-68. Đấy, chúng ta sẽ lấy token name ra
encode nó lại thành dạng buy. Và tiếp theo là tạo
asset name và referent top asset name. Đấy từ cái hàm gọi là create shift 6 thằng asset name ấy.
Đấy.
Ok. Tiếp theo là tạo c ID kiểu by phải ép kiểu by nhá. Tiếp theo là tạo datum.
Tom bằng mở ngoặc.
Trong đây có các tham số như là policy ID này, asset name này,
Honner, public gh metadata. Metadata thì có trường description đấy.
Ok. Tiếp theo vẫn là quy trình quen thuộc giống như mint NFT bình thường thôi. Đầu tiên vẫn là tạo multi-asset asset cho mining.
Tạo multi-asset asset này. Đấy, trước khi tạo multi asset thì vẫn là khởi tạo asset.
Đấy, sau khởi tạo thì chúng ta sẽ thiết lập số lượng ứ thiết lập số lượng này.
Đấy, đầu tiên là chúng ta sẽ thiết lập số lượng cho reference token. Đấy, thứ hai là cho user token.
Đấy, asset của chúng ta sẽ ờ tiếp theo thì mint asset khởi tạo multi asset này
mint asset vào đấy mọi người nhớ chứ? Trong multi-asset sẽ có nhiều asset đấy.
Ok. Tiếp theo thì chúng ta sẽ thực hiện tạo redeem để thực hiện hành động là
gọi là hành động mint đấy. Redeem thì redeem cho hành động mint thì có là
là add kiểu kiểu là mint token như chúng ta đã khai
đấy. Đấy, mint token thì có tham số truyền vào là token name. Đấy, thì chúng ta sẽ gắn cái token name vào.
Rồi gắn token name. Rồi tiếp theo nhá, chúng trong tức là chúng ta đã khởi tạo multi
xong đúng không? Đấy, chúng ta sẽ đính cái multi asset này vào giao dịch mint. Đấy, thì chưa đến bước đó.
Chưa đến mức đó, chúng ta sẽ xử lý đầu tiên tạo hai cái đối tượng gọi là đối tượng reference token.
Ờ đấy vẫn phải gọi là quy trình tạo token
phải tạo ra asset và set khối lượng. Đây refer multi asset này.
Đấy asset value cho nó bình thường nhá mọi người. Hình gọi là
vẫn phải nhắc lại một chút trong UK Echo nếu như mà khi mà giao dịch ấy thì mọi
phải setup cho nó một cái giá trị lượng ADA bằng một con số. tối thiểu đấy
bước này chính là bước xét cho cái ut chứa reference token một cái lượng
tối thiểu này để sau đấy thì chúng ta sẽ truyền vào truyền vào cái
đồng store đấy. Đấy build transaction đấy.
Builder tạo builder đấy. Tiếp theo là add input address thì thực hiện lấy
UTxO trả phí này. Tiếp theo là mint asset. Đấy, trong bước này mới bắt đầu
này này. Đấy, đính cái thông tin của cái mondi asset này vào cái giao dịch.
Đấy, là đính thêm cái a minting script.
Rồi và thêm một cái output để chuyển cái token này về cái địa chỉ store.
Tức là bước này này. Thực ra nó là chuyển cái chứa reference token về địa
hợp đồng thông minh. Đấy. Đấy. Bước này chính là khởi tạo cái multi-asset.
tạo cái multi asset để gọi là đính nó vào cái UTxO và chuyển vào hợp đồng
minh. Đấy tương tự như vậy ừ vì là mint một cặp token, một cái là user token, một cái là reference token đúng
thì chúng ta cũng phải xử lý chuyển cái user token về thằng địa chỉ ví của thằng mint cũng tương tự như vậy.
Khởi tạo asset nàởi tạo số lượng này đấy
tạo multi-asset asset này đấy gọi là khởi tạo value.
Rồi add input.
Rồi add input chính là chuyển về địa chỉ ví của thằng ấy. Đấy. Tiếp theo là thêm một cái
size này và ví giao dịch.
Và tiếp theo là submit. A submit giao dịch.
Tiếp theo đấy là chúng ta sẽ thực hiện trả về thông tin giao dịch.
Rồi ừ mình sẽ tổng kết lại các bước chúng ta xây dựng giao dịch mint
nó cũng không khác gì ừ giao dịch mint token bình thường như những bài học trước mình đã hướng dẫn. Nhưng mà trong
học này nó có thêm cái tạo thêm cái datum cũng như là
sau khi mint xong thì chúng ta sẽ thực hiện ờ chuyển cái UTXO chứa reference
về địa chỉ hợp đồng thông minh và cái địa chỉ store đấy. Đấy, cái
token đấy nó sẽ đi theo cái UTXO và UTXO đó nó chứa cái datum để sau
chúng ta thực hiện chi tiêu cái datum đấy và cập nhật lại cái datum.
Ok, bước tiếp theo thì chúng ta sẽ thực hiện viết tiếp hàm update metadata.
Đấy, hàm này sẽ nhận vào các tham số đó là đầu tiên đó là context này,
hai là payment s key và payment vy. Đấy,
theo là cái địa chỉ của người cập nhật ấy. Tiếp theo là token name.
Tiếp theo là trường thay đổi, metadata thay đổi thì chúng ta là description đã định cho metadata nên chúng ta sẽ thay
cái description này. Và cuối cùng là cái đường dẫn đến file plutus.json
về disary là kết quả giao dịch.
Rồi thì mình sẽ thêm một chút chú thích trong đây.
Đầu tiên vẫn phải hình như là cái network này chúng ta không cần dùng đúng không?
Ok thôi.
Đầu tiên vẫn là L script giống các bước trước đó ấy. Đấy L script này mục tiêu
lấy ra cái store address và policy ID store script.
Tiếp theo vẫn là get cái public key để sau này thực hiện gọi là
chiếu kiểm chứng chư ký. Đấy tiếp theo đấy là tạo cidd.
Rồi bước tiếp theo vẫn là xây dựng token name
tạo reference asset name bằng cách nối thêm nối thêm cái prefix vào. Rồi sau khi đã
up xong là chúng ta sẽ bắt đầu tìm UTxO chứa reference token.
Đấy, vẫn dùng cái hàm gọi là context.
Đấy. Đấy, đầu tiên là khởi tạo reference UTXO bằng nă. Đấy, duyệt tất cả các UTxO.
Nếu ừ gọi là UTxO ờ chấm output này ch amount. Multi asset
Đấy, xong lại duyệt trong multi-asset các cái asset
cái multi-asset item đây này. Đấy, mọi người có thể hình dung là multi-asset asset nó trong đấy nó lại gồm nhiều cái asset.
Đấy, chính vì thế mà từ thằng cha lại đến thằng con.
Rồi tiếp theo là kiểm tra.
Nếu cái policy ID mà bằng cái policy ID của cái thằng muốn update đấy cộng với cái ref
đấy thì chúng ta sẽ thực hiện gán cái reference UTxO bằng cái UTxO đó.
Đấy, nếu như không có thì trả lời là không tìm thấy.
Rồi, ok. Tiếp theo thì chúng ta sẽ phải xử lý datum này. Xử lý datum.
Xử lý datum để lấy ra public public public key hết à. Pkhon.
Đấy, đầu tiên đó là từ cái reference UTxO đấy, chúng ta sẽ
ra cái datum. Đấy, nếu datum
thuộc kiểu thì chúng ta sẽ gán current
current owner đấy bằng cái
public key hash ừ chứa trong cái datum.
Còn nếu current khác public kia hết đây này thì nó không phải
Và tiếp theo thì nếu như đúng thì
như đúng thì cho nó cập nhật. Và rồi
tiếp theo là chúng ta sẽ phải khởi tạo datum mới.
Khởi tạo datum mới. Đấy. New datum này sẽ bằng exit 68 datum.
OSI ID này đấy. asset name này
public hết này.
Và metadata sẽ new description mới và version bằng new version.
Rồi ok.
Đấy, bước tiếp theo sau khi đã tạo datum xong chúng ta sẽ tạo redeem cho cái hành động này. Spending này. Thì hành động
chính là update metadata. Chúng ta sẽ tạo cái redeem dựa trên cái
nghĩa variable của cái redeem chúng ta đã khai báo trước đó là update metadata. Và tiếp theo là view transaction.
Đấy, view transaction khởi tạo transaction này. Đấy, tiếp theo là add input address.
Rồi tiếp theo là thực hiện gọi là add input script từ cái địa chỉ hiện tại.
Đấy. Tiếp theo đó là gửi lại cái UTXO chứa ref token trở lại
script ấy. Đấy là vẫn là khởi tạo asset đầu tiên này. Đấy, vẫn là
tạo số lượng và khởi tạo multi-asset asset này. Gắn nó vào multi gắn asset vào multi-asset này. Đấy, đính kèm một cái
Ada này và gửi nó về
chỉ store. Đấy, cuối cùng là yêu cầu ký và thực hiện ký giao dịch.
Và cuối cùng là submit.
Ok. Và trả về thông tin kết quả giao dịch.
Ok. Mình sẽ nhắc lại một lần nữa nhé.
hợp đồng ờ thông minh phần điều kiện để spend ấy tức là spending cái UTxO
đang chứa cái reference token mà chúng ta đã đang và muốn cập nhật cái metadata
chúng ta sẽ phải nhớ lại cái hợp đồng thông minh nó có ba điều kiện đầu tiên đó là phải được ký bởi cái thằng
có cái chữ ký tương ứng với cái public key hash được lưu trong datum của cái UTxO đó. Đấy thì đây chính là điều kiện
tiên này. Đấy điều kiện thứ hai đó là input phải chứa
reference token. Đấy thì đây chính là cái xử lý điều kiện đấy nhá. Đấy.
Và điều kiện tiếp theo đó là cái output nó cũng phải chứa cái reference token.
Thì đây chính là điều kiện thứ ba này.
Đấy, mọi người có thể hình dung lại. Ok chưa?
Ok rồi. Đấy, mình gọi là cũng đã code xong cái phần update metadata. Tiếp theo
phần bơ. Phần đơn. B này thì cũng khá là đơn đơn giản thôi. Định nghĩa là bơ này.
Tương tự như các hàm khác cũng nhận vào context payment s. Ừ.
Đấy, contact này payment s key này. Đấy, trả về đích này.
Đấy,
về đích thì mình sẽ chú thích một chút cái này.
Rồi tiếp theo vẫn là lấy network. Cái này hơi thừa thôi cứ đi. Tiếp theo vẫn là load squ.
Rồi tiếp theo vẫn là get on public key hết để đổi chiều trừ ký này. Đâu tiếp
vẫn là tạo asset name đấy và tạo reference và user token name này từ cái
mình vừa tạo này. Đấy khá là quên làm.
Và tiếp theo vẫn là tìm UTxO chứa reference token trên store này. Đấy dùng
hàm context.O đấy tại store vẫn là khởi tạo ref
nă đấy. Đấy tiếp theo là duyệt.
Duyệt tất cả các cái đấy xong lại duyệt tiếp tục duyệt trong multi-asset asset này. Đấy,
trong multi-asset là nếu như có tồn tại cái id
cái a reference asset name đấy. Đấy thì chúng
sẽ gán cái reference asset bằng cái UTxO đó và break. Nếu không thì chúng ta
trả về là không tìm thấy. Đấy. Tiếp theo
vẫn là lấy cái thông tin của public key header.
Đấy, xử lý datum này.
Đấy, nếu như Datum đã là kiểu CIP-68 chúng ta đã xây dựng thì
ta lấy ra cái a public key hash của này. Đấy, nếu như
key head của mà trùng với cái thằng truyền vào không trùng thì thông báo là nó không
chủ. Đấy. Và tiếp theo là tìm
ví của lấy lấy trong ví của này. Đấy cũng khởi tạo rồi. Khởi tạo xong rồi cũng duyệt qua.
Nói chung cũng tương tự như trên rồi. Nếu như không có thì thông báo
để giao dịch tạo giao dịch thì vẫn là những bước quen
chỉ khác là nó sẽ khởi tạo số lượng là âm thôi.
Đấy vẫn là tạo asset, vẫn là khởi tạo số lượng.
để rồi
gắn vào khởi tạo multi asset này sau đó gắn thông tin asset m này đấy
đó tạo redeem tạo redeem thì có hai cái chúng ta cần chú ý nhé
Như mình đã chia sẻ trong bài thực hành phần code hợp đồng thông minh hôm trước
đã nhấn mạnh là để bơ một cái token theo CIP-68 thì nó có hai cái công
Công đoạn đầu tiên đó là phải chi tiêu bỏ cái UTxO trong hợp đồng store đi. Đấy, sau khi chi tiêu xong rồi thì
reference token đấy nó vẫn tồn tại trên chuỗi. Chính vì thế mà chúng ta phải thêm một hành động là hành động hủy.
Hủy nó tức là hủy nó đi, thực hiện giao dịch, bơn nó. Đấy, gồm hai công đoạn.
Công đoạn đầu tiên là chi tiêu. Công đoạn thứ hai là công đoạn hủy. Đấy.
Vào bước build transaction này. Rồi tạo builder. Ứ.
Tiếp theo là ừ add input address để thực hiện có UTxO
phí này. Tiếp theo là add script input. Tức là lấy UTxO từ địa chỉ hợp
ra để chi tiêu này. Đấy. Tiếp theo đấy là add input
UTxO chứa user token để thực hiện lấy ra cái token để thực hiện hủy và tiếp
đấy là thực hiện gọi là đính kèm cái thông tin của cái tài sản multi-asset
vào cái giao dịch. mint đấy các mỗi giao dịch mint là số lượng ở đây là
thôi. Và cuối cùng là đính thêm cái mining script giống như lúc chúng ta mint
Đấy thêm cái redeem.
Ok. Tiếp theo đấy là khớp chữ ký và ký giao dịch.
Và cuối cùng là submit giao dịch.
Đấy, submit xong thì trả về thông tin.
Rồi bây giờ mình sẽ nhắc lại một số những điểm cốt lõi trong cái hàm B CIP-68
này. Thì về cái khởi tạo giao dịch khởi tạo token name, asset name ấy nó
như các cái quy trình khởi tạo trong những hàm mint token trước đó ấy. Đấy nó chỉ khác đó là
chúng ta bơ một cái token theo chuẩn CIP-68
sẽ có hai hành động. Hành động thứ nhất là hành động chúng ta phải spend
là chi tiêu bỏ cái UTxO đang được chứa trong cái hợp đồng store này đi.
Cái hình hành động thứ hai đó là phải hủy bỏ cái reference token và cái
token này đi. Đấy. Ok.
Rồi bước tiếp theo thì chúng ta cũng có thêm một cái hàm bổ sung để list token
khi cân đấy khi cần thiết đấy thì
ta sẽ định nghĩa hàm này hàm list token này thì nó sẽ nhận vào
vài thông tin như là context này store này.
user address để thực hiện list các cái token theo chuẩn CIP-68 ừ tương ứng với địa
của người và địa chỉ của hợp đồng đã được triển khai đầu tiên thì chúng ta sẽ định
các cái benefit cho các cái reference token và user token.
Đấy, tiếp theo chúng ta sẽ khai vào một cái user token list này và holding token name này.
Đấy, bước một chúng ta sẽ lấy các danh sách trong ví, danh sách token trong ví của user. Đấy.
Rồi for này vẫn là những cái bước khá là quen thuộc.
Duyệt multi này đấy. Duyệt từng cái item một đấy.
Dyệt từng item một này. Nếu như số lượng lớn 0.
Và cái asset name của cái user token là cái user prefix thì chúng ta sẽ lấy phần tên sau của nó.
Nếu cái số lượng của cái asset đấy lớn hơn và cái tên bắt đầu bằng user prefix này
Đấy thì chúng ta sẽ lấy phần tên sau prefix.
Đấy. B names đấy. Phần tên sau.
Rồi và thực hiện thêm cái B name này vào đấy.
Và in ra.
Cái này không không cần đi bớ đâu. Cứ hiển thị ra cho rồi. Tiếp theo đấy là tìm reference token
ứng trong store cũng duyệt các UO của store đấy. for
cũng fory id duyệt các cái multi asset trong cái
đấy duyệt trong multip asset
nếu asset nameb chref prefix này đấy
lấy phần sau đấy Mà nếu
Bay name này mà có trong cái reference token
chúng ta sẽ thực hiện lấy ra một số thông tin giải mã datum
roda đaat
chấm atum này if
ra datum thuộc kiểu thì chúng ta sẽ chuyển về dạng
không thì nguyên
Và cuối cùng là trả về thông tin metadata deck này.
Đấy duyệt tất cả các trường trong metata. Metadata nếu như metad đích đấy
bằng đấy.
Value cũng vậy rồi.
Metadata ừ gãn metadata
dictionary bằng một giá trị và user token listen
Aspend token name
đấy. Tiếp theo là policy ID đấy.
Chblot.Hh. Tiếp theo đó là metadata.
Tiếp theo đó là version. Th lấy từ datum. Version.
Đấy. Và cuối cùng là hết rồi.
Ok. Và except thật trai đây.
Và cuối cùng là return user token list.
Ok,
cùng thì viết thêm một số cái hàm test trong đây.
Rồi ok. Như vậy là chúng ta đã xong ờ một số các hàm khá là quan trọng trong
quá trình chúng ta thực hiện code off-chain.
Bước tiếp theo thì chúng ta sẽ viết các script đấy. Gọi đến các cái hàm này.
Nhưng mà đầu tiên thì chúng ta phải init init trước khởi tạo trước.
Ừ. viết viết cái hàm tổng hợp lại
nó sẽ lấy ra từ các hàm trong
hai cái file chúng ta vừa code ấy. Đấy. Import này.
From shift đây. Rồi. Ồ,
này như là khai báo ấy cũng khá quan trọng. Rồi ok.
Tiếp theo thì chúng ta sẽ tạo ờ tạo một vài cái file
để chạy thử. Đấy, file đầu tiên đó là file mint. Ừ.
Demo mint đi.
Demo mint. file đấy.
Trong file này chúng ta sẽ thực hiện gọi là mint ờ
Đầu tiên vẫn là import cái thư viện. Rồi tiếp theo là import do ENV này. Đấy.
Tiếp theo là ờ import một số cái hàm dùng cho mint.
Đấy. Và đầu tiên vẫn là load. ENV. Tiếp theo là khai báo hàm main.
Ma main nà in. một số các cái văn bản trình bày.
Đấy, tiếp theo là load Walid.
Đầu tiên là Lad Wall ừ load biến SH face này. Đấy, nếu không có thì th in thông tin ra.
Đấy. Tiếp theo thì chúng ta sẽ lấy các thông tin của Wallist bằng cái hàm get
from sheet ấy. Đấy, lấy được thì print ra. Ok.
Tiếp theo thì chúng ta sẽ phải tạo context này.
Rồi tiếp theo thì chúng ta sẽ qu một số thông tin của ví để ví dụ
số dư chẳng hạn. Đấy.
Đấy. Nếu như tiền nhỏ hơn 10 thì print là không đủ.
Rồi tiếp theo thì chúng ta sẽ có một cái biến là biến time stam
mỗi một lần mint thì chúng ta sẽ đính kèm cái time stame đấy vào. Đấy. Đấy.
Tên token này đếnh kèm t này đỡ phải thêm một cái trường gọi là trường description.
Đấy,
Sau đó thì chúng ta sẽ in cái thông tin ra.
Đấy. Rồi đây bắt đầu vào bước gọi hàm mint này. Đấy. Đây kiểu như là setup
tin để mint thôi. Đấy. Gọi hàm mint rest run mint CIP-68 token này.
Gồm có các cái tham số như là context, payment s key đấy.
Payment Sky, payment V key này, address này,
name và description. Đấy, tiếp theo là in
một số thông tin giao dịch thành công hay không. Đấy.
Rồi là thêm một cái công đoạn đấy là lưu lưu
thông tin của token vào đấy.
Mở cái một lưu vào file chơ. Đấy. Mở cái file json ra.
Chayson.
Đấy, trước khi đi vào bước tiếp theo, mình muốn bổ sung
một câu lệnh đó là thêm một cái a đường dẫn của dự án.
Đây tức là thiết lập ừ cái project rot của cái dự án này chính là cái thư mục hiện tại. Đấy.
Rồi tiếp theo chúng ta sẽ exception đúng không nhở?
Tab à nào? Ok. Và tiếp theo là kết thúc hàm.
Rồi chúng ta đã viết xong cái script để demo. Tí nữa chúng ta sẽ chạy một thể.
Tiếp theo thì đó là viết thêm một cái script khác là demo update.
Đấy.
Trong file này mục đích của nó cũng
để update cái trường metadata. Đấy cũng import các thư viện cũng phải add project rot đấy.
Cũng phải import các cái hàm phục vụ cho update. Đấy cũng phải load đv này đấy.
Khai báo hàm main và in ra.
Tiếp theo đó là l wall. Tương tự như mint thôi.
Rồi tiếp theo thì cũng lấy các cái a script ừ à lấy các cái thông tin liên quan đến ví.
Rồi tiếp theo đó là lấy một số cái script cần thiết này. Lấy dùng hàm get script ấy không có tham số gì cũng được.
Đấy,
ra cái địa chỉ ví và địa chỉ của store. Đấy,
chúng ta ở đây chúng ta cần một cái id bằng
này thì chúng ta sẽ thay thế sau đấy.
sau khi có token NFT mint nhá.
Rồi đấy. Print cái poosin này ra. Đấy cũng phải khởi tạo context.
Đấy thì trong cái update này nó sẽ có thêm một cái công đoạn đó là chúng ta sẽ
các cái token mà chúng ta đang sở hữu theo chuẩn CIP-68 ấy. Đấy
token mang list o token đấy. Nếu như không tìm thấy thì thông báo,
nếu như tìm thấy rồi tiếp theo đấy là duyệt với cái danh sách token đấy nhá.
ra đấy. Thông tin như là token name nà, version này,
Đấy,
theo chúng ta sẽ gọi là khi chúng ta thực hiện ừ update thì chúng ta sẽ tạo ra một cái select ấy. Ừ. Đấy,
xin nhắc lại một lần nữa nhé. Vì là trong cái ví dụ của chúng ta hợp đồng thông minh không có các parameter nên
được tạo ra từ cáiinting script ấy nó sẽ là một cái policy ID cố định. Đấy nên khi
ta mint thì nó sẽ mint nhiều cái token với policy ID giống nhau nhưng cái
name là khác nhau. Đấy nên khi chúng ta sẽ quét các cái
token trong ví ấ chúng ta sẽ có nhiều cái token theo chuẩn CIP-68.
Đấy thì khi chúng ta quét ra chúng ta sẽ lựa chọn một trong số các cái token
ta quét để chúng ta update. Đấy nếu như token số lượng token bằng 1 thì tự chọn luôn.
Còn nếu như số lượng token lớn hơn 1 đấy thì chúng ta sẽ dùng một cái hàm nhập
input chọn token này. Đấy choice xử lý
và except rồi đấy. Chúng ta đã chọn xong token rồi
không? Đây token name. Đấy.
Lấy cái token name ra và thêm một cái a trường metadata muốn cập nhật ở cụ thể ở
là new description. Đấy thì chúng ta sẽ đính cho nó một cái file, một cái thời gian đấy. Thay cho nó cái
đây này. Thành cái update metadata. Cái cũ là
cái cũ đâu nhở? Demo CIP-68 này này. Đấy cái mới là update. Đấy.
Rồi tiếp theo là in thông tin ra.
rồi và tiếp theo là bước gọi đến hàm update metadata này truyền các cái thông
vào đấy
truyền thông số vào nhá context này key v key này đấy on address này.
Rồi tiếp theo là in các cái thông tin ra và except.
Rồi cuối cùng là Ok.
Như vậy thì trong cái script này mình chỉ có một cái điểm lưu ý đó là chúng ta sẽ query trong ví của user xem là user
thay đổi metadata của cái token nào. Đấy, chỉ có điểm mới như vậy thôi.
Đấy, sau khi chúng ta lựa chọn xong cái token muốn thay đổi ấy thì chúng ta sẽ truyền cái new description này vào cái hàm update metadata. Đấy.
Rồi tiếp theo thì chúng ta sẽ thực hiện viết hàm demob.
Đấy.
Đầu tiên vẫn phải import cái thư viện,
phải định nghĩa root của project này. Post các cái hàm để bơ này. Đấy. Load.netv
khá là giống các bước cũ nên mình sẽ làm nhanh luôn nhá.
Định nghĩa main này cũng in ra này. Đấy không khác gì mint với update. Đây tiếp
là load seed phrase này. Đấy lấy các cái trường liên quan đến ví này.
Rồi tiếp theo là lấy các cái script để thực hiện có cái địa chỉ như để list token tiếp theo là in ra. Đấy,
bước này cũng phải chuẩn bị một cái policy ID của cái token cần
đã minấy sau khi chúng ta mint xong thì chúng ta sẽ thực hiện thao tác với cái policy ID hoặc token đấy. Rồi khởi tạo
này. Đấy, vẫn là lead token này.
Rồi, vẫn là nếu không tồn tại token thì thông báo ra.
Và nếu như tìm thấy thì hiển thị.
Rồi tiếp theo là chọn lựa chọn cái token bn này giống hệt như update thôi. Đấy nếu
land token bằng 1 thì select luôn cái token ở vị trí là 0 luôn.
Rồi cho thêm một cái trường nhập confirm vào
muốn bơ không ấy. Đấy
lý thêm một cái đã hủy
Nếu như có nhiều nhiều token thì tiếp tục gán cái select à tìm cho một
input để lựa chọn này. Đấy, xong lại tiếp tục lựa chọn try này. Lại except nào.
Rồi gán cái token name.
Tiếp theo là in ra và cuối cùng là thực thi bơ gọi đến hàm bn này.
Isan này.
Và cuối cùng là in ra thông tin giao dịch. Đấy. Except.
Rồi như vậy là chúng ta đã viết xong hàm
rồi. Chúng ta đã viết xong ba cái script.

## Part 2
Link: https://www.youtube.com/watch?v=wFkFvBGOCH4

Ok,
theo thì chúng ta sẽ thực hiện nhảy vào chạy thử các cái script này xem chúng ta đã thực hiện
công các tính năng như mint update bớn hay chưa. thì chúng ta sẽ thực hiện
mint trước thì chúng ta sẽ gõ lệnh python
demo_mint.py đấy.
Ok.
transaction đã thực hiện thành công rồi nhá. Đây chính là policy ID này.
Đấy,
đây thì chúng ta đã lưu lưu cái thông tin token sau khi mint vào một cái file json để sau này chúng ta sử dụng lại.
Mọi người có thể thấy này, F ID này.
Đấy, tiếp theo thì chúng ta sẽ thực hiện tra cứu trên Cardanoscan xem
verify, submit lên trên hay chưa. Vẫn chưa mọi người sẽ đợi một lúc. Đấy,
quá trình đó thì chúng ta sẽ tạm thời quay lại cái file update để điền lại cái file ID. À điền lại cái thông tin của policy ID.
Đấy.
Rồi quay lại file bn để điền lại cái file điền lại cái thông tin của policy ID.
Đây Ctrl Save nào. Đấy description nhá.
Quá trình này có thể hết một vài thời gian đấy. Ok, đã xong này.
Đấy, giao dịch mint này. Ừ,
tin là transaction này
nhở? Đây token mint tạo ra hai token này. Đấy chung voly id này
contract này. Chúng ta sẽ xem xem cái
này nó có cái datum như thế nào.
Đấy mọi người có thấy không?
Key là description còn value là
CIP-68 này. Thời gian của nó là đuôi là 5185. Chúng ta thử quay lại xem nào.
Thời gian của nó là 5185.
Ok. Như vậy đã đúng rồi. Tiếp theo thì chúng ta sẽ kiểm tra trên hợp đồng thông minh xem nào.
Conc này. Contct đấy. Đấy.
Đây 5185 này được tạo 3 phút trước này. Ok chưa?
Đấy.
Đấy. Đây chính là cái hợp đồng thông minh store lưu cái ref token đấy. Đấy.
Còn cái địa chỉ của chúng ta, chúng ta cũng cần phải xem địa chỉ của chúng ta có gì.
Wallet address này khá là nhiều đấy.
Đuôi là 85 rồi chính là cái này đấy.
mint transaction này 3 phút trước đấy. Ok chưa?
Ừ như vậy thì chúng ta đã thực hiện mint thành công một cái chuẩn một cái cặp
token shift CIP-68 gồm hai cái token đó là một cái token là user
trên ví của chúng ta, một cái token là reference token nằm trên hợp đồng thông minh mà metadata của nó là cái trường
Đấy, sau đây thì chúng ta sẽ thực hiện demo cái tính năng update bằng cách chạy cái script của cái file
update.
Chúng ta sở hữu khá nhiều token đấy.
Nhưng mà cái token mà chúng ta sở hữu với cái
này thì chỉ có cái demon cái này thôi. Đấy nên nó sẽ tự động cập
thành cái trường là update metadata
thời gian là 5 4 64. Đấy, chúng ta sẽ đợi một lúc và tra cứu trên cái
tin của transaction của Cardanoscan em có được hay chưa. Đấy,
cũ là 5185 này. Đấy, new description mới là một cái trường là update metadata.
Đấy, trong đây mình cũng sở hữu khá nhiều cái token nhưng mà chỉ có một cái token là có poly
ID ấy thôi. policy ID là 1 9127. Đấy, chúng
sẽ đợi một chút để kiểm tra on-chain xem nào.
Ok,
nó tự chi tiêu này và lại gửi lại hợp đồng.
Đấy, tiếp tục xem cái du tệ nguồn này này.
Input output là cái này đây. Update metadata
Đã thay đổi rồi nhá. Lúc nãy là ờ demo CIP-68 thời gian là có đuôi là 5185. Bây giờ là 5464.
Ok, như vậy thì chúng ta đã demo update rồi. Tiếp theo chúng ta sẽ thực hiện demo tính năng bơn.
Chắc là nó cũng sẽ đấy. Nó cũng chọn luôn cái NFT vừa rồi này.
Đấy. Zác nhận.
Thành công. Đợi một chút nhé. Đợi một chút.
Cái này nó sẽ mất khá là lâu đấy. tầm 20 đến 30 giây
cái on-chain nó ờ submit và verify thành công.
Ok, đã xong rồi. Đây thông tin giao dịch nó đã biến thành -1 rồi này.
Đấy, token mint đã biến thành -1 này. Đấy,
chúng ta sẽ kiểm tra lại cái địa chỉ xem nào. Xem có còn cái token nữa nữa không.
Lúc nãy là 12 token đúng không? đuôi là 85 giờ lại không còn nữa rồi đấy. Kiểm tra lại cái địa chỉ store xem nào.
Cái này thì lại không có cái địa chỉ store rồi. Không thì lấy lại cái địa chỉ này cũng được.
Đấy, đây chính là địa chỉ store này. Đấy. Đấy, 5185 cũng đã trừ đi rồi.
Đây, không còn cái 515 nữa.
Ok, như vậy là trong phần demo phần code off-chain này mình cũng đã hướng dẫn các
nó khá là chi tiết về cái quá trình mình thực hiện sử dụng thư viện BY
Cardano để xây dựng code off-chain tương tác với hợp đồng thông minh cho các tính
như là mint này, update này, BN này với chuẩn CIP-68. bài học mà chúng ta
mình đang giảng dạy cho các bạn thì mình mong rằng những hướng dẫn chi tiết ừ của mình sẽ giúp cho các bạn có
dễ dàng hiểu được cái ví dụ thực tế trong việc triển khai hợp đồng thông minh CIP-68 và ứng dụng thư viện B
Cardano để thực hiện tương tác với hợp đồng thông minh Thì
bài học tiếp theo mình sẽ thực hiện ờ một cái video cuối đó là xây dựng một
full app hoàn chỉnh bao gồm cả frontend và backend để minh họa quy trình ờ
khai các cái tính năng như là pin này ờ tính năng mint update và bn ờ cái
trên giao diện mọi người có thể thực hiện trực tiếp trên giao diện luôn mà không phải môi trường dòng lệnh
bài học ngày hôm nay thì tất cả các tài liệu liên quan đến code hoặc là
dẫn mình sẽ thực hiện tổng kết lại và tổng hợp lại tại một cái GitHub của
và mình sẽ public cho mọi người sau khóa học. Mình mong rằng những cái video hướng dẫn, những cái chia sẻ của nhóm
sẽ giúp cho mọi người có thêm kiến thức cũng như là hiểu biết để mọi người
bị hành trang vào các dự án thực tế. Mình xin phép kết thúc video tại đây và mình xin cảm ơn mọi người.

