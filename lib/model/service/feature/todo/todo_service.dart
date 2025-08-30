import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../util/shared_preferences/shared_preferences_helper.dart';
import 'todo_dto.dart';

part 'todo_service.g.dart';

/// [TodoService] クラスのインスタンスを提供する。
@riverpod
TodoService todoService(Ref ref) => TodoService(ref);

/// Todo 関係のサービスクラス。
class TodoService {
  /// [TodoService] を生成する。
  const TodoService(this._ref);

  /// [Ref] のインスタンス。
  final Ref _ref;

  /// SharedPreferencesHelper のインスタンス。
  SharedPreferencesHelper get _sharedPreferencesHelper =>
      SharedPreferencesHelper(_ref);

  /// Todo 一覧を取得する。
  Future<List<TodoDto>> fetchTodos() async {
    final jsonString = await _sharedPreferencesHelper.getString(
      SharedPreferencesKey.todos,
    );

    if (jsonString == null) {
      return [];
    }

    try {
      final List<dynamic> jsonList = jsonDecode(jsonString);
      return jsonList.map((json) => TodoDto.fromJson(json)).toList();
    } catch (e) {
      // エラーハンドリング設計
      return [];
    }
  }

  /// Todo を取得する。
  Future<TodoDto?> fetchTodoById(String id) async {
    final todos = await fetchTodos();
    try {
      return todos.firstWhere((todo) => todo.id == id);
    } catch (e) {
      // エラーハンドリング設計
      return null;
    }
  }

  /// Todo を追加する。
  Future<void> createTodo(TodoDto todo) async {
    final todos = await fetchTodos();
    todos.add(todo);
    await _saveTodos(todos);
  }

  /// Todo を更新する。
  Future<void> updateTodo(TodoDto updatedTodo) async {
    final todos = await fetchTodos();
    final index = todos.indexWhere((todo) => todo.id == updatedTodo.id);
    if (index != -1) {
      todos[index] = updatedTodo;
      await _saveTodos(todos);
    }
  }

  /// Todo を削除する。
  Future<void> deleteTodoById(String id) async {
    final todos = await fetchTodos();
    todos.removeWhere((todo) => todo.id == id);
    await _saveTodos(todos);
  }

  /// Todo 一覧をSharedPreferencesに保存する。
  Future<void> _saveTodos(List<TodoDto> todos) async {
    final jsonString = jsonEncode(todos.map((todo) => todo.toJson()).toList());
    await _sharedPreferencesHelper.setString(
      SharedPreferencesKey.todos,
      jsonString,
    );
  }
}
