import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/blocs/bloc/tasks_bloc.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/screens/tasks_screen.dart';


void main() {
  BlocOverrides.runZoned(
   () =>runApp(const MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc()
      ..add(AddTask(
        task: Task(title: 'Task1'),)),
      child: MaterialApp(
        title: 'flutter Tasks App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TasksScreen(),
      ),
    );
  }
}
