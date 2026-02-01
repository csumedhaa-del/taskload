class Task {
  String title;
  String description;
  String dueDate;

  Task(this.title, this.description, this.dueDate);
}

List<Task> taskList = [];

Future<void> loadTasks() async {
  print("Loading tasks...");
  await Future.delayed(Duration(seconds: 2));

  taskList.add(
    Task("Study Dart", "Revise async and await concepts", "03-02-2026"),
  );
  taskList.add(
    Task("Mini Project", "Complete task reminder app", "03-02-2026"),
  );

  print("Tasks loaded successfully!\n");
}

Future<void> addTask(Task task) async {
  print("Adding new task...");
  await Future.delayed(Duration(seconds: 1));
  taskList.add(task);
  print("Task added successfully!\n");
}

void displayTasks() {
  print("Task List:");
  for (int i = 0; i < taskList.length; i++) {
    print("${i + 1}. ${taskList[i].title}");
    print("   Description: ${taskList[i].description}");
    print("   Due Date: ${taskList[i].dueDate}\n");
  }
}

Future<void> main() async {
  await loadTasks();
  displayTasks();

  Task newTask = Task(
    "Practice Coding",
    "Solve Dart problems",
    "04-02-2026",
  );

  await addTask(newTask);
  displayTasks();
}