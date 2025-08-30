import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../model/entity/feature/todo.dart';
import '../../../../model/repository/feature/todo/todo.repository.dart';

part 'todo_page_view_model.freezed.dart';
part 'todo_page_view_model.g.dart';

/// TodoPage の状態を表す State.
@freezed
class TodoPageState with _$TodoPageState {
  /// [TodoPageState] を生成する。
  const factory TodoPageState({required List<Todo> todos}) = _TodoPageState;
}

/// TodoPage の ViewModel.
@riverpod
class TodoPageViewModel extends _$TodoPageViewModel {
  @override
  Future<TodoPageState> build() async {
    final todos = await ref.watch(todoRepositoryProvider).fetchTodos();
    return TodoPageState(todos: todos);
  }

  /// Children を作成する。
  ///
  /// 作成後、ViewModel をリビルドする。
}
