import 'package:appmobu/blocs/bloc_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../blocs/bloc/task_bloc.dart';
import '../models/task.dart';
import '../widget/text_field.dart';

// ignore: must_be_immutable
class TasksScreen extends StatelessWidget {
  TasksScreen({Key? key}) : super(key: key);
  TextEditingController titleControler = TextEditingController();
  // ignore: unused_element
  void _addTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  "Add task",
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField1(
                  controller: titleControler,
                  autofocus: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("cancel"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var task = Task(title: titleControler.text);
                        context.read<TaskBloc>().add(AddTask(task: task));
                        Navigator.pop(context);
                      },
                      child: const Text('Add'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
