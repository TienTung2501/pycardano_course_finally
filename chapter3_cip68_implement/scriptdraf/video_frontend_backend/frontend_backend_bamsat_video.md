# Script bam sat video - Frontend + Backend CIP-68

## Part 1 - Backend coding (no run yet)
Link: https://www.youtube.com/watch?v=BZ_EaiZyOY0

Xin chào mọi người. Chào mừng mọi người đã đến với video tiếp theo trong khóa học lập trình Cardano của chúng tôi.
Trong video này chúng ta sẽ tiếp tục triển khai ví dụ CIP-68.
Thì tiếp tục với chuối video hướng dẫn triển khai ví dụ CIP-68 trong những
trước đó thì trong video này ờ chúng tôi sẽ hướng dẫn mọi người triển khai full một app bao gồm các thành phần
là frontend và backend để thực hiện các tính năng mint update metadata cũng
là burn asset trực tiếp ngay trên giao diện thì công nghệ
Ờ công công nghệ mình sử dụng cho frontend đó là Next.js.
Còn backend thì vẫn là backend được viết bằng PyCardano.
Thì đầu tiên cũng như là giống giống với những bài học trước đó thôi. Ờ
vẫn sẽ nói lại cái quy trình
mình vẫn sẽ thực hiện cái ộc xộc code mà mình đã hướng dẫn trong
bài học trước đó. Và trong bài học trước đó chúng ta đã triển khai xong phần ờ code hợp đồng thông minh và triển
và thực hiện code phần code off trên để thực hiện tương tác ừ trực tiếp
hợp đồng thông minh bằng các cái script.
Đấy và trong bài học tiếp theo này thì mình sẽ thực hiện tạo ra full một cái
dụng de có hai phần frontend và backend. Đấy thì đầu tiên vẫn là những bước quen thuộc
Đầu tiên thì chúng ta vẫn phải khởi tạo môi trường ảo như những bài học trước đó. Vì là chúng ta đã cài đặt rồi
chúng ta không chạy lại câu lệnh này. Chúng ta sẽ thực hiện kích hoạt môi trường ảo. Ok. Ờ sau khi kết hoạt môi
ảo xong thì các cái setup ừ chúng ta cũng không cần phải install các cái thư viện trong những bài học trước đó để
cái backend. Đấy vì là chúng ta vẫn dùng cái xộc cũ ấy nên không cần install lại thư viện.
Sau khóa học này thì mình sẽ gọi là pú tất cả code liên quan đến các video bài giảng lên GitHub của team. Mọi người có
clone về và ừ đọc lại các cái nội dung code dự án mà
mình đã triển khai trong các video mọi người nên mọi người cứ yên tâm.
Đấy thì đầu tiên đó là chúng ta sẽ build một con con backend trước. Đấy
trong thư mục script CIP-68 này chúng ta sẽ thực hiện tạo một cái folder backend để chúng ta code backend.
Rồi đầu tiên thì chúng ta sẽ viết hàm main luôn.
Đấy.
Rồi trong hàm trong hàm main này chúng ta sẽ làm những
Chúng ta sẽ xây một cái con backend API, sử dụng phát API của backend
xử lý các yêu cầu của frontend. Đấy.
Bao gồm các yêu cầu đó là mint access này.
Đấy, update metadata, burn access và query các metadata của từng asset để
thị lên giao dịch và list các asset trong ví. Đó.
Ngoài ra thì còn có các dịch vụ như là ờ tạo các cái
giao dịch mà chưa có chữ ký ờ để gửi lại frontend. Font ký bằng wallet browser.
Đấy thì mình sẽ nhắc lại một chút vì là Next.js ấy nó vẫn chưa có thư viện hỗ trợ.
PyCardano để Next.js có thể code thư viện PyCardano ngay trên
ngay trên giao diện người dùng. Chính vì thế mà chúng ta cần phải build cái con backend
để khi mà chúng ta ờ gửi đến những cái ờ yêu cầu như là yêu cầu mint access
update metadata hoặc là burn access từ frontend thì backend này nó sẽ phải xử lý được.
Còn bình thường nếu như chúng ta dùng thư viện luit thì mọi người có thể code ngay được trên suộc của font luôn.
Đấy thì ok về tổng quan thì mục tiêu trong cái phần backend này mục tiêu của nó là dùng
code các cái API nhận các cái yêu cầu từ frontend và xử lý logic. Đấy thì các cái bước mình sẽ thực hiện xây dựng backend.
Đầu tiên đó là chúng ta sẽ phải cài đặt phát API này.
Đấy.
Tiếp theo ừ gọi là mình sẽ nói luôn có tổng bao nhiêu bước nhá. Xong đó mình sẽ nhảy vào code từng bước luôn. Đấy. Đầu
mình sẽ cài đặt thư viện FastAPI và Uvicorn để xây dựng backend API.
Đấy. Tiếp theo là định nghĩa các mô hình dữ liệu với thư viện Pydantic Pydantic.
Đấy, nó sẽ định nghĩa các yêu cầu và phản hồi API đến từ frontend. Tiếp theo
là sử dụng acing context manager để quản lý các cái vòng đời của ứng dụngấy. Thiết lập trên context và các cái script.
Đấy. Tiếp theo là tạo ứng dụng phát API với cấu hình Mr. cần thiết. Và bước thứ
đó là định nghĩa các endpoint API để xử lý các yêu cầu từ frontend bao gồm các endpoint mình đã liệt kê này. Và thứ sáu và
bước thứ sáu và bước thứ bảy chúng ta sẽ xử lý lối và trả về các cái phản hồi cho từng point. Và bước bảy là chạy ứng
Đầu tiên thì chúng ta sẽ thực hiện khai báo các cái thư viện, import các thư viện như là OS SH Jason này. Đấy,
viện Kiều này, thư viện Time này. Đấy,
tiên là import thư viện ừ
a lif đấy.
Aing context manager để thực hiện quản lý vòng đời của ứng dụng này.
Tiếp theo thì chúng ta sẽ ờ import các cái thư viện liên quan đến phát API.
Đấy thì cái phát API này mình sẽ nói lại dùng để ờ xây các cái API này và xử lý
cái yêu cầu http. Tiếp theo là import cáiwe
đấy để gọi là cho frontend có thể query đến backend.
Rồi tiếp theo là thư viện Pydantic đấy.
Để định nghĩa các mô hình dữ liệu ừ cho các request và response
netinv.v tiền.
Tiếp theo là import các cái thư viện của B Cardano.
Rồi tiếp theo là import ừ một số các cái thư viện để chúng ta ờ xử lý withnet set.
Đấy thì cái witness set này tí nữa mình sẽ nhấn mạnh lại cho các bạn tại sao cần
dùng nó. Tiếp theo là import cái tiện x mà chúng ta đã xây dựng từ module of trên trong bài học trước đó. Đấy.
Các cái hàm tiện x đây này.
Rồi vì là các cái video nó liên quan mật
với nhau nên mọi người chú ý là ờ xem gọi là khi học thì phải học
video một và đúng thứ tự nhé. thì mới hiểu được bài học
Tiếp đầu tiên chúng ta nhảy vào code này. Đầu tiên đấy là load a môi trường khai báo một số cái biến toàn cục.
Đấy, đầu tiên là trên context này. Tiếp theo là Blockfrost context này.
Rồi tiếp theo là đường dẫn đến file Bluetooth chên n.
Tiếp theo là network này. Đấy, cái này để xử lý liên quan đến blood for đấy. Tiếp theo là khai báo
dữ liệu mint script này để đọc thông tin của hợp đồng thông minh này. Store script cũng vậy. Vol cidd này và store address. Đấy.
Rồi sau khi chúng ta đã định nghĩa các cái biến toàn cục ừ để xử lý trong cái
dụng thì chúng ta sẽ đầu tiên đó là bước đến định nghĩa các cái mô đồ.
Đấy, định nghĩa các cái mô đồ để xác định cấu trúc dữ liệu cho các yêu
và phản hồi đến từ font. Đấy chúng ta sẽ sử dụng ờ Pydantic model.
Đấy. Đầu tiên thì chúng ta sẽ khai báo cái mint request.
mint request này thì nó sẽ ờ là cái module để
báo cái kiểu dữ liệu cho cái request mint đấy nó sẽ khai báo khai
báo
Kiểu dữ liệu
yêu cầu mint access này. Đấy, nó sẽ giúp xác định các trường cần thiết để
một access mới. Đấy, mẫu của nó là như vậy.
Đây bao gồm các trường như là wall này,
wall nè, token name này.
Đấy, description mô tả FT. Đấy.
Ok. Tiếp theo thì chúng ta sẽ khai báo cái module của cái update request.
Đấy. Tiếp theo là mod.
Modu của module của yêu cầu
nhật metadata. Cái này nó sẽ dùng cho end point API update này. Đấy
cái này khai báo class update request
có các kiểu dữ liệu đó là wallet address nè, token name nè, new
n tức là khi chúng ta gửi cái yêu cầu lên bao gồm các cái trường wallet, address nè, token name và new description.
Đấy. Tiếp theo là module của module của
B toen yêu cầu B access đấy. Dùng chop
API B này cần các trường như là đấy mình vừa code mình sẽ vừa chú thích luôn.
Có gì không hiểu mọi người xem lại burn request nào base model cái thừa base
này. Đấy cũng bao gồm các cái trường như là wallet address và token name.
Tiếp theo đó là mod transaction.
Ừ
này nó sẽ dùng cho các cái giao dịch như là mint API update. Đấy dùng cho các
point ừ gọi đến là yêu cầu mint gọi đến yêu cầu update. Đấy, cái này là mod phản hồi nhá. Phản hồi tức là response ấy,
sẽ định nghĩa cấu trúc phản hồi khi một giao dịch được gửi tới. Đấy, bao gồm
thái thành công, thông điệp của ừ thông điệp là COHấ
giao dịch là giao dịch chưa ký.
các trường.
Đấy, mình sẽ nhấn mạnh lại mọi người một chút nhá. Khi mà chúng ta
mint hay là update hay là bơ ấy thì có một điểm chung đó là chúng ta
giao dịch thì phải ký bên frontend đúng không? Đấy,
backend nó không có chế độ ký giao dịch. Chính vì thế mà khi người dùng gửi yêu cầu mint
bơ đấy thì người dùng sẽ gửi cái thông tin về tài sản muốn thực hiện này
Đấy, thì lên backend, backend sẽ thực hiện
giao dịch. Tuy nhiên là vì là chỉ có thể là ký hiệu ở frontend đúng không?
Nên backend không có chữ ký nên phải backend chỉ có thể build giao dịch không có chữ ký và gửi cái giao dịch đó về frontend. Đấy,
cái giao dịch không có chữ ký đó về frontend và frontend sẽ phải ký bằng ví ở trình duyệt của người dùng ấy. Xong
lại, người dùng lại tiếp tục gửi lại cái giao dịch đá ký lên backend để backend xử lý ờ thêm cái chữ ký đó vào giao
và submit. Đấy, mình đã nhắc khá nhiều lần về cái a ờ gì nhở? nguyên lý
động của cái a của chúng ta. Rồi
tiếp theo là chúng ta sẽ định nghĩa mô hình
yêu cầu gửi giao dịch nha.
Đấy, mình sẽ dùng cho endpoint.
Đấy, mô hình này xác định các trường cần thiết này. Đấy, bao gồm các
dịch này và witness set từ ví nà. Thứ hai là transaction object này.
Đấy.
Ứ mình cứ chú thích một hồi nhá.
Xong đấy mình giải thích lại. Mình vừa giải thích xong rồi. Đây mình nhắc lại
lần nữa này. Tức là khi người dùng gửi cái submit này, submit giao dịch lên
ấy thì backend sẽ nhận được các cái thông tin bao gồm body và with
set. Đấy. Đấy thì backend sẽ
hiện hợp nhất cái witness set và cái transaction và submit lên on trên.
Ừ. Ok. Này có lẽ là hơi hơi hơi thiếu clear một chút thì mình sẽ clear lại.
Ừ. Đầu tiên người dùng gửi những cái yêu cầu như là
này, update này, bơ đúng không? Thì
là backend nó không thể có cái chế độ gọi đến ví ở bên backend đúng không?
Trình duyệt nó chỉ hỗ trợ ví ở frontend thôi. Đấy nên backend nó không thể ký được bên backend được. Mọi
hiểu chứ? Đấy, trình duyệt nó chỉ hỗ trợ kết nối ví và ký giao dịch ở bên Font
Còn backend nó không thể không hỗ trợ. Đấy, nên chúng ta mới gọi là xử lý
vấn đề này. Đó là người dùng yêu cầu tạo giao dịch mint hoặc là update này
là bơ này. Đấy, người dùng sẽ yêu cầu đến backend. Đấy, backend sẽ thực hiện này build cái giao dịch đấy.
Nhưng mà cái giao dịch đấy là cái giao dịch chưa ký đấy và gửi lại cái giao dịch chưa ký về với Font. Đấy thì tại
thì người dùng sẽ thực hiện ký cái giao dịch đấy bằng ví theo chuẩn CIP-30 đây
Đấy sau đó sau khi ký xong sẽ gửi lại cái thông tin giao dịch kèm theo cái webnet
đấy chứ chứa chữ ký của người dùng về lại backend thì backend nhận được
hợp nhất cái witness set này vào transaction gốc. và submit lên on trên. Đấy thì bình thường là transaction nó sẽ
gồm hai thành phần. Mọi người có thể nhìn thấy này. Body đấy. transaction body chứa các input, output này, mint
một số các tham số khác. Ngoài ra còn chứa gọi là đối tượng witness set.
Đấy gọi là transaction witness set chứa các thông tin như script này, redeem này, plus data chẳng hạn. Đấy mọi người ok chưa?
Tức là end thì đóng vai trò là connect wallet này, ký giao dịch này. Còn back
là build giao dịch. Đấy, build giao dịch và trả về giao dịch chưa có chữ ký.
backend nó không hỗ trợ ờ ừ kiểu như là connect ví hoặc là ký giao
ngay trên giao diện ấy. Đấy nên chúng ta phải xử lý như vậy. Ok. Tiếp
là mod là submit request đúng.
Đấy, bao gồm các trường mình đã nói ở trên rồi nhá.
Rồi tiếp theo là phản hồi giao dịch màu đồ
hội phản hồi giao dịch giao dịch phản hồi
giao dịch đấy dùng cho API submit này
định nghĩa cấu trúc phản hồi khi một giao giao dịch được gửi lên blockchain này. Đấy bao gồm các cái trạng thái thành công này. Submit response này.
Đấy.
Ok. Tiếp theo là module phản hồi truy vấn metadata.
Phản hồi phi vấn metadata.
Đấy, mô hình dùng cho ABI rồi. Định nghĩa class là metadata response này.
Đấy, các trường như là trường sucid này,
này, Metatata này. Tiếp theo là một cái mô hình để
màu đồ hục
hụ màu đồ phản hồi thông tin ví nhá.
Phản hồi thông tin ví dung cho API.
Tiếp theo là mô hình này định nghĩa cấu trúc phản hồi thông tin truy xuất ví này
gồm các số dư này đấy.
Khai báo màu đồ các cái trường cần.
Ok.
Như vậy thì chúng ta đã định nghĩa các cái kiểu dữ liệu cho các yêu cầu request và response ừ phản hồi đến từ các cái
API. Đấy, tiếp theo thì chúng ta sẽ thực hiện khai báo cái
tượng quản lý ờ vòng đời của ứng dụng
thực hiện khai báo
accounting context manager này xử lý vòng đời của ứng dụng này
theo là định nghĩa acing de l spam này
các tham số như là với các global như là trên context chúng ta đại khai báo ở trên đấy để duy trì sử dụng trong
bộ dự án đấy. Khởi tạo context này.
Đấy tiếp theo là lấy Blockfrost API key này.
Tiếp theo là lấy network ra.
Tiếp theo là khởi tạo trên context.
Chúng ta thiếu mất thứ viện Blockfrost API à.
Ok. để bổ sung thêm thư viện đây.
From Blockfrost này, import này. Ok rồi.
Tiếp theo thì chúng ta sẽ ừ khai báo thiết lập đường dẫn đến file Bluotấy.
chúng ta sẽ vẫn dùng đường dẫn giống như phần
dẫn của file plutus.json Jason hôm trước ấy. Đấy, tiếp theo là load Script.
Nói chung là đến bước này thì chắc chắn là mọi người cũng đã hiểu rất là rõ các
này rồi nên mình sẽ không không nói chi tiết những phần này.
Rồi tiếp theo là load các cái script
in ra cid này.
Store address này.
Tiếp theo là nếu như không có gì thì vào lỗi. Đấy và cuối cùng là in ra connect.
Con connect thành công rồi và out.
Ok. Như vậy chúng ta đã ừ thiết lập xong cái
lý vòng đời cho cái ứng dụng của chúng ta. Đấy.
Tiếp theo thì chúng ta sẽ khởi tạo ứng dụng phát API.
Khởi tạo ứng dụng FastAPI để chạy ứng dụng.
title và description này, version này và chạy cái quản lý vòng đời.
Ok. Sau khi đã khởi tạo ứng dụng xong thì chúng ta sẽ khai báo
CRS Meware để cho phép frontend có thể truy cập vào endpoint của backend.
Đấy. App.
middleware này call middleware
origin cái port của frontend vào.
Tiếp theo đó là cho phép xác minh allow credential và cho phép tất cả các cái method.
Rồi vào chính vào nội dung chính này chúng ta sẽ bắt đầu xử lý các cái API end point để xử lý các cái yêu cầu.
Đầu tiên là khai báo phương thức get. Đấy,
này thì lấy các cái thông số của ứng dụng bao gồm như là
khỏe của là trả về các cái thông tin như status.
Rồi tiếp theo là khai báo cái point đề chuyển đổi
chỉ ví từ dạng H sang dạng B 32. Đấy cái này là
tên là API convert address đi với hàm là convert address này.
Đấy.
Ừ. Hex dạng xr
theo là chung thích nhá. Đấy. Chai
address dạng bài này. Sau đó thì chuyển về dạng
p 32 return.
Tiếp theo là chai kết except. Nếu như có lỗi rồi không thể chuyển đổi đây này.
và except trả về full lỗi.
Rồi tiếp theo thì là point lấy thông tin của hợp đồng thông minh.
Đấy định nghĩa tên là geti script info đấy. Định nghĩa hàm
script info lấy thông tin của hợp đồng thông minh này.
cái trường dữ liệu của hợp đồng thông minh mà chúng ta đã lấy ra. Đấy.
Tiếp theo là API endpoint lấy thông tin từ ví.
Lấy các thông tin từ ví ra đấy. Ừ. Định nghĩa endpoint là API wallet address. Đấy,
là get valid info rồi. Try.
Tiếp theo thì chúng ta sẽ thực hiện convert address từ dạng ấy ra.
Nếu như nó không phải dạng B 32 thì chúng ta sẽ phải convert.
Tiếp theo là lấy UTxO và tổng hợp ba lần.
Tiếp theo là try vấn ừ thông tin của asset.
Khởi tạo asset bằng rỗng này. Duyệt tất cả UTxO for UTxO in UTxO này. Duyệt tất cả
cái multi access trong UT.
Đấy.
Xong. Duyệt tiếp từng cái access trong multiet.
lại tiếp tục duyệt các cái thông tin của access
up vào cái access của chúng ta rồi
valid response và except lại.
Tiếp theo thì đến với những endpoint đó là giao dịch mint token.
gửi yêu cầu mint token với địa chỉ ví và các trường liên quan.
Đấy, backend sẽ thực hiện tạo unsigned trans và trả về CP H nà.
Và cái thông tin trả về sẽ bao gồm body change section và witness set.
transaction đấy. FN ký transaction bằng ví và gửi
set. Cái nữa thì tí nữa đến bước submit mình sẽ
chú tích đó vào rồi định nghĩa API mint.
Cái này sẽ là một response mod trả về cho thằng font khi nó gửi cái yêu
mint đấy.
Create mint transaction này. Viết hàm mint transaction đầu vào là request.
Ừ, tức là nó gửi lên thông tin của cái giao dịch mint. Đấy,
trong cái bước này thì chúng ta sẽ thực hiện tạo cái giao dịch chưa ký.
Đầu tiên vẫn là chai kết này.
Chai chai và except.
Rồi đầu tiên vẫn bước quen thuộc giống như phần trước đó thôi. Nhưng mà có thêm bước là
như mint script hoặc là store script không có ấy thì sẽ ra cái lỗi.
Đấy.
Rồi vẫn là lấy địa chỉ của
chiếu đối chiếu chư ký ấy. Tiếp theo là lấy
key của lấy UTxO của ví người dùng.
Đấy. Tiếp theo là query rồi. Nếu không có thì race lỗi.
Ray lỗi nà. Bước tiếp theo vẫn là tạo asset name. Đấy, từ cái
name truyền vào request ấy, chúng ta lấy ra và chuyển nó về dạng buy
nó đi và tạo refer access name đính được prefix vào.
Và tiếp theo là lấy proy ID vẫn là rất quen thuộc trong phần mint ở trong phần off chain. Đấy. Tiếp theo là create datum.
Rồi tiếp theo vẫn là tạo multiass access.
Ừ. Nói chung là phần này khá là giống với các bài trước nên mình sẽ làm nhanh nhá. Đấy.
Rồi tiếp theo là tạo redeemer vẫn rất quen thuộc. Tiếp theo là tính value cho từng tài sản.
Đấy cho cả multiac cho cả user reference token và
token. Tiếp theo là tạo builder rồi builder add input này vẫn rất quen.
Tính kèm thông tin giao dịch mint vào giao dịch mint này. Adminting script này.
Rồi tiếp theo là add output.
Phần này vẫn nói chung là giống y hệt phần buill giao dịch lúc chúng ta code off trên đấy.
Đấy. Tiếp theo là ừ yêu cầu chư ký này tương ứng với cái ờ public key head của cái địa chỉ. Đấy.
Tiếp theo là đây. Cái này thì hơi khác một chút.
Đây bắt đầu khác rồi. Đấy.
Thay vì cái cái kia kìa chúng ta ký giao dịch thì đến bước này thì chúng ta sẽ phải khởi tạo riêng cái trans body riêng. Đấy.
Ứ. Tiếp theo là khởi tạo witness set này.
Mình sẽ chú thích lại đây. transaction body có các thành phần đó là
và witness set. Đấy, transaction body gồm các input, output, mint này.
Còn witness set gồm chứa các cái script này. Đấy, để sau này chúng ta phải tách riêng hai cái thành phần này ra để xử lý chữ ký.
Rồi tạo giao dịch từ hai cái đối tượng trên.
Rồi tiếp theo là chuyển về STB.
Và cuối cùng là trả lại cái giao dịch đã được build nhưng mà chưa có chữ ký về
end. Đấy, xong cái bước gọi là
định nghĩa ờ endpoint cho yêu cầu mint rồi.
Đấy, thì kết quả của cái ừ yêu cầu mint thì chúng ta sẽ phải trả về
frontend một cái cấu trúc dữ liệu ờ transaction dạng CP này. Đấy. Đấy. Thì
cái transaction dạng Cort này nó sẽ có hai thành phần là thành phần đó là transaction body và thành phần Wness
Đấy. Thì ở bên frontend chúng ta sẽ ký và
cái chữ ký vào WN set này và gửi lại bên backend. Đấy, tí nữa chúng ta sẽ xử lý phần đó.
Đấy. Ok.
Mọi người đã hiểu ý tưởng chưa? Tiếp theo nhá, chúng ta sẽ đến với Endpoint tạo giao dịch update Metat Metadata
khai báo API update response module. Đấy, trang
response sử dụng cái module ở trên kia nhờ.
Đấy. Tiếp theo là khai báo cái hàm tạo update transaction này. Hàm này sẽ có
số đầu vào là request update. Nó sẽ gửi cái request lên bao gồm cái thông số
thông số mình đã khai báo trên mod update request ở trên kia kìa. Đấy và
ta sẽ nhận lại và build cái giao dịch uns đấy. Tạo giao dịch uns và gửi lại cái
dịch defont ký. Đấy vẫn là chai vẫn khá là quen thuộc.
Thì phần này thì mình sẽ đi nhanh nhá.
nhanh không không nói rồi
là check xem có tồn tại script không đấy
theo vẫn là lấy địa chỉ và lấy public key head để
khớp chữ ký này. Tiếp theo vẫn là lấy polo id ra tạo token name này.
Đấy tạo ref tượng asset name này.
Đấy tiếp theo vẫn là tìm UTxO trong store address.
Đấy thì phần này mình sẽ ấy nhanh giống phần code off trên hôm trước thôi.
Tiếp theo vẫn là xử lý datum xử lý datum
lấy public key của các thông tin của datum để khởi tạo datum mới.
Rồi tiếp theo là tạo datum mới này. Vẫn giống như phần viết code trên cho cái
update metadata ấy. Đấy. Tiếp theo là tạo redeem
build transaction và build add input address.
Và tiếp theo là add input script.
Rồi tiếp theo vẫn là ừ tạo value cho
UTxO chứa ref token. Đấy.
Rồi tiếp theo vẫn là build add output vẫn là yêu cầu chư ký.
Rồi bước này thì vẫn tương tự như phần mình vừa giải thích trong mint ấy. Thì tx
chuyển cái transaction sang bên frontend để người ta ký ấy chúng ta sẽ có hai thành phần. Thành phần đầu tiên đó là TX
và thành phần thứ hai đó là withnet set. Đấy.
Đấy. Thì chúng ta sẽ build ờ witness set nhưng mà không có chữ ký
frontend nó gắn thêm cái chữ ký vào đấy. Và cuối cùng là tạo đối tượng transaction.
Tiếp theo là chuyển về kiểu dữ liệu.
Và cuối cùng là phản hồi trả về cho frontend.
Kết quả ừ gọi là thông tin của transaction chưa có chữ ký. Đấy, tương tự như vậy
ta cũng sẽ sang phần định nghĩa API endpoint cho cái B toen đấy.
Nó sẽ response thì trả về các trường chúng ta đã
báo trong phần mod trước đó ấy. Đấy, tạo hàm này.
Request cũng nhận vào kiểu dữ liệu theo kiểu màu đồ chúng ta đã khai báo trước đó.
Rồi vẫn rất giống với mint và update cụng trai và except.
Rồi vẫn là xử lý build giao dịch.
Đầu tiên vẫn là kiểm tra xem store script có tồn tại hay không.
Đấy. Tiếp đến đấy là lấy thông tin của public key head tương ứng với địa chỉ và
tên tài sản từ cái trường token name truyền vào.
Tiếp theo là tạo refer và user token name để tạo multi access trong bước tiếp
Tiếp theo vẫn là query UTxO từ store address.
Đấy.
Tiếp theo vẫn là xử lý datum.
Đấy,
Datum thuộc kiểu CIP-68 datum thì chúng ta sẽ lấy ra cái thông tin
tablet key của Honor để sau này đối chiếu chư ký. Ấy tiếp theo là
những cái a UTXO của
trong địa chỉ của ví địa chỉ ví của user.
Đấy những bước gọi là build giao dịch ấy nó tương tự trong phần code off trên luôn
trong phần này mình sẽ không giải thích nhiều về nguyên lý cả.
Đấy, great redeem này vẫn có hai phần ừ gọi là
bơ thì phải chi tiêu cái toko trên store address. Đấy, và sau khi chi tiêu
thì chúng ta phải hủy hủy bỏ cái token đó. Rồi tiếp theo là tạo builder add input address.
add input script và lấy input từ user
thực hiện đính kèm thông tin bơ vào giao dịch burn đấy và adminting script
yêu cầu chư ký và vẫn là giống như là mint và burn thôi à
và update ấy cũng build gọi là transaction body đấy sau đó thì build
có chữ ký ấy và cuối cùng là tạo transaction chuyển về C và phản hồi lại frontend.
Đấy rồi ok. Ờ mình sẽ tổng kết lại một chút nhá.
Trong cái ba cái API endpoint cho mint này,
này, B này thì mục tiêu của nó là trả về cái thông tin transaction chưa
chữ ký cho frontend. Đấy để về frontend nó thực hiện ký bằng ví trên trình
và submit lại cái giao dịch lên backend để backend hợp nhất chứ ký và
lên on trên. Đấy thì ba cái API endpoint này xử lý như vậy. Tiếp theo thì chúng ta sẽ thực hiện định nghĩa cái
ờ nhận cái giao dịch gửi lên backend sau khi đã được bổ sung chữ ký từ frontend. Đấy,
nghĩa API post đấy.
Tạo hàm này.
Tiếp theo là có một chút chú thích.
Đấy. Tiếp theo là chai và get except.
Mình cứ quen quen bên note dây note dây s.
Rồi đầu tiên chúng ta sẽ thực hiện load lại transaction gốc từ CP chứa body và
set nhá.
Load transaction góc từ CBOR đấy.
F báo backtx này bằng transaction from CBOR.
Đấy.
Tiếp theo là lấy ra withnet set
wit with set bằng transaction with set from CBOR.
từ frontend. Đấy.
Rồi tiếp theo thì chúng ta sẽ hợp nhất hợp nhất cái
ký vào witness set.
backendx nè chrang session withnets nè đấy
ví có trả về chữ ký v hãy thêm vào witness set
nếu ví trả về kỳ
Ứ trong trường hợp này sẽ có hai trường hợp. Một là backend.
Ừ.
Nhiều lúc ấy nó có chế độ là multiic đấy. Đấy thì trong trường hợp đó thì backend có thể có thêm các chữ ký khác.
Đấy nên chúng ta cũng cần phải quét thêm cái điều kiện này.
Đấy trong trường hợp multi nhá. Multi
Nếu như tồn tại
chúng ta sẽ gộp vào
Thực hiện gộp này.
V key này. Đấy, xing v cộng new key đấy.
Chúng ta sẽ gộp vào. Còn nếu không thì chúng ta vẫn gộp bình thường thôi.
Thì phổ biến thì đa số là backend sẽ không có trừ ký đâu. Đấy.
Đấy.
gán lại gán lại cái final witness set bằng cái chữ ký của valid ấy. Và cuối cùng là gắn vào transaction.
Gắn lại vào transaction.
Rồi bước cuối cùng là submit.
và tx context submit này kiểu dữ liệu
phải là CBOR và cuối cùng là phản hồi lại.
Rồi như vậy thì chúng ta đã xong những cái phần quan trọng của cái những cái yêu cầu đến từ frontend. Đấy,
xin nhắc lại một lần nữa, mặc dù nó tốn thời gian nhưng mà mình nghĩ là điều này sẽ giúp cho mọi người hiểu hơn. Đấy,
là on nó chưa được xây dựng thư viện Cardano
môi trường máy client. Đấy, chính vì thế
khi code cái ví dụ án này ứ mình đã thiết kế cái backend để xử lý xây dựng
dịch và thực hiện xây dựng giao dịch với cái
transaction là chưa có chữ ký và gửi về frontend. Đấy, frontend sẽ thực hiện
bằng cái ví được cài đặt trong cái extension của trình duyệt ấy. Đấy. Và
lại cái giao dịch đã có chữ ký lại bên backend. và backend sẽ thực hiện xử lý cái chữ ký và submit giao dịch lên
Đấy, đấy là điểm khó nhất mà cái bài toán ừ triển khai một cái app ừ
gọi là minh họa thực tế ấ ngay trên giao diện về các tính năng ờ của cái
CIP-68 này. Mình thấy là đấy là điểm khúc mắc nhất. Và cái bài học này nó làm
mọi người và mình cũng đã chia sẻ cái giải pháp đó rồi đấy. Tiếp theo thì chúng ta sẽ định
một số cái point IPI cần thiết khác như là lấy metadata của các cái
đấy. Get metadata
chai
và except T
Đầu tiên đó là vẫn là phải kiểm tra xem store address có tồn tại hay không.
Tiếp theo đấy là tạo token name từ cái thằng request người lên đấy.
Từ cái thằng tiếp theo vẫn là tạo cái reference access name từ cái token name. Đấy,
một số cái thông báo ra màn hình console.
Tiếp theo đó là tìm UTxO. Đấy,
các UTxO trong hợp đồng thông minh.
Nếu như có thì hiển thị xem có bao nhiêu cái duyệt.
nếu đóng lại.
Nếu như UTxO có multi access này thì lại tiếp tục duyệt trong multi access các cái item.
Đấy, xong in ra một số thông tin như là
theo là tiếp tục lại duyệt trong cái access item
in ra những cái thông tin có access
xử lý thêm Ah
này thì nếu datum của kiểu dữ liệu thuê
chúng ta sẽ chuyển nó về dạng datum CIP-68.
Rồi tiếp theo là nếu datum là kiểu dữ liệu có thể đọc
chúng ta sẽ thực hiện convert metadata đấy.
các cái trường trong metadata
item hai chấm này
code và Lu
El
Sau đó thì khởi tạo value metadata và in ra
ra metadata.
Rồi cuối cùng là return
Nếu không thì không tìm thấy. Đ
cùng là return not file.
Ok.
Tiếp theo đó là chúng ta viết thêm một cái import liệt kê
kê tất cả các cái CIP-68 token
hợp đồng thông minh tương ứng với
chỉ store list
này.
Vẫn phải check tồn tại store hay không. Khởi tạo token bằng rẫm.
Tiếp theo lấy các ut vẫn là duyệt
những các cái UTxO trong hợp đồng và lẫy
Rồi. Ok.
Bước tiếp theo là chạy server rồi và khai báo khởi tạo thêm một cái ha
init để import export tất cả các cái file ra không cần. Ok,
ta thử chạy xem nào.
Ừ. À để chạy được thì chúng ta sẽ phải có một cái file run server chứ. Run server, run backend.
Hai bóng run backend chp.
Đầu tiên vẫn là import này. Thêm một số đường dẫn vào.
Thêm đường dẫn của thư mục backend vào môi trường.
Đấy, mục tiêu của việc này đó là thư viện giúp thêm đường vẫn, nhập các
trong dự án đấy để đảm bảo các module dễ dàng được gọi trong dự án.
và chạy chạy thôi. Đấy rồi chúng ta thử chạy thử xem nào.
python run_backend.py.
Lỗi gì đây?
trên context bằng non à
trên context đây H
context này. context
nhầm rồi mình lại thêm cái phím enter vào đây. Ok.
đây?
Och trên context này apt
nhầm nhầm blog for project đi. Ok rồi.
Nào.

## Part 2 - Backend run
Link: https://www.youtube.com/watch?v=_4NE9cFxmhU

Vẫn lỗi nhở. Xem nào. Main nà.
Network network token mismatch không đúng network à?
Xem nào. Network network bằng pre
à. Ok hiểu rồi.
Do cái này nó được gán bằng network.testnet rồi chứ không phải preprod. Đấy chúng ta phải sửa cái này
Ok rồi. Ok.
Như vậy backend của chúng ta đã chạy thành công rồi này. Đấy đã tìm thấy file plutus này đã
được cái plutus script thành ID rồi đã có address của store rồi. Ok.

## Part 3 - Frontend coding (no demo yet)
Link: https://www.youtube.com/watch?v=5k7Esch4UQE

Ok, sau khi backend đã code và chạy thành công rồi, bây giờ thì chúng ta sẽ thực hiện code frontend.
Đấy thì như mình đã giới thiệu thì frontend
ta sẽ dùng ờ thư viện là next JSJ Code và sử dụng chuẩn CIP-30 để thực
các cái thao tác của ví đấy để ký giao dịch và kết nối ví trên trình duyệt.
Đấy, chúng ta sẽ tạo một cái terminal mới để cái con backend nó vẫn chạy đấy.
Ừ. CD vào CIP-68 rồi
thì mình sẽ bắt đầu vì là
trình code frontend nếu như chúng ta thực hiện code cả giao diện ấy nó khá là tốn thời gian. Chính vì thế mà mình đã
ra một cái template giao diện frontend phục vụ chúng ta. Đấy,
đấy chưa có code logic hay gì,
có các cái dịch vụ như là ờ build trí giao dịch hay là viết cái hàm
lý thu thập dữ liệu. Đấy, chính vì thế mà mình cũng đã tạo ra một cái template đã có giao diện rồi và chúng ta
việc vào đó và code thôi. Mọi người có thể lấy cái link này và clone cái template đấy về nhá.
Git clone rồi tạ clone về.
Ứ khi clone về chúng ta vào CD template frontend và chạy
install npm install để thực hiện install các cái thư viện cho frontend.
Thì trong cái file backkit. này này mình đã khai báo khá là đầy đủ những cái thư viện cần thiết.
Đấy mọi người chỉ việc chạy cái file chạy cái câu lệnh npm install sẽ tự động
các cái thư viện trong của dự án về đấy. Đấy.
Ok, như vậy là chúng ta đã cài xong các cái thư viện rồi. Bây giờ chúng ta sẽ chạy thử dự án và kiểm tra trên trình duyệt xem nào.
Dùng câu lệnh npm run dev.
Rồi xem trên duyệt xem có chưa. Ah.
Ok, chúng ta đã có giao diện rồi. Ờ tuy nhiên thì giao diện này thì mới chỉ là giao diện tĩnh thôi. Nó chỉ là một cái
thôi. Đấy. Ờ để mà có giao diện chuẩn ấy, chúng ta sẽ phải thực hiện viết các cái logic. Ví dụ như là tích
ví này. Sau khi tích hợp ví và connect ví xong sẽ cho ra một cái giao diện cho người dùng, giao diện client
người dùng. Đấy, còn đây là giao diện dành cho những cái đối tượng vào mà chưa connect ví. Đấy, bây giờ chúng ta sẽ quay lại xuộc code của dự án này.
Chúng ta sẽ xem lại cái giao diện nó có những cái gì nào.
Đấy. Đấy, có các thư mục như là thư mục application này. Đấy, trong đấy có các định nghĩa layout.
Đấy, có B đấy, có home content.
Đấy, thì trong cái template này thì mình cũng đã soạn sẵn những cái
to do để mọi người có thể hiểu được những cái bước mình sẽ thực hiện code logic. Đấy.
Đấy. Layout này. Component thì có các cái moda để bơ này, mint form này, moda để kế thừa đến các moda nhỏ.
Đấy, list các này, các cái provider đấy.
transaction status để hiển thị thông tin giao dịch có thành công hay không.
form gọi là để update metadata này.
Trong đây thì cũng có các cái chú tích to do để hướng dẫn viết logic code này.
Ừ đã có component wallet connect để thực hiện tích hợp wallet integration với ứng
này context để thực hiện truyền dữ liệu của wallet trong cả ứng dụng này.
Đấy, tai là dùng gọi là đây là định nghĩa wallet API theo chuẩn CIP-30 dùng cho các dự án này.
Đấy, bây giờ thì mình sẽ đi sâu vào code luôn.
Đấy, bước đầu tiên chúng ta sẽ thực hiện bước valid integration.
Đầu tiên đó là vào file ừ.
Chúng ta sẽ vào hoàn thiện cái wallet context để thực hiện truyền cái các cái thông tin liên quan đến wallet trong
bộ các cái trang của ừ giao diện của người dùng. Đấy thì ở đây thì mình cũng đã khởi tạo sẵn những cái state.
Đấy. Tuy nhiên thì những cái logic như là lấy các cái thông tin như là kiểm tra
trình duyệt có cái ví đã cài extension ví trên trình duyệt
chưa này. Thứ hai đó là get cái address của Wall này.
Đấy thì đầu tiên thì chúng ta sẽ thực hiện hoàn thành cái to 1 này.
Đấy, mục tiêu của nó là kiểm tra các cái ví của Cardano đã được cài đặt trên trình duyệt hay chưa. Đấy, chúng ta sẽ khai
con ST nà. Đây đã có hàm sẵn rồi viết vào đây.
On st use n trả về info này.
Ty of Windows T of Windows undefile
hoặc Windows Cano return rỗng này.
Rồi tiếp theo là ừ
support wallet sport wallet này.
Ừ mình thấy là cũng khá là tiện ấy. Xong tiếp theo là lọc này. Wall này. Available. Ok.
xong phần kiểm tra xem trình duyệt đã cài các cái extension của các cái ví của Cano hay chưa đấy. Đấy. Tiếp theo.
Tiếp theo thì chúng ta sẽ thực hiện query cái a
từ cái a wallet.
Đây đã có hàm này. Get wallet nà. Mình giải thích khá là chi tiết rồi.
Đây con ST address wallet con ST
bằng API.
Use address nè. Khá là tiện. If address ừ address
tại address
address.Llen Lần 0 nà
tại vị trí 0 và con ST unuse address này.
Get address này.
If unuse address nàress L này return này. Đấy.
L return. Ok.
Thì
sẽ giải thích một chút nhá. Theo chuẩn CIP-30 list ấy thì nó có ba loại address. Loại đầu tiên là use address.
Đấy đâu theo chuẩn ship giải thích một chút nhá.
Giải thích một chút. Ừ.
chuẩt CIP-30
thì có ba loại address
ba loại address này đầu tiên là use address
là đã từng giao dịch thứ hai là unus R chưa chưa từng giao dịch và thứ ba là
address rate là nhận tiền thừa. Đấy thì mỗi wallet thì nó sẽ trả lại một cái format khác nhau.
Đấy thì cái address của chúng ta ấy, address của CIP-30 này nó sẽ trả về là dạng ha
và backend sẽ phải convert cái này về thành
là cái dịch vụ mà chúng ta đã thực hiện code cái API and point cho cái convert sang back 32. Đấy. Đấy.
Tiếp theo thì chúng ta sẽ tiếp tục code phần connect valid. Đấy. Thì ở đây cũng khá là chi tiết mình hướng dẫn từng bước
Đầu tiên là check này xem có tồn tại hay không. Nếu như có thì lấy ID.
Nếu không tồn tại thì trả về và set connect.
Và tiếp theo là set các cái ừ các cái gì nhờ?
Ừ state để dùng cho để dùng cho toàn bộ dự án. Đấy, triển khai thôi.
Ừ, đầu tiên đó là connect wallet này. Use goback này. Đấy.
Ifall id à đâu if
duyệt tồn tại wallet thì chúng ta sẽ không tồn tại ấ thì chúng ta sẽ báo ra.
Đấy. Còn nếu nếu tồn tại thì chúng ta sẽ thực hiện gán cái wallist
cái wallet này.
Rồi nếu như Wallist tồn tại thì chúng ta sẽ lấy cái one list đầu tiên này này.
Nếu tồn tại, nếu không tồn tại thì lại báo tiếp
Set connecting to er bằng nun. Rồi tiếp theo là
con sti away valid
Con st address kiểu ha này.
Rồi tiếp theo là set các cái state.
Rồi tiếp theo là lưu cái a valid ID vào cái bộ nhớ local của trình
local storage của trình duyệt
thông báo ra đấy.
Finally, set connecting bằng full. Ok,
thực hiện xong cái connect wallet nhá. Hàm connect wallet. Tiếp theo disconnect wallet này.
Disconnect wallet thì cũng đây. Viết tiếp vào đây mình đã
bị khá là chi tiết rồi. Sử dụng compact này các cái state bằng hoặc là nun. Đấy.
Rồi set er bằng nun rồi. Loco storage remove xóa đi.
Rồi tiếp theo thì chúng ta sẽ triển khai
ờ cái ờ cái gì nhở? Hàm gọi là ký giao dịch.
Đấy. Ứ chúng ta lại phải nhắc lại đấy. Thằng
backend đấy. Nó sẽ trả về cái giao dịch trả về cái thông tin giao dịch đã build
cho frontend và frontend nó sẽ ký cái giao dịch đấy. Đấy.
Đây chúng ta sẽ triển khai vào đây. Đầu tiên là if wallet API.
Rồi kiểm tra xem đã kết nối wallet chưa. page
xong return wallet API.
Đấy, kết thông báo lỗi
bỏ cái true này đi.
trong cái a hàm kết đã bắt lỗi rồi.
Rồi ở đây nhá mình sẽ giải thích lại một chút.
Ờ cái function ký trans này này thì đầu vào nó chính là cái TX ở dạng đã được
về sau khi người dùng gửi cái yêu cầu mint hay là update hay là burn ấy. Đấy
cái TX này nó là cái transaction chưa có chữ ký đấy.
Và khi nó thực hiện cái hàm này nó sẽ
ra một cái sport
tạo ra một cái transaction dạng sport đấy. chứa chư ký đấy.
chữ ký xong và gửi lại bên aend xử lý một chữ ký.
Tiếp theo nhá, chúng ta sẽ viết thêm một cái hàm nữa là hàm how to reconnect.
Đấy, đây thêm vào cuối nà. Use effect nè.
Reconnect use effect. Save wallet. Đấy, get id này.
Nếu là Windows thì chúng ta sẽ save lại và connect cái wallet đó.
Điều này sẽ làm cho mỗi lần chúng ta ừ mở lại ứng dụng trên web ấy thì nó sẽ tự
connect lại những nếu như trong trình duyệt của chúng ta vẫn còn lưu cái wall trong những lần kết nối trước đó.
Ok. Sau khi chúng ta đã xử lý cái Wall Context rồi thì chúng ta sẽ đến với bước tiếp theo
là ờ code cái nút collect wallet đấy.
Ừ. để thực hiện ờ chọn ừ để thực hiện
vào cái nút kết nối wallet và kết nối ấy kết nối ví ấy. Đấy thì chúng ta sẽ vào code này under collect viết vào đây.
Ừ connect wallet này. Đấy set drop down.
Kết nối xong thì drop down bằng full. Đấy.
Rồi rồi chúng ta sau khi set dropdown xong nhá.
Rồi bây giờ chúng ta set dropdown xong chúng ta sẽ quay lại trình duyệt xem có gì khác không nhá. Tức là chúng ta đã thực hiện gọi đến cái gì nhở?
hàm connect wallet ở trong cái context rồi đấy. Và đã gắn cái component
cái giao diện người dùng rồi. Bây giờ chúng ta sẽ vào thử xem đã thực hiện được kết nối Wallet chưa.
Đây kết nối ví này mình đang có ví đấy. chọn
Ok. Giao diện đã có này. Đấy. Có thông tin của cái form để mint này rồi nhá. Đấy.
Rồi chưa có NFT nào. Ngắt kết nối.
Kết nối lại. Click. Rồi làm mới này. Không có gì. Ok chưa?
Rồi chúng ta sẽ đến với bước tiếp theo.
Bước tiếp theo của chúng ta đó là thực hiện cái xử lý các cái hành động
dịch mint. update và bớn. Đấy, đầu tiên vào mint trước đây. Thì đầu tiên thì
ta sẽ phải thực hiện xây dựng cái a
trình xử lý a phần mint bao gồm các phần như là thu
thông tin này, gửi cái yêu cầu mint lên backend và backend sẽ xử lý.
lý trả về data này. Đấy. Đấy. Thì bước đầu tiên
ta sẽ thực hiện code
Kiểm tra xem đã connect wallet hay chưa. Đấy. Nếu connect wallet rồi thì
báo kết nối Wall. Đấy, xong bắt đầu vào rồi. Try này.
P đâu? final đấy.
Chai đầu tiên thì chúng ta sẽ test loading.
Đấy, khi nhấn cái nút mint ấy nó sẽ mở một cái
ra nó quay đấy. quay tạo hiệu ứng và set cái status này để thông báo
màn hình này. Đầu tiên là build transaction này.
Đấy, response. Chúng ta sẽ định giữa một cái respond và fết cái
API đây.
S gọi đến cái endpoint API mint này là đúng chưa? API mint này.
Đấy cái này method là post đấy. Method là
là content type và application chon
thì có kiểu là jon.
File nè. Đấy,
file thì thu thập các cái trường để gửi lên backend bao gồm wallet address
token name là description này. Các trường này đã được thu thập thông qua các state này, token name, description này.
Ok chưa? Rồi tiếp theo là đóng cái hàm này lại đã có respond.
Tiếp theo thì lấy cái data từ cái phản hồi rồi.
Awet response chấm thằng chơ này.
không có gì thì thông báo lỗi này.
Đấy bạn này thì hơi hơi ấy một chút nhá.
Mình định nghĩa lại kiểu component mean này. Đấy,
nghĩa lạnh kiểu Hva
Thôi cái đấy tí fix sau vậy. Bước thứ hai là bước ký giao dịch này.
Ký giao dịch thì set status này.
Đấy và thực hiện ký
bước ba là submit giao dịch lại backend. Đấy lại tiếp tục set nè.
Đấy lại tiếp tục submit response method.
Và cuối cùng là in cái thông tin ra ngoài màn hình.
Đấy. Tiếp theo là xét cái form rỗng
thành công rồi.
Rồi do mình thiếu dấu ngoặc đấy. Xong rồi nhá.
Mình sẽ nói lại đoạn này một chút.
Ừ. Đầu tiên thì chúng ta nói chung là mấy cái này là mấy cái hiển thị thôi. Đấy hiển thị nên
sẽ không nói mấy cái này. Đầu tiên thì chúng ta sẽ gửi một cái request lên cái a backend. Đấy, backend
với yêu cầu là gửi các cái thông tin như là valid này, token này và yêu cầu là mint. Đấy, thằng API endpoint mint nhận
request này và nó xử lý nó sẽ build tranh session trong backend như lúc chúng ta đã
lý lúc nãy đấy. Đấy. Và nó trả về trả về cái transaction unsigned. Đấy. Đây này. Trả về transaction unsigned.
Đấy. Khi trả về transaction thì chúng ta sẽ gọi cái hàm size TX này mà chúng
đã xây dựng trong cái valid context ấy. Đấy. Đây này. Wall context đây này.
Đây.
Thì cái hàm này nó sẽ thực hiện ký ký cái giao dịch ừ ký cái giao dịch này.
Đấy và nó chủ động cập nhật cái witness set trong cái TXC này này.
Đấy.
Và sau khi chúng ta ký xong, tức là cái giao dịch đã có chữ ký rồi thì chúng ta
lại gửi lại cái đã có witness set đấy.
Lên cái gì nhở?
cái backend để backend thực hiện mt chừ ký và submit lên on trên. Đấy mình nhắc lại một lần nữa nhá.
Đầu tiên frontend gửi yêu cầu mint này bao gồm thông tin token và description này. Sau đó thì
sẽ trả về cái ờ cấu trúc ừ response bao gồm các cái trường như là TX Body đấy.
Ờ TX body này ờ TX WNE set này được gói
TXC đấy. Thì thằng witness set này nó sẽ thực hiện ký ký vào đấy.
Đấy.
Ký vào và nó tiếp tục nó gửi lại cái witness set CBOR cho backend.
witness set nó sẽ xử lý chữ ký bên backend ấy. Nó sẽ ừ lấy cái chữ ký của
wallet đá kỹ ấy trong cái witness set và nó gộp vào transaction và nó thực hiện submit lên giao dịch.
Đây chúng ta có thể xem lại cái hàm ký này.
Đấy.
Đây là của cái API shift
Đấy. Đấy.
Đấy. Cái a ừ mình sẽ nhắc lại một lần nữa. Cái a dự án này nó khó ở cái đó là cái xử lý tách cái giao dịch ra. Đấy.
Làm sao để khi gửi về frontend chúng ta sẽ có thể ký được ký được cái giao dịch đó và chuyển về
end. backend sẽ lấy được cái chữ ký và gộp vào giao dịch và submit lên on trên.
Ok, như vậy là chúng ta đã xong phần triển khai cái mint logic mint.
Triển khai xong cái logic mint này rồi nhá.
Chúng ta sẽ tiếp theo là chúng ta sẽ đến phần
Thì tương tự như vậy, chúng ta vào update moda này này. Đấy, tiếp tục triển khai logic.
Đầu tiên vẫn là phải trai chai và catch.
Đầu tiên vẫn là xét các cái hiệu ứng đấy.
Rồi gửi request AP này API P này.
Chúng ta sẽ gửi lên token name và wallet address.
À đâu cái này là bơ chứ mình nhầm mình nhầm.
Update đây. Update đây. Update đây.
Bằng update. Đấy.
Rồi lấy data lại tiếp tục xử lý chữ ký thôi.
Rồi tiếp tục.
Tiếp tục lấy ra chữ ký này và thực hiện ký.
Ừ, mình sẽ nhắc lại một lần nữa thì cái TXC ấy nó sẽ có hai thành phần. Thành
đầu tiên đó là TX body và witness set. Đấy. Thì cái hàm hàm size TX này
Đấy. Cái hàm size TX này nó sẽ tự xử lý
cái ký cho chúng ta đấy. Tự xử lý ký cho
ta vào cái TXCP trả về đây này. Và nó sẽ trả ra cái witness set đã bao gồm
ký của Wall. Đấy, mình sẽ nhắc lại một lần nữa để mọi người nắm bắt chi tiết hơn.
Vì nãy trong phần mint ấy mình cảm thấy là mình nói chưa thực sự clear. Đấy, tức
cái hàm size TX này đấy, đầu vào tham số của nó là cái transaction,
là full cái transaction ở dạng JB mà chúng ta đã xử lý bên backend đấy.
Thì nó sẽ nhận vào là cái transaction dạng CBOR nó sẽ chủ động xử lý ký và trả
cái witness set. Đấy, thì sau khi hàm này nó chạy xong rồi này, chúng ta không cần quan tâm nó xử lý như thế nào nhá.
Đấy, chúng ta chỉ quan tâm là chúng ta cho nó vào đầu vào của nó là cái trang
ở dạng đã được xử lý bên backend. Đấy, đầu vào là transaction là dạng C đã xử lý bên backend.
Và nó kết quả của nó cho ra witness set đã có chữ ký của Wall. Đấy mọi người chỉ cần hiểu thế thôi.
Sau đó sau khi có witness set rồi nhá.
Tiếp theo bước tiếp theo này. Đấy chúng ta sẽ lại submit một lần nữa cái
session C4 này quay lại backend.
cái witness set core đấy. Tức là cái cái này này nó sẽ tự xử
cho chúng ta để cho ra một cái đối tượng gọi là witness set. Đấy để chúng ta chuyển lại trong cái đối tượng
set đấy. Nó sẽ có chữ ký của Wallist.
Mọi người chưa? Có cần mình mở lại code backend để nói lại không? Ok. Mở lại code backend để nói lại một chút nhá.
Đây đâu nhở? Xử lý chữ ký nhận về cái
cầu submit đâu nhỉ? Đây nhá. Nói lại cái đoạn này đây nhá. transaction C4 này này. Nó là cái transaction có hai thành phần body và witness set. Đấy.
Đấy. Thì quay lại đây thì nó sẽ trả về
trả về cái gì nhờ? Đây cái redond này nó sẽ trả về cái TXC chính là cái thằng này.
Đấy đã được chuyển sang CBOR.
Thì trong cái thằng này nó sẽ có hai cái đối tượng là TX body và witness set.
Đấy thì khi thằng này nó xử lý cái hàm size này này, nó xử lý cái kiểu dữ liệu
CBOR này, nó sẽ tự xử lý và trả ra cho chúng ta cái kiểu dữ liệu Wi Net đã có cái V kỳ.
Chúng ta không cần quan tâm nó xử lý như thế nào đâu. Đây là thư viện người ta làm, thư viện người ta thực hiện. Chúng ta không cần quan tâm, chúng ta chỉ cần
tâm cái hàm size này nó nhận vào là một đối tượng transaction ở dạng Core
nó trả ra cho chúng ta đối tượng WN set. Đấy, witness set này nó sẽ có V key của Wallet đã được ký. Đấy, ok.
Đấy. Thì cái hàm sau khi chúng ta ký xong nhá là chúng ta submit lại này.
Đấy, submit lại.
Ký xong chúng ta submit lại. Đây, submit lại đây. Đúng không? Request này cái này thì
TX là full các cái TX. Đấy, thì chúng ta gắn nhá. Còn cái wallet widnck
đấy thì nó sẽ lấy cái cnnet này và nó gán vào cái wallet widnet này.
Đấy thì trong cái wallet winnet này sẽ nó sẽ có cái v chúng ta đã ký đấy. Đấy
Xong cái a TXC này bởi vì nó được cấu tạo bởi hai
phần đúng không? transaction body và transaction webnet. Đấy thì sau khi chúng ta đã gộp cái chữ ký từ
Wall người dùng gửi lên rồi thì nó sẽ gụp vào đây. Nó thay thế cái WNET ban đầu kia kìa.
Đấy mình nói khá là chi tiết như vậy cũng mong là cũng mọi người sẽ hiểu rõ
Đấy. Ok. Tiếp theo là submit data.
Submit data này kiểm tra xem có suc hay không.
Đấy nhá.
Suc không? Nếu như suc thì chúng ta sẽ thực hiện close bỏ cái
đó đi rồi và phát bỏ.
Ok. Ừ.
Ok, đã xong phần update nhá.
Đã xong logic phần update. Tiếp theo thì chúng ta sẽ vào phần logic B. Thì cũng
khác gì mấy trong phần logic B này thì vẫn là gửi cái yêu cầu bơ lên bao
những cái thông tin như là toen muốn bơ chẳng hạn.
Đầu tiên vẫn phải thêm những cái rer này cho giao diện nó có sự trải nghiệm mượt mà. Ok. Gửi request.
Ừ. burn này gửi end point là burn API burn này tham số yêu cầu là token này tiếp
là nhận về data phản hồi
theo là nhận về data phản hồi à đấy tiếp theo là nếu data sucit
hiển thị.
Còn nếu không thì not vẫn là lấy cái a
set ra và thực hiện ký và trả về witness set đã có chữ ký đấy. Gọi lại
lại giao dịch đây. Submit lại txc
để gán lại cái transaction và wn
để gộp cái chữ ký vào TXC sau đó rồi lấy ra cái thông tin kết quả.
Và bây giờ là thông báo và thoát form.
Ok.
Rồi sau khi chúng ta đã viết sang viết xong một số các cái logic của cái
cái thằng gọi là mint b update ấy thì chúng ta sẽ có thêm một cái
bổ trợ cho cái giao diện của chúng ta như là hiển thị các cái asset theo chuẩn CIP-68 trong ví của chúng ta.
Đấy, chúng ta sẽ thực hiện đây nào. Đây triển khai ở đây.
Rồi đầu tiên sẽ loading này. Đấy, chai kết.
Rồi đầu tiên đó là gửi request lên
nhận lại response
này. P nè, point là API Wall, địa chỉ valid này.
Đấy.
Rồi tiếp theo đó là nhận lại data và nếu như không thành công thì return rẫm.
Còn tiếp theo là xử lý profit này. Đấy,
những cái access có profit là user token profit
decode ra dạng
thể đọc token name đấy.
Rồi tức là tên thì lấy là tên là xa nhưng mà hiển thị là hiển thị to nhá.
Đấy. Sau đấy thì set state rồi tiếp theo là load thôi.
Rồi chúng ta đã lấy xong.
Rồi tiếp theo có một số các cái phần như là cần phải load metadata
từng cái token một chúng ta cũng phải viết. Đấy.
Đây try này. Kết.
Đầu tiên thì chúng ta cũng phải query từ backend những cái metadata theo token name.
Đấy.
Tiếp theo là vãy ra.
Và nếu như thành công thì description sau đó thì xử lý metadata.
Nếu metadata data chmetion
metadata
như không phải thì là heading rồi.
Rồi tiếp theo là xét danh sách Đ
Ok.
Tiếp theo thì chúng ta sẽ code thêm một cái hàm gọi là hàm auto refresh khi mà
NFT thay đổi. Khi mà access nó thay đổi ấy, get hàm effect.
Đấy.
Rồi. Ok. Sau khi chúng ta đã hoàn thành xong các cái component rồi bao gồm các
component để phục vụ cho quá trình mint này đấy.
update này và burn
list các cái access và
các cái metadata, hiển thị metadata thì chúng ta sẽ tiếp theo đó là thực hiện
cái địa trí và
cái địa chỉ vào backend. Đấy, vì là theo chuẩn CIP-30 ấy, địa chỉ nó là địa chỉ dạng hexa.
Đấy, nên chúng ta cũng phải chuyển nó thành dạng.
Rồi chúng ta sẽ vào file Home Context này và thực hiện chuyển.
Đầu tiên thì chúng ta sẽ phải chce.
Ừ. Gửi request lên yêu cầu convert đấy.
Return này. Return này hình như trong ít đúng không? Ok.
Rồi tiếp theo là lấy ra data. Đấy.
Và nếu data success 32
Ok. Tiếp theo thì có một số các cái
tính năng như là lấy thông tin script từ backend như là ID của các cái access mà store address.
Chúng ta sẽ thực hiện luôn.
Vẫn là try. Try này.
Backet. Đấy,
là gửi request này.
Đấy, lấy data và set script info.
Rồi script info đã khai báo chưa?
info này.
Sao cái này lại không dùng được add script info đ Ah
address này.
Rồi mình thừa một giống ngoặc. Ok, xong rồi.
Như vậy là chúng ta đã code xong phần
diện. Mình sẽ tổng kết lại một chút phần code
đầu tiên. Đấy. Ừ. chúng ta đã vào thiết lập
các cái hàm trong phần Wallet Context để sử dụng trong toàn bộ ứng dụng bao gồm như là
kiểm tra xem trình duyệt đã cài đặt các cái extension cho các cái ví của Gano
chưa. Đấy. Thứ hai đó là lấy address
CIP-30 trả về dạng x dạng buy. Đấy. Đấy. Tiếp theo đấy là
ta sẽ thực hiện ờ viết cái a hàm connect wallet đấy.
Và disconnect wallet này và viết hàm ký ký giao dịch.
Đấy, ký giao dịch thì đầu vào của nó là transaction ở dạng core và nó sẽ trả về cái witness set. Đấy,
từ cái witness set đấy, chúng ta sẽ gửi lại backend để backend thực hiện gộp cái witness set vào cái witness set trong transaction.
Đấy để cái submit giao dịch.
Đấy sau đấy thì chúng ta cũng đã ừ gọi đến cái hàm connect wallet trong cái component connect wallet.
Đấy. Rồi tiếp theo thì chúng ta cũng đã viết logic phần mint.
Đấy, phần mint thì lộ trình của nó đấy là gửi yêu cầu lên là mint 1 access theo
CIP-68 ở bên backend với các tham số là token name và description
về một data phản hồi. Đấy, phản hồi này là có chứa transaction ở dạng Core chưa có chữ ký này.
khi a và dùng cái hàm size TX để ký ký và trả
cái witness set. Đấy, witness set tiếp tục được submit lại trên backend
với cái transaction CBOR này. Và bên backend sẽ thực hiện gục cái WN set
có cái chữ ký của ví vào transaction CBOR và submit lên on trên. Đấy,
với update cũng như vậy,
tương tự và bơn cũng tương tự.
Rồi sau khi chúng ta đã xong thì chúng ta có thêm một bước xử lý nhỏ nữa đó là
các cái asset của người dùng đấy theo chuẩn CIP-68.
xử lý hiển thị metadata.
Rồi như vậy đã xong
xong phần code đấy. Đấy.
Chúng ta đã xong phần code frontend rồi.

## Part 4 - Frontend demo
Link: https://www.youtube.com/watch?v=SJJrgRPWdu0

Ok.
Sau khi chúng ta đã code xong frontend rồi thì mình sẽ thực hiện demo ngay trên giao diện luôn.
Đầu tiên thì chúng ta sẽ test thử tính năng mint xem nào.
Demo demo mint ờ 1102 này.
Demo minấy mint submit giao dịch.
Ok. Đợi ký giao dịch. Confirm.
Confirm.
Đấy, giao dịch đã được mint thành công rồi. Chúng ta sẽ đợi để nó submit lên blockchain và nó sẽ cập nhật lại danh
cái cái các cái CIP-68 NFT của chúng ta. Chúng ta sẽ đợi.
Đấy,
diện cũng mình cũng chỉ thiết kế cái giao diện làm sao đủ dùng thôi.
Ok.
Ờ như vậy là ừ giao diện của chúng ta đã cập nhật thêm cái
mới rồi này. Mọi người có thể nhìn thấy nhá. Demo mint này version 1 nhá.
Đấy. Bây giờ chúng ta sẽ thử tính năng update metadata xem nào. Update metadata đấy.
Thử V2 đi. Cập nhật.
Confirm cái giao dịch. Confirm.
Ok. Xem nào. Thành công. Metadata đã được cập nhật. Chúng ta sẽ đợi để nó cập nhật xem nào.
Check trên Cardano Scan xem vẫn chưa có
chúng ta làm mới lại xem nào.
chuyển sang Version 2. Ok chưa? Rồi bây giờ chúng ta sẽ test tính năng bơ
B đây. Tôi đồng ý muốn xóa này. Xóa NFT này. Đợi và ký giao dịch thôi.
Rồi xem nào.
NFT đã được bơn. Ok. Chúng ta sẽ đợi một lúc. để giao dịch được submit lên on
đợi thì mình sẽ mở lại cái slide để Ừ,
lại cái slide để trình bày lại cho mọi người tổng kết lại cái bài học về chuẩn CIP-68 của chúng ta.
Đấy, làm mới xem nào. Ok,
bơn thành công rồi. Chúng ta xem lại trên Cardano Scan xem.
Ok, như vậy là giao dịch đã được bơn thành công là số lượng đã thành -1 này.
Đấy. Rồi bây giờ mình sẽ
kết lại một chút về cái bài học của chúng ta trong cái chuỗi ờ ví dụ thực tế
triển khai ờ toàn bộ một cái quy trình ờ chuẩn CIP-68 Dynamic Access
NFT trên Cardano nó như thế nào rồi như vậy thì trong Cái chuỗi video mà mình
hướng dẫn về cái CIP-68 này thì mọi người cũng đã hiểu được về cơ chế
động của CIP-68. Đấy, mục đích của nó sinh ra là giải quyết cái vấn đề
là nếu như chúng ta gắn metadata kèm theo cái transaction khi chúng ta thực
giao dịch mint các cái token hoặc là access trên hệ sinh thái thì nó sẽ tạo
một cái hạn chế đó là metadata đấy không thể cập nhật được. Đấy, cái CIP-68 nó được sinh ra nhằm khắc phục cái
đề đó. Đấy giúp chúng ta có thể update metadata một cách dễ dàng hơn thông qua cái cơ chế đó là mint một cặp
đấy một token là user token được
về ví của chúng ta còn một token gọi là reference token ứ token đó sẽ
metadata được lưu trong datum đấy và chúng ta có thể cập cập nhật metadata
qua cách cập nhật datum và ờ cập nhật datum trong tế cô chứa ref
đấy và trong cái chuỗi video hướng dẫn thì mình cũng đã ừ mô tả hướng dẫn
hành chi tiết về quy trình triển khai một cái ví dụ thực tế bao gồm đầu tiên đó là triển khai hợp đồng thông
này đấy mình cũng đã ờ chia sẻ khá là chi tiết trong cái logic thiết kế hợp đồng thông minh như
nào, thiết kế datum hay là thiết kế redeemer như thế nào. Rồi thứ hai đó là thực hiện code off trên để tương tác với
đồng thông minh bao gồm các tính năng như mint này, update metadata và burn.
Đấy và cuối cùng là video lần này video khá là dài đó là xây dựng một ứng dụng
stack de app đấy có giao diện đấy mọi người có thể mint update và burn cái
CIP-68 này trên giao diện đấy như vậy thì trong chuỗi video vừa rồi thì mình cũng đã chia sẻ cho các bạn khá
chi tiết mong rằng cái những cái hiểu biết những cái thực hành về cái chuẩn
CIP-68 này nó sẽ mang lại cho các bạn nhiều kiến thức bổ ích. Sau này các bạn ờ sẽ bước vào quy trình xây dựng các ứng
thực tế trên Cardano và áp dụng các cái chuẩn CIP-68 này. Thì mình rất
ơn mọi người đã theo dõi các video giảng dạy của bọn mình.
Về thời lượng thì nó khá là dài rồi nên mình cũng xin phép kết thúc video tại đây. Mình xin cảm ơn mọi người và mình xin chào mọi người.

