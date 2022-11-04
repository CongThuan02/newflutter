import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:ui_bophanmotcua/parket/widget/home.dart';
import 'package:ui_bophanmotcua/parket/widget/manhinh2.dart';
import 'package:ui_bophanmotcua/parket/widget/thutuc.dart';

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
          return const Home();
        },
      ),
      GoRoute(
        path: '/Home2/:id',
        builder: (context, state) => Home2(id: state.params["id"]!, name: state.params["name"]!,),
      )
    ],
  );
}
