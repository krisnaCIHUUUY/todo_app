import 'package:cloud_firestore/cloud_firestore.dart';

class Todo {
  final String id;
  final String title;
  final DateTime date;
  final bool isDone;
  Todo({
    required this.title,
    required this.date,
    required this.id,
    this.isDone = false,
  });

  factory Todo.fromMap(Map<String, dynamic> map, String id) {
    return Todo(
      id: id,
      title: map['title'],
      date: (map['date'] as Timestamp).toDate(),
      isDone: map['isDone'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'date': date, 'isDone': isDone};
  }
}
