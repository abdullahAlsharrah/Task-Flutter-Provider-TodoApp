import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class TodoProvider extends ChangeNotifier {
  List todos = [
    Todo(id: 1, title: "first todo"),
  ];

  void addTodo(String title) {
    var todoItem = Todo(id: todos[todos.length - 1].id + 1, title: title);
    todos.add(todoItem);
    notifyListeners();
  }

  void doneF({required int id}) {
    var item = todos.firstWhere((element) => element.id == id);
    item.done = !item.done;

    notifyListeners();
  }
}
