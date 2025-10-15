import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../model/entity/feature/todo.dart';
import '../../../../model/repository/feature/todo/todo.repository.dart';

part 'todo_page_view_model.freezed.dart';
part 'todo_page_view_model.g.dart';

/// TodoPage の状態を表すクラス。
@freezed
class TodoPageState with _$TodoPageState {
  /// [TodoPageState] を生成する。
  const factory TodoPageState({required List<Todo> todos}) = _TodoPageState;
}

/// TodoPage のビューモデルクラス。
@riverpod
class TodoPageViewModel extends _$TodoPageViewModel {
  /// 初期状態を構築する。
  @override
  Future<TodoPageState> build() async {
    final todos = await ref.watch(todoRepositoryProvider).fetchTodos();
    return TodoPageState(todos: todos);
  }
}
