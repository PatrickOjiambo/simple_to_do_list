import 'package:flutter/material.dart';

TextField adddTask() {
  final TextEditingController itemname = TextEditingController();
  return TextField(
    autocorrect: true,
    controller: itemname,
    autofocus: true,
    decoration: InputDecoration(
      prefixIcon: const Icon(
        Icons.task,
        color: Colors.white,
      ),
      labelText: "Add task",
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.8),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.9),
        borderSide: const BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
    ),
  );
}

Container mybutton(BuildContext context, Function ontap){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(0.9)),
    child: ElevatedButton(onPressed: (){
      ontap();
    },
    style: 
      ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states)
      {
      if (states.contains(MaterialState.pressed)) {
      return Colors.black26;
      }
      return Colors.white;
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    child: const Text("Add Task", style: TextStyle(
          color: Colors.black87, fontWeight:  FontWeight.bold, fontSize: 16),)
    )

  );
}