import 'package:appmobu/screens/tasks_screen.dart';
import 'package:flutter/material.dart';
import 'blocs/bloc/task_bloc.dart';
import 'blocs/bloc_exports.dart';
// ignore: unused_import
import 'models/task.dart';

void main() {
  // ignore: deprecated_member_use
  // BlocOverrides.runZoned(() => runApp(BlocProvider(
  //       create: (context) => TaskBloc(),
  //       child: MyApp(),
  //     )));
  runApp(BlocProvider(
    create: (context) => TaskBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TasksScreen());
  }
}
