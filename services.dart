class TaskService {
  final SupabaseClient supabaseClient;

  TaskService(this.supabaseClient);

  Future<List<Task>> getTasks() async {
    // Get all tasks from the database.
    final response = await supabaseClient.from('Tasks').select().execute();
    final tasks = response.data.map((task) => Task.fromJson(task)).toList();
    return tasks;
  }

  Future<Task> createTask(Task task) async {
    // Create a new task in the database.
    final response = await supabaseClient.from('Tasks').insert(task.toJson()).execute();
    final createdTask = Task.fromJson(response.data[0]);
    return createdTask;
  }

  Future<Task> updateTask(Task task) async {
    // Update an existing task in the database.
    final response = await supabaseClient.from('Tasks').update(task.toJson()).where('id', equals: task.id).execute();
    final updatedTask = Task.fromJson(response.data[0]);
    return updatedTask;
  }

  Future<void> deleteTask(int id) async {
    // Delete a task from the database.
    await supabaseClient.from('Tasks').delete().where('id', equals: id).execute();
  }
}

class ProjectService {
  final SupabaseClient supabaseClient;

  ProjectService(this.supabaseClient);

  Future<List<Project>> getProjects() async {
    // Get all projects from the database.
    final response = await supabaseClient.from('Projects').select().execute();
    final projects = response.data.map((
