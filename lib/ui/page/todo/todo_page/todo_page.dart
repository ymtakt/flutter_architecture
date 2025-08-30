import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/page/todo/todo_page/todo_page_view_model.dart';
import 'package:flutter_architecture/ui/routing/router_path.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(todoPageViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Todo')),
      body: Column(
        children: [
          Expanded(
            child: viewModel.when(
              data: (data) => ListView.builder(
                itemCount: data.todos.length,
                itemBuilder: (context, index) => TextButton(
                  onPressed: () =>
                      context.go('${RouterPath.TODO}/${data.todos[index].id}'),
                  child: Text(data.todos[index].title),
                ),
              ),
              error: (error, __) {
                return Text(error.toString());
              },
              loading: () => const CircularProgressIndicator(),
            ),
          ),
          TextButton(
            onPressed: () => context.go(RouterPath.TODO_REGISTER),
            child: const Text('Todoを登録する'),
          ),
        ],
      ),
    );
  }
}
