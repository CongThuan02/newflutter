import 'package:flutter/material.dart';
import 'package:ui_bophanmotcua/parket/widget/appbar.dart';
import 'package:ui_bophanmotcua/parket/widget/search.dart';
import 'package:ui_bophanmotcua/parket/widget/thutuc.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomeScreen({Key? key}) : super(key: key);
  List<String> thutucs = [
    "thu tuc 1",
    "thu tuc 2",
    "thu tuc 3",
    "thu tuc 4",
    "thu tuc 5",
    "thu tuc 6",
    "thu tuc 7",
    "thu tuc 8",
    "thu tuc 9",
    "thu tuc 10",
    "thu tuc 11",
    "thu tuc 12",
    "thu tuc 13",
    "thu tuc 14",
    "thu tuc 15",
    "thu tuc 16",
    "thu tuc 17",
    "thu tuc 18",
    "thu tuc 19",
    "thu tuc 20",
    "thu tuc 21",
    "thu tuc 22",

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
                  name: iteam,
                  id: index.toString(),
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
