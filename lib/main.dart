import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todoapp/blocs/bloc_exports.dart';
import 'package:todoapp/screens/tasks_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),

  );

  HydratedBlocOverrides.runZoned(
    () => runApp(const MainApp()),
    storage: storage,
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc(),
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
