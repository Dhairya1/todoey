import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkBoxCallBack: (checkBoxState) {
                  taskData.updateTask(task);
                },
                longPressCallBack: () {
                  taskData.deleteTask(task);
                },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
