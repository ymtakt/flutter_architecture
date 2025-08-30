import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/page/todo/todo_form.dart';
import 'package:flutter_architecture/ui/page/todo/todo_register_page/todo_register_page_handler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoRegisterPage extends ConsumerWidget {
  const TodoRegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo登録')),
      body: TodoForm(
        handleSubmit: (todo) {
          // 登録処理
          ref.read(todoRegisterDetailPageHandlerProvider).createTodo(todo);
        },
        submitButtonText: '登録する',
      ),
    );
  }
}
