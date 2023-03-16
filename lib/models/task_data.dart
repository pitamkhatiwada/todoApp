import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';
import 'dart:collection';

class TaskData  extends  ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy my '),
    Task(name: 'what istihss'),
    Task(name: 'aaluuuuuu'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView (_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }
  void addTask (String newTextTitle){

    final task = Task(name: newTextTitle);
    _tasks.add(task);
   notifyListeners();
  }
  void upDateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void delateTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }


}
