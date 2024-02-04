import 'package:intl/intl.dart';

class Todo {
  Todo({required this.title, required DateTime dateTime})
      : dateTime = dateTime.toLocal();

  String title;
  DateTime dateTime;

  String formattedDateTime() {
    return DateFormat('dd/MM/yyyy - HH:mm').format(dateTime);
  }

  bool isValid() {
    return title.isNotEmpty;
  }
}
