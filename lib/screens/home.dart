import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/todo_state.dart';
import 'package:todo_app/screens/add_todo.dart';
import 'package:todo_app/cubit/todo_cubit.dart';
// import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/widgets/todotile.dart';

// NEXT:
// biikin list todonya dimasukin ke database biar pas di refresh tidak hilang
// pake firebaase firestore
// mantap

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // bool isFinished = false;
  @override
  void initState() {
    super.initState();
    context.read<TodoCubit>().fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 236, 236),
      appBar: AppBar(
        title: Text(
          'Practice with Bloc',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),

        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: BlocBuilder<TodoCubit, TodoState>(
        builder: (context, state) {
          if (state is Todoloading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is TodoLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: ListView.builder(
                itemCount: state.todo.length,
                itemBuilder: (context, index) {
                  final todo = state.todo[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Todotile(
                      value: todo.isDone,
                      title: todo.title,
                      subtitle:
                          '${todo.date.day}/${todo.date.month}/${todo.date.year}',
                      onChanged: (value) async {
                        await context.read<TodoCubit>().toggleTodoStatus(
                          todo.id,
                          value!,
                        );
                      },
                      onTap: () {
                        // HAPUS DATA DARI DATABASE
                      },
                    ),
                  );
                },
              ),
            );
          }
          return Center(child: Text('silahkan tambahkan catatan'));
        },
      ),
      floatingActionButton: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddTodo()),
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(Icons.add, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
