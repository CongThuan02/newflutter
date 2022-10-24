// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../blocs/bloc/task_bloc.dart';
import '../blocs/bloc_exports.dart';

// class TaskList extends StatefulWidget {
//   const TaskList({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<TaskList> createState() => _TaskListState();
// }

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocListener<TaskBloc, TaskState>(
      listener: (context, state) {
        print(state.allTasks);
      },
      child: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          var tasks = [...state.allTasks];
          return Expanded(
            key: UniqueKey(),
            child: ListView.builder(
              key: UniqueKey(),
              shrinkWrap: true,
              itemCount: state.allTasks.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(state.allTasks[index].title),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              // tasksList.movie(index);
                            },
                          ),
                          Checkbox(
                            key: UniqueKey(),
                            value: state.allTasks[index].isDone,
                            onChanged: (value) {
                              print("------");
                              print(state.allTasks[index].isDone);
                              context.read<TaskBloc>().add(UpdateTask(task: tasks[index]));
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _onDeleteTask {}
