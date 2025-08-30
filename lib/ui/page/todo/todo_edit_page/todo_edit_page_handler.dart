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
    // バリデーションを行う
    // バリデーションが通ったら、Todo情報を更新するviewModelを呼び出す
    await _ref
        .read(todoEditPageViewModelProvider(todo.id).notifier)
        .updateTodo(todo);
    _ref.invalidate(todoPageViewModelProvider);
  }
}
