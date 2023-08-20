import 'package:flutter/material.dart';
import 'package:todo_app/Widgets/todo_item.dart';
import 'package:todo_app/constants/color.dart';
import 'package:todo_app/todo/todo.dart';

class Home extends StatelessWidget {
  final todoList = ToDo.todoList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildAppbar(),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            searchBar(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50 , bottom: 20),
                    child: Text("All To Do" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
                  ),
                  for(ToDo todo in todoList)
                    TodoItem(t: todo,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
                child: Image.asset(
                    "images/christina-wocintechchat-com-0Zx1bDv5BNY-unsplash.jpg")
            ),
          )
        ],
      ),
    );
  }
}

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0.0),
          prefixIcon: Icon(Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: "Search",
        ),
      ),
    );
  }
}
