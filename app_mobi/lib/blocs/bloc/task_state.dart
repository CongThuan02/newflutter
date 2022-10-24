part of 'task_bloc.dart';

class TaskState extends Equatable {
  List<Task> allTasks;
  TaskState({
    this.allTasks = const [],
  });

  TaskState copyWith(List<Task> allTasks,) {
    return TaskState(
      allTasks: [...allTasks]
    );
  }

  @override
  List<Object> get props => [allTasks];
}
