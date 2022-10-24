import 'package:appmobu/blocs/bloc/task_bloc.dart';
import 'package:flutter/material.dart';

import '../blocs/bloc_exports.dart';
import '../models/task.dart';
import '../widget/task_list.dart';
import '../widget/text_field.dart';

// ignore: must_be_immutable
class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  TextEditingController titleControler = TextEditingController();

  void _addTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                        titleControler.text = "";
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

  // ignore: non_constant_identifier_names
  List<Task> tasksList = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("đây là app chạy thử"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              )
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Center(
                child: Chip(
                  label: Text("task App"),
                ),
              ),
              TaskList(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _addTask(context),
            tooltip: 'Add Task',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
