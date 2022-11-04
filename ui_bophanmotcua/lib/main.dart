import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:ui_bophanmotcua/parket/widget/appbar.dart';
import 'package:ui_bophanmotcua/parket/widget/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'hoang cong thuan',
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }

  // ignore: dead_code
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return Home();
        },
      ),
      GoRoute(
        path: '/AppBars',
        builder: (context, state) {
          return AppBars();
        },
      ),
    ],
  );
}
