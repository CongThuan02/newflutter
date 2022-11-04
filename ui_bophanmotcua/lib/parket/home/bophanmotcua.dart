import 'package:flutter/material.dart';
import 'package:ui_bophanmotcua/parket/widget/appbar.dart';
import 'package:ui_bophanmotcua/parket/widget/search.dart';
import 'package:ui_bophanmotcua/parket/widget/thutuc.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomeScreen({Key? key}) : super(key: key);
  List<ThuTuc> thutucs = [
    ThuTuc(
      name: "Thủ tục 3. Phúc khảo điểm thi kết thúc học phần",
    ),
    ThuTuc(
      name: "Thủ tục 4. Kiểm tra kết quả học tập",
    ),
    ThuTuc(
      name: "Thủ tục 5. Nhập học trở lại đối với sinh viên nghỉ học tạm thời",
    ),
    ThuTuc(
      name: "Thủ tục 6. Thôi học",
    ),
    ThuTuc(
      name: "Thủ tục 7. Học chương trình thứ 2",
    ),
    ThuTuc(
      name: "	Thủ tục 8. Nghỉ học tạm thời",
    ),
    ThuTuc(
      name: "Thủ tục 9. Mở lớp theo yêu cầu (cho sinh viên năm cuối) ",
    ),
    ThuTuc(
      name: "	Thủ tục 10. Ghép lớp",
    ),
    ThuTuc(
      name: "Thủ tục 11. Rút bớt học phần",
    ),
    ThuTuc(
      name: "Thủ tục 12. Xác nhận học phần tương đương, học phần thay thế",
    ),
    ThuTuc(
      name: "Thủ tục 13. Xác nhận học phần tự chọn không tham gia tính điểm",
    ),
    ThuTuc(
      name: "Thủ tục 14. Đi thực tập sản xuất, thực tập tốt nghiệp",
    ),
    ThuTuc(
      name: "Thủ tục 15. Đổi địa điểm thực tập sản xuất, thực tập tốt nghiệp",
    ),
    ThuTuc(
      name: "Thủ tục 16. Làm đồ án tốt nghiệp",
    ),
    ThuTuc(
      name: "	Thủ tục 17. Bảo vệ đồ án tốt nghiệp (dành cho sinh viên bảo vệ sớm hoặc chậm)",
    ),
    ThuTuc(
      name: "Thủ tục 18. Cấp lại bảng điểm",
    ),
    ThuTuc(
      name: "Thủ tục 20. Cấp bản sao bằng tốt nghiệp đại học, cao đẳng thay bằng đã mất",
    ),
    ThuTuc(
      name: "	Thủ tục 21. Cấp lại mật khẩu đăng ký học phần",
    ),
    ThuTuc(
      name: "Thủ tục 22. Hiệu chỉnh thông tin hồ sơ",
    ),
    ThuTuc(
      name: "Thủ tục 23. Xác nhận thông tin theo yêu cầu",
    ),
    ThuTuc(
      name: "Thủ tục 24. Xác nhận làm thẻ xe buýt",
    ),
    ThuTuc(
      name: "Thủ tục 25. Xác nhận chế độ chính sách tại địa phương",
    ),
    ThuTuc(
      name: "Thủ tục 26. Cấp giấy giới thiệu",
    ),
    ThuTuc(
      name: "	Thủ tục 27. Vay vốn ngân hàng chính sách",
    ),
    ThuTuc(
      name: "Thủ tục 28. Xác nhận là Sinh viên không vi phạm kỷ luật",
    ),
    ThuTuc(
      name: "Thủ tục 29. Xác nhận là Sinh viên đã từng học tại trường",
    ),
    ThuTuc(
      name: "Thủ tục 30. Đề nghị miễn giảm học phí, hỗ trợ chi phí học tập, xét trợ cấp xã hội",
    ),
    ThuTuc(
      name: "Thủ tục 31. Đề nghị giải quyết chế độ bảo hiểm thân thể",
    ),
    ThuTuc(
      name: "Thủ tục 32. Đề nghị cấp lại thẻ sinh viên",
    ),
    ThuTuc(
      name: "	Thủ tục 33. Xác nhận điểm rèn luyện",
    ),
    ThuTuc(
      name: "Thủ tục 34. Xin hoãn thi kết thúc học phần",
    ),
    ThuTuc(
      name: "Thủ tục 35. Xin thi bù do hoãn thi kết thúc học phần",
    ),
    ThuTuc(
      name: "Thủ tục 36. Thanh toán tiền hỗ trợ thực tập tốt nghiệp",
    ),
    ThuTuc(
      name: "Mẫu Giấy thanh toán ra trường",
    ),
    ThuTuc(
      name: "	Thủ tục 37: Thanh toán tiền Tết Nguyên đán cho sinh viên",
    ),
    ThuTuc(
      name: "	Thủ tục 38: Thanh toán tiền học phí (đóng dư) cho người học",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        title: const Center(child: Text("ĐƠN XIN CẤP GIẤY CHỨNG NHẬN ĐÃ BẢO VỆ TỐT NGHIỆP")),
        actions: [
          IconButton(
            onPressed: () {
              print("dark mode");
            },
            icon: const Icon(Icons.dark_mode_outlined),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 225, 241, 252),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30)),
              child: const Searchs(),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Danh sách đơn",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: thutucs.length,
              itemBuilder: (context, index) {
                final iteam = thutucs[index];
                return ThuTuc(
                  name: iteam.name,
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: const AppBars(),
    );
  }
}
