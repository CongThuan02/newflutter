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
                var task = tasks[index];
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
                            onPressed: () => context.read<TaskBloc>().add(DeleteTask(task: task))
                          ),
                          Checkbox(
                            key: UniqueKey(),
                            value: state.allTasks[index].isDone,
                            onChanged: (value) {
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
