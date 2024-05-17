import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Detailtask extends StatelessWidget {
  const Detailtask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Tasks',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 12, top: 8),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Title 1",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text("Description 2"),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            // Icon button is used to have a button with only icon and no texts
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.edit)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.delete)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
                // we render the tasks her
              ),
            )
          ],
        ),
      ),
    );
  }
}
