import 'package:flutter/material.dart';

class Searchs extends StatefulWidget {
  const Searchs({Key? key}) : super(key: key);

  @override
  State<Searchs> createState() => _SearchsState();
}

class _SearchsState extends State<Searchs> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      autocorrect: false,
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(Icons.search),
        hintText: " Tìm kiếm thủ tục",
      ),
    );
  }
}
