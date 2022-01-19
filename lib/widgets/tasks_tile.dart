import 'package:flutter/material.dart';
import 'dart:core';

class TaskTile extends StatelessWidget {
  late bool isChecked = false;
  late String taskTitle;
  late Function checkBoxCallBack;
  late Function longPressCallBack;
  TaskTile({
    Key? key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxCallBack,
    required this.longPressCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue) {
          checkBoxCallBack(newValue);
        },
      ),
      onLongPress: (){
        longPressCallBack();
      },
    );
  }
}

