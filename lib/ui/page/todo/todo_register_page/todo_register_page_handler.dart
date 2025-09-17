import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:flutter_architecture/model/repository/feature/todo/todo.repository.dart';
import 'package:flutter_architecture/ui/page/todo/todo_page/todo_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_register_page_handler.g.dart';

/// [TodoRegisterDetailPageHandler] クラスのインスタンスを提供する。
@riverpod
TodoRegisterDetailPageHandler todoRegisterDetailPageHandler(Ref ref) =>
    TodoRegisterDetailPageHandler(ref);

/// [TodoRegisterDetailPageHandler] クラスのインスタンスを提供する。
class TodoRegisterDetailPageHandler {
  TodoRegisterDetailPageHandler(this._ref);

  final Ref _ref;

  /// Todoを作成する。
  Future<void> createTodo(Todo todo, BuildContext context) async {
    try {
      // TODO: バリデーションを行う。

      await _ref
          .read(todoRepositoryProvider)
          .createTodo(
            title: todo.title,
            description: todo.description,
            status: todo.status.name,
          );
      _ref.invalidate(todoPageViewModelProvider);
    } catch (e) {
      if (e is CreateTodoGeneralException) {
        if (!context.mounted) {
          return;
        }
        // 検知した例外の場合は、その例外のメッセージを表示する。
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

      // 検知しない例外の場合は、汎用的なメッセージを表示する。
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
