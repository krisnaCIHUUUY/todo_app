import 'package:todo_app/cubit/todo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/repository/todo_repository.dart';

class TodoCubit extends Cubit<TodoState> {
  final TodoRepository repository;
  TodoCubit(this.repository) : super(TodoInitial());

  void fetchTodos() async {
    try {
      emit(Todoloading());
      print(' Fetching todos...');
      final todos = await repository.fetchTodos();
      print(' Fetched todos: ${todos.length}');
      emit(TodoLoaded(todos));
    } catch (e) {
      print(' Error: $e');
      emit(TodoError('Gagal ambil data'));
    }
  }

  Future<void> addTodo(String title, DateTime date) async {
    await repository.addTodo(title, date);
    // print();
    fetchTodos();
  }

  Future<void> deleteTodo(String id) async {
    await repository.deleteTodo(id);
    fetchTodos();
  }

  Future<void> toggleTodoStatus(String id, bool? isDone) async {
    try {
      await repository.isDoneStatus(id, isDone);
      fetchTodos(); // biar state terupdate setelah ubah status
    } catch (e) {
      print('Error updating todo status: $e');
      emit(TodoError('Gagal update status todo'));
    }
  }
}
