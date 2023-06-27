import 'package:flutter/material.dart';
import 'package:simple_to_do_list/add_item.dart';
import 'package:simple_to_do_list/widgets.dart';
import 'tasks.dart';
class HomePage extends StatelessWidget {
 
final TodoList todolist;
  const HomePage({super.key, required this.todolist});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple to do app"),
        actions: const [
          IconButton(onPressed: AddData(), icon: Icon(Icons.add))
        ],
        
        
      ),
      body: ListView.builder(
        itemCount: todolist.tasks.length,
      itemBuilder: (context, index){
        Task task = todolist.tasks[index];
        return ListTile(
          title: Text(task.title),
          trailing: Checkbox(
            value: task.iscompleted,
            onChanged: (value){
              todolist.toggletaskcompletion(index);
            },),
            onLongPress: (){
              todolist.removetask(index);
            },
        );


      }
      )

    );
  }
}