import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  @override
  State<Todo> createState() => _TodohomeState();
}

class _TodohomeState extends State<Todo> {
  String title = "Hello";
  num count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Text(
            count.toString(),
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        backgroundColor: Colors.purple,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
