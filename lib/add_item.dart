import 'package:flutter/material.dart';
import 'package:simple_to_do_list/tasks.dart';
import 'package:simple_to_do_list/widgets.dart';
class AddData extends StatelessWidget {
   AddData({super.key});
TodoList lists = TodoList();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        adddTask(),
        mybutton(context, addT)
      ],
    );
  }
}