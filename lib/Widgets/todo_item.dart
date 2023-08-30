import 'package:flutter/material.dart';
import 'package:todo_app/constants/color.dart';
import 'package:todo_app/todo/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo t;
  final onTodoChange;
  final deleteItem;

  const TodoItem({Key?key , required this.t , required this.onTodoChange , required this.deleteItem}):super (key: key);

  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        onTap: () {
          print("Clicked on the task");
          onTodoChange(t);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Container(
          child: Icon(
            t.isDone?Icons.check_box:Icons.check_box_outline_blank,
            color: tdBlue,
          ),
        ),
        title: Text(
          t.todoText!,
          style: TextStyle(
            decoration:t.isDone? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          height: 33,
          width: 33,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: tdBGColor,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              deleteItem(t.id);
            },
          ),
        ),
      ),
    );
  }
}
