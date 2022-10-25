// ignore: depend_on_referenced_packages
import 'package:appmobu/blocs/bloc_exports.dart';
import 'package:equatable/equatable.dart';

import '../../models/task.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends HydratedBloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskState()) {
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }
  void _onAddTask(AddTask event, Emitter<TaskState> emit) {
    final allTasks = [...state.allTasks];
    allTasks.add(event.task);
    emit(TaskState(allTasks: allTasks));
  }

  void _onUpdateTask(UpdateTask event, Emitter<TaskState> emit) {
    final state = this.state;
    final task = event.task;
    List<Task> allTasks = List.from(state.allTasks)..remove(task);
    task.isDone == false
        ? allTasks.add(task.copyWith(isDone: true))
        : allTasks.add(task.copyWith(isDone: false));
    emit(TaskState(allTasks: allTasks));
  }

  // ignore: unused_element
  void _onDeleteTask(DeleteTask event, Emitter<TaskState> emit) {
    final state = this.state;
    emit(TaskState(
      allTasks: List.from(state.allTasks)..remove(event.task),
    ));
  }

  @override
  TaskState? fromJson(Map<String, dynamic> json) {
    return TaskState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(TaskState state) {
    return state.toMap();
  }
}
