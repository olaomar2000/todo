import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/todoprovider.dart';

void main() {
  runApp(ChangeNotifierProvider<TodoProvider>(
    create: (context) => TodoProvider(),
    child: MaterialApp(
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(Provider.of<TodoProvider>(context).testName),
            ElevatedButton(
              child: Text("Change provider"),
              onPressed: () {
                Provider.of<TodoProvider>(context, listen: false)
                    .changeName('omar');
               // print(Provider.of<TodoProvider>(context, listen: true).testName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
