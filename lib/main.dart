import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/task_screen.dart';
import 'models/task_data.dart';

void main() {
  runApp(const Todoey());
}
class Todoey extends StatelessWidget {
  const Todoey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
