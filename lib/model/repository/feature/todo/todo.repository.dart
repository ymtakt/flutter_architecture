import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../entity/feature/todo.dart';
import '../../../service/feature/todo/todo_dto.dart';
import '../../../service/feature/todo/todo_service.dart';

part 'todo.repository.g.dart';

/// [TodoRepository] クラスのインスタンスを提供する。
@riverpod
TodoRepository todoRepository(Ref ref) => TodoRepository(ref);

/// Todo 関係の通信を行うリポジトリクラス。
class TodoRepository {
  /// [TodoRepository] を生成する。
  const TodoRepository(this._ref);

  final Ref _ref;

  /// Todo 一覧を取得する。
  ///
  /// 取得に失敗した場合は、空の配列を返す。
  Future<List<Todo>> fetchTodos() async {
    final todos = await _ref.read(todoServiceProvider).fetchTodos();
    return todos.map(Todo.fromDto).toList();
  }

  /// Todo を取得する。
  ///
  /// 取得に失敗した場合は、例外をスローする。
  Future<Todo> fetchTodoById(String id) async {
    final todo = await _ref.read(todoServiceProvider).fetchTodoById(id);
    if (todo == null) {
      throw FetchTodoByIdException();
    }
    return Todo.fromDto(todo);
  }

  /// Todo を作成する。
  ///
  /// 作成に失敗した場合は、例外をスローする。
  Future<void> createTodo({
    required String title,
    required String description,
    required String status,
  }) async {
    final todoDto = TodoDto(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title,
      description: description,
      status: status,
      createdAt: DateTime.now().toIso8601String(),
      updatedAt: DateTime.now().toIso8601String(),
    );
    await _ref.read(todoServiceProvider).createTodo(todoDto);
  }

  /// Todo を更新する。
  ///
  /// 更新に失敗した場合は、例外をスローする。
  Future<void> updateTodo({
    required String id,
    required String title,
    required String description,
    required String status,
  }) async {
    final todoDto = TodoDto(
      id: id,
      title: title,
      description: description,
      status: status,
      createdAt: '', // 既存のcreatedAtを保持する場合は別途取得が必要
      updatedAt: DateTime.now().toIso8601String(),
    );
    await _ref.read(todoServiceProvider).updateTodo(todoDto);
  }

  /// Todo を削除する。
  ///
  /// 削除に失敗した場合は、例外をスローする。
  Future<void> deleteTodo({required String id}) async {
    await _ref.read(todoServiceProvider).deleteTodoById(id);
  }
}

/// Todo 一覧の取得に失敗した場合にスローされる例外。
class FetchTodoException implements Exception {}

/// Todo の取得に失敗した場合にスローされる例外。
class FetchTodoByIdException implements Exception {}
