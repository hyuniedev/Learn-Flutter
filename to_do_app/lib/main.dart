import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/card_body_widget.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ToDoList',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [CardBody()],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext content) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  height: 200,
                  color: Colors.amber,
                  child: const Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Your Task',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Add Task'),
                        ),
                      ),
                    ],
                  ),
                );
              });
        },
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
