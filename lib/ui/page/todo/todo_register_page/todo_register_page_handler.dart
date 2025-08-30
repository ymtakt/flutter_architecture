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
  Future<void> createTodo(Todo todo) async {
    // バリデーションを行う
    // バリデーションが通ったら、子供を作成するviewModelを呼び出す
    // TODO: 子供を作成する。
    await _ref
        .read(todoRepositoryProvider)
        .createTodo(
          title: todo.title,
          description: todo.description,
          status: todo.status.name,
        );
    _ref.invalidate(todoPageViewModelProvider);
  }
}
