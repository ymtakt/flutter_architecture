import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../model/entity/feature/todo.dart';
import '../../../../model/repository/feature/todo/todo.repository.dart';

part 'todo_edit_page_view_model.freezed.dart';
part 'todo_edit_page_view_model.g.dart';

/// TodoEditPage の状態を表す State.
@freezed
class TodoEditPageState with _$TodoEditPageState {
  /// [TodoEditPageState] を生成する。
  const factory TodoEditPageState({required Todo todo}) = _TodoEditPageState;
}

/// TodoEditPage の ViewModel.
@riverpod
class TodoEditPageViewModel extends _$TodoEditPageViewModel {
  @override
  Future<TodoEditPageState> build(String todoId) async {
    final todo = await ref
        .watch(todoRepositoryProvider)
        .fetchTodoById(this.todoId);
    return TodoEditPageState(todo: todo);
  }

  /// Todo を更新する。
  Future<void> updateTodo(Todo todo) async {
    // family providerなのでbuildするときにtodoIdが渡される。
    await ref
        .read(todoRepositoryProvider)
        .updateTodo(
          id: todoId,
          title: todo.title,
          description: todo.description,
          status: todo.status.name,
        );
    ref.invalidateSelf();
  }
}
