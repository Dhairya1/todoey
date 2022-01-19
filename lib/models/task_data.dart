import 'package:flutter/cupertino.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  final List<Task> _tasks = [
    Task(name: 'buy buy Something'),
    Task(name: 'Buy Something'),
    Task(name: 'Buy Something'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
  int get taskCount => _tasks.length;

  void addNewTask(String task) {
    _tasks.add(Task(name: task));
    notifyListeners();
  }
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}