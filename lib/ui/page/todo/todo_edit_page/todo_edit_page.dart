import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:flutter_architecture/ui/page/todo/todo_edit_page/todo_edit_page_handler.dart';
import 'package:flutter_architecture/ui/page/todo/todo_edit_page/todo_edit_page_view_model.dart';
import 'package:flutter_architecture/ui/page/todo/todo_form.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Todo 編集画面のページウィジェット。
///
/// 指定された ID の Todo の編集フォームを提供する。
/// 既存の Todo データを取得してフォームに設定し、更新処理を実行する。
class TodoEditPage extends ConsumerWidget {
  /// [TodoEditPage] を生成する。
  const TodoEditPage({super.key, required this.todoId});

  /// 編集する Todo の ID。
  final String todoId;

  /// Todo 編集画面の UI を構築する。
  ///
  /// ViewModel から Todo データを取得し、TodoForm を使用して
  /// 編集フォームを表示する。更新処理は Handler に委譲する。
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(todoEditPageViewModelProvider(todoId));

    return Scaffold(
      appBar: AppBar(title: const Text('Todo編集')),
      body: viewModel.when(
        data: (state) => TodoForm(
          initialTodoData: state.todo,
          handleSubmit: (todo) {
            // todoを更新する。
            ref
                .read(todoEditPageHandlerProvider)
                .updateTodo(
                  context: context,
                  todoId: todoId,
                  title: todo.title,
                  description: todo.description,
                  status: todo.status.name,
                );
          },
          submitButtonText: '更新する',
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) {
          // UpdateTodoGeneralException をキャッチした場合は、特定のメッセージを表示する。
          if (error is UpdateTodoGeneralException) {
            return Center(child: Text('Todoデータの取得に失敗しました: $error'));
          }

          // その他の場合は、汎用的なメッセージを表示する。
          return Center(child: Text('エラーが発生しました: $error'));
        },
      ),
    );
  }
}
