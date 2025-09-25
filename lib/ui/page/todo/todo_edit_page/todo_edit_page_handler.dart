import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:flutter_architecture/ui/page/todo/todo_edit_page/todo_edit_page_view_model.dart';
import 'package:flutter_architecture/ui/page/todo/todo_page/todo_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_edit_page_handler.g.dart';

/// [TodoEditPageHandler] クラスのインスタンスを提供する。
@riverpod
TodoEditPageHandler todoEditPageHandler(Ref ref) => TodoEditPageHandler(ref);

/// [TodoEditPageHandler] クラスのインスタンスを提供する。
class TodoEditPageHandler {
  TodoEditPageHandler(this._ref);

  final Ref _ref;

  /// Todo情報を更新する
  Future<void> updateTodo({
    required BuildContext context,
    required String todoId,
    required String title,
    required String description,
    required String status,
  }) async {
    try {
      // TODO: バリデーションを行う。
      await _ref
          .read(todoEditPageViewModelProvider(todoId).notifier)
          .updateTodo(title: title, description: description, status: status);
      _ref.invalidate(todoPageViewModelProvider);
    } catch (e) {
      if (!context.mounted) {
        return;
      }

      // UpdateTodoGeneralException をキャッチした場合は、ダイアログを表示する。
      if (e is UpdateTodoGeneralException) {
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Todoの更新に失敗しました'),
            content: Text('Todoの更新に失敗しました'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('閉じる'),
              ),
            ],
          ),
        );
        return;
      }

      // その他の場合は、汎用的なメッセージを表示する。
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('エラーが発生しました'),
          content: Text('エラーが発生しました'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('閉じる'),
            ),
          ],
        ),
      );
    }
  }
}
