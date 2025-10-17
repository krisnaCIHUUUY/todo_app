// REPOSITORY
// class kanggo ngehubungke state management denngan database nya
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/models/todo_model.dart';

class TodoRepository {
  final CollectionReference _todos = FirebaseFirestore.instance.collection(
    'todos',
  );

  Future<List<Todo>> fetchTodos() async {
    final snapshot = await _todos.get();
    return snapshot.docs
        .map((doc) => Todo.fromMap(doc.data() as Map<String, dynamic>, doc.id))
        .toList();
  }

  Future<void> addTodo(String title, DateTime date) {
    return _todos.add({'title': title, 'date': date});
  }

  Future<void> deleteTodo(String id) {
    return _todos.doc(id).delete();
  }

  Future<void> updateTodo(Todo todo) {
    return _todos.doc(todo.id).update(todo.toMap());
  }

  Future<void> isDoneStatus(String id, bool? isDone) async {
    await _todos.doc(id).update({"isDone": isDone});
  }
}
