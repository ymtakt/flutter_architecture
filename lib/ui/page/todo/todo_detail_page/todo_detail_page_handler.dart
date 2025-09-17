import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:flutter_architecture/ui/page/todo/todo_detail_page/todo_detail_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_detail_page_handler.g.dart';

/// [TodoDetailPageHandler] クラスのインスタンスを提供する。
@riverpod
TodoDetailPageHandler todoDetailPageHandler(Ref ref) =>
    TodoDetailPageHandler(ref);

/// [TodoDetailPageHandler] クラスのインスタンスを提供する。
class TodoDetailPageHandler {
  TodoDetailPageHandler(this._ref);

  final Ref _ref;

  /// Todoを削除するためのダイアログを表示する。
  Future<void> showDeleteTodoDialog({
    required BuildContext context,
    required String todoId,
  }) async {
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Todoを削除しますか？'),
        content: const Text('Todoを削除すると、Todoのデータが削除されます。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('キャンセル'),
          ),
          TextButton(
            onPressed: () async {
              try {
                // 子供を削除するviewModelを呼び出す
                await _ref
                    .read(todoDetailPageViewModelProvider(todoId).notifier)
                    .deleteTodo();
                if (!context.mounted) {
                  return;
                }
                Navigator.pop(context);
              } catch (e) {
                if (e is DeleteTodoGeneralException) {
                  if (!context.mounted) {
                    return;
                  }
                  // トースト表示
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Todoの削除に失敗しました')));
                  Navigator.pop(context);
                }
                // トースト表示
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Todoの削除に失敗しました')));
                Navigator.pop(context);
              }
            },
            child: const Text('削除'),
          ),
        ],
      ),
    );
  }
}
