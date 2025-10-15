import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:flutter_architecture/ui/page/todo/todo_page/todo_page_view_model.dart';
import 'package:flutter_architecture/ui/routing/router_path.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Todo 一覧画面のページウィジェット。
///
/// Todo の一覧表示と詳細画面・登録画面への遷移機能を提供する。
/// ViewModel から状態を監視し、ローディング・エラー状態に応じた UI を表示する。
class TodoPage extends ConsumerWidget {
  /// [TodoPage] を生成する。
  const TodoPage({super.key});

  /// Todo 一覧画面の UI を構築する。
  ///
  /// ViewModel の状態に応じて Todo 一覧、ローディングインジケータ、
  /// エラーメッセージのいずれかを表示する。
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
              error: (e, __) {
                if (e is FetchTodosGeneralException) {
                  return Text('Todo一覧の取得に失敗しました');
                }
                return Text('画面表示に失敗しました');
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
