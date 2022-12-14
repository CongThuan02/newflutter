import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home2 extends StatelessWidget {
  Home2({
    Key? key,
    required this.id,
  }) : super(key: key);
  String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(onPressed: () => GoRouter.of(context).go("/"), child: Icon(Icons.backpack)),
        title: Text(id),
      ),
    );
  }
}
