// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/task.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskState()) {
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    // on<DeleteTask>(_onDeleteTask);
  }
  void _onAddTask(AddTask event, Emitter<TaskState> emit) {
    final allTasks = [...state.allTasks];
    allTasks.add(event.task);
    emit(TaskState(allTasks: allTasks));
  }

  Future<void> _onUpdateTask(UpdateTask event, Emitter<TaskState> emit) async {
    // emit();
    final task = event.task;
    List<Task> allTasks = state.allTasks.map((element) => element.copyWith()).toList();
    var _task = allTasks.firstWhere((x) => x == task);
    _task.isDone = _task.isDone == true ? false : true;
    _task.title += 'u';
    emit(TaskState(allTasks: allTasks));
  }

  // ignore: unused_element
  void _onDeleteTask(DeleteTask event, Emitter<TaskState> emit) {
    final allTasks = [...state.allTasks];
    allTasks.remove(event.task);
    emit(TaskState(allTasks: allTasks));
  }
}
