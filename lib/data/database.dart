import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // Reference our Box
  final _myBox = Hive.box('mybox');

  // Run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Welcome to Monty ToDo App", false],
      ["Create your day ToDo it Fast", false],
    ];
  }

  // Load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // UPDATE THE DATABASE
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
