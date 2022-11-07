import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_bophanmotcua/parket/widget/search.dart';

class Home3 extends StatelessWidget {
  Home3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              onPressed: () => GoRouter.of(context).go('/'),
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const Text(
              "Bộ phận một cửa",
            ),
            IconButton(
              icon: const Icon(
                Icons.dark_mode,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ]),
        ),
      ),
      body: Container(
        child: Column(children: [
          Container(
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(children: [
              Searchs(),
            ]),
          )
        ]),
      ),
    );
  }
}
