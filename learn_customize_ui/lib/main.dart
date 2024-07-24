import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boxMethod('Box 1', Alignment.bottomRight),
                  boxMethod('Box 2', Alignment.bottomLeft)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boxMethod('Box 3', Alignment.topRight),
                  boxMethod('Box 4', Alignment.topLeft),
                ],
              ),
            ],
          ),
          Center(child: boxMethod('Hello World', Alignment.center, true)),
        ],
      ),
    );
  }

  Container boxMethod(String name, Alignment direction,
      [bool boxRadius = false]) {
    return Container(
      decoration: BoxDecoration(
        color:
            boxRadius ? const Color.fromARGB(255, 34, 221, 246) : Colors.green,
        borderRadius: BorderRadius.circular(boxRadius ? 100 : 0),
      ),
      alignment: direction,
      width: 160,
      height: 160,
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.pink,
        ),
      ),
    );
  }
}
