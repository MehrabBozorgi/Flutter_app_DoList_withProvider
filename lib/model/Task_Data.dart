import 'package:flutter/foundation.dart';

import 'Task.dart';

class Task_Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy egg'),
    Task(name: 'buy bread'),
  ];

  //بجای اینکه در کلاس اصلی بنویسیم در این قسمت مینویسیمش
  //متد اضافه کردن به لیست
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
