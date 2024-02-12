import 'package:intl/intl.dart';

class Todo {
  Todo({required this.title, required this.dateTime});

  String title;
  DateTime dateTime;

  Todo.fromJson(Map<String, dynamic> json)
      : title = json['title'] ?? '',
        dateTime = DateTime.parse(json['dateTime'] ?? '');

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'dateTime': DateFormat('dd/MM/yyyy HH:mm').format(dateTime),
    };
  }
}
