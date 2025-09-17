import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'todo_selector_section_view_model.dart';

part 'todo_selector_section_handler.g.dart';

@riverpod
TodoSelectorSectionHandler todoSelectorSectionHandler(Ref ref) =>
    TodoSelectorSectionHandler(ref);

class TodoSelectorSectionHandler {
  TodoSelectorSectionHandler(this._ref);

  final Ref _ref;

  /// Todoを選択する
  Future<void> selectTodo({
    required BuildContext context,
    required Todo todo,
  }) async {
    try {
      // 選択したTodoを記録
      await _ref
          .read(todoSelectorSectionViewModelProvider.notifier)
          .recordSelection(todo);

      /** 
       * EventTrackingUseCaseを呼び出して以下のイベントを送信:
       * - イベント名: 'todo_selected'
       * - パラメータ: todoId, sectionType, timestamp
       */
    } catch (error) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Todo選択でエラーが発生しました: $error')));
      }
    }
  }

  /// Todo一覧を再読み込み
  Future<void> refreshTodos({required BuildContext context}) async {
    try {
      await _ref
          .read(todoSelectorSectionViewModelProvider.notifier)
          .loadTodos();
    } catch (error) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Todo読み込みでエラーが発生しました: $error')));
      }
    }
  }
}
