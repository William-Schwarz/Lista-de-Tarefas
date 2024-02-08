import 'package:lista_tarefas/models/todo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

const todoListKey = 'todo_list';

class TodoRepository {
  late SharedPreferences sharedPreferences;

  Future<List<Todo>> getTodoList() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final String jsonString = sharedPreferences.getString(todoListKey) ?? '[]';
    final List jsonDecoded = jsonDecode(jsonString) as List;
    return jsonDecoded.map((e) => Todo.fromJson(e)).toList();
  }

  void saveTodoList(List<Todo> todos) {
    final List<Map<String, dynamic>> jsonList =
        todos.map((todo) => todo.toJson()).toList();
    final String jsonString = json.encode(jsonList);
    sharedPreferences.setString(todoListKey, jsonString);
  }
}
