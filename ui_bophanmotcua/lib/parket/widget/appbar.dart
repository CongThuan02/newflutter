import 'package:flutter/material.dart';

class AppBars extends StatefulWidget {
  const AppBars({Key? key}) : super(key: key);

  @override
  State<AppBars> createState() => _AppBarsState();
}

class _AppBarsState extends State<AppBars> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'lich sử'),
        ],
      ),
    );
  }
}
