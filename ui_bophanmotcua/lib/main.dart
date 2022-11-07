import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_bophanmotcua/parket/widget/lichsudon.dart';

import 'package:ui_bophanmotcua/parket/widget/home.dart';
import 'package:ui_bophanmotcua/parket/widget/manhinh2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const Home();
        },
      ),
      GoRoute(
        path: '/home3',
        builder: (context, state) {
          return Home3();
        },
      ),
      GoRoute(
        path: '/Home2/:id',
        builder: (context, state) => Home2(id: state.params["id"]!),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );

    // ignore: dead_code
  }
}
