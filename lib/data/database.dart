import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  final myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Create notes by clicking on + button", false],
      ["Delete by sliding notes to right", false]
    ];
  }

  void loadData() {
    toDoList = myBox.get("TODOLIST");
  }

  void updateDataBase() {
    myBox.put("TODOLIST", toDoList);
  }
}
