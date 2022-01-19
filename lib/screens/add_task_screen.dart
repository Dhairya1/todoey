import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key}) : super(key: key);

  late String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0)
          )
        ),

        child: Column(
          children: [
           const Text(
                'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTask) {
                newTaskTitle = newTask;
              },
            ),
            TextButton(
              onPressed: (){
                Provider.of<TaskData>(context, listen: false).addNewTask(newTaskTitle);
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  primary: Colors.white
              ),
              child: const Text(
                  'Add',
              ),
            )
          ],
        ),
      ),
    );
  }
}
