import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/blocs/bloc/tasks_bloc.dart';
import 'package:todoapp/models/task.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key, required this.tasksList});

  final List<Task> tasksList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: tasksList.length,
          itemBuilder: (context, index) {
            var task = tasksList[index];
            return TaskTile(task: task);
          }),
    );
  }
}
