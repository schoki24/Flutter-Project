import 'package:flutter/material.dart';
import 'package:stateful_project/screens/DetailsTask.dart';

class Addtask extends StatefulWidget {
  const Addtask({Key? key}) : super(key: key);

  @override
  State<Addtask> createState() => _AddtaskState();
}

class TaskModel {
  int id;
  String title;
  String description;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
  });
}

class _AddtaskState extends State<Addtask> {
  String title = '';
  String description = '';

  List<TaskModel> tasks = [
    TaskModel(id: 1, title: "Task 1", description: "Task 1 description"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Add Task',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height - 50,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(color: Colors.white),
                    onChanged: (val) {
                      setState(() {
                        title = val;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label:
                          Text('Title', style: TextStyle(color: Colors.white)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      onChanged: (val) {
                        setState(() {
                          description = val;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Description',
                            style: TextStyle(color: Colors.white)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Navigate to DetailsTask screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detailtask(
                                  tasks: tasks,
                                ),
                              ),
                            );
                          },
                          child: Text('Save'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
