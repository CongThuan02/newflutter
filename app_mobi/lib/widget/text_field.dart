import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget {
  final TextEditingController controller;
  final bool autofocus;
  const TextField1(
      {Key? key, required this.controller, required this.autofocus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autofocus,
      controller: controller,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        label: const Text(
          'title',
          style: TextStyle(fontSize: 20),
        ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
