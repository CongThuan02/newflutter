part of 'task_bloc.dart';

class TaskState extends Equatable {
  List<Task> allTasks;
  TaskState({
    this.allTasks = const [],
  });

  TaskState copyWith(
    List<Task> allTasks,
  ) {
    return TaskState(allTasks: [...allTasks]);
  }

  @override
  List<Object> get props => [allTasks];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTasks': allTasks.map((x) => x.toMap()).toList(),
    };
  }

  factory TaskState.fromMap(Map<String, dynamic> map) {
    return TaskState(
      allTasks: List<Task>.from(
        (map['allTasks'] as List<int>).map<Task>(
          (x) => Task.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}
