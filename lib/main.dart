import 'package:flutter/material.dart';
import 'package:simple_to_do_list/home.dart';
import 'package:simple_to_do_list/tasks.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
     final TodoList todolist = TodoList();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
 
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(todolist: todolist),
    );
  }
}
