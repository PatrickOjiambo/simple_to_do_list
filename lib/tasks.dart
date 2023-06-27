class Task{
String title;
bool iscompleted;
Task({required this.title, required this.iscompleted});
}

class TodoList{
List<Task> tasks = [];


void addTask(Task task){
tasks.add(task);
}
void toggletaskcompletion(int index){
  tasks[index].iscompleted = !tasks[index].iscompleted;

}
void removetask(int index){
  tasks.removeAt(index);
}
}