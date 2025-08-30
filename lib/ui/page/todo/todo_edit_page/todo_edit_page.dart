import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/page/todo/todo_edit_page/todo_edit_page_handler.dart';
import 'package:flutter_architecture/ui/page/todo/todo_edit_page/todo_edit_page_view_model.dart';
import 'package:flutter_architecture/ui/page/todo/todo_form.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoEditPage extends ConsumerWidget {
  const TodoEditPage({super.key, required this.todoId});

  final String todoId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelState = ref.watch(todoEditPageViewModelProvider(todoId));

    return Scaffold(
      appBar: AppBar(title: const Text('Todo編集')),
      body: viewModelState.when(
        data: (state) => TodoForm(
          initialTodoData: state.todo,
          handleSubmit: (todo) {
            // 更新処理
            ref
                .read(todoEditPageHandlerProvider)
                .updateTodo(context: context, todo: todo);
          },
          submitButtonText: '更新する',
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('エラーが発生しました: $error')),
      ),
    );
  }
}
