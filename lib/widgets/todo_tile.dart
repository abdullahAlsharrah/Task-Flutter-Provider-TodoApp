import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/providers/todo_provider.dart';
import 'package:provider/provider.dart';

class TodoTile extends StatelessWidget {
  final Todo todo;
  const TodoTile({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        child: ListTile(
          title: Text(todo.title),
          trailing: Checkbox(
              fillColor: MaterialStateProperty.all<Color>(Colors.white),
              checkColor: Colors.amber.shade300,
              side: MaterialStateBorderSide.resolveWith(
                (states) =>
                    BorderSide(width: 1.0, color: Colors.amber.shade300),
              ),
              value: todo.done,
              onChanged: (value) {
                context.read<TodoProvider>().doneF(id: todo.id);
              }),
        ),
      ),
    );
  }
}
