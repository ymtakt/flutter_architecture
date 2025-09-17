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
    required Todo todo,
  }) async {
    try {
      // TODO: バリデーションを行う。
      await _ref
          .read(todoEditPageViewModelProvider(todo.id).notifier)
          .updateTodo(todo);
      _ref.invalidate(todoPageViewModelProvider);
    } catch (e) {
      if (e is UpdateTodoGeneralException) {
        if (!context.mounted) {
          return;
        }
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
      if (!context.mounted) {
        return;
      }
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
