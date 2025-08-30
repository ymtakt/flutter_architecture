import 'package:flutter_architecture/ui/page/todo/todo_page/todo_page_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../model/entity/feature/todo.dart';
import '../../../../model/repository/feature/todo/todo.repository.dart';

part 'todo_detail_page_view_model.freezed.dart';
part 'todo_detail_page_view_model.g.dart';

/// TodoDetailPage の状態を表す State.
@freezed
class TodoDetailPageState with _$TodoDetailPageState {
  /// [TodoDetailPageState] を生成する。
  const factory TodoDetailPageState({required Todo todo}) =
      _TodoDetailPageState;
}

/// TodoDetailPage の ViewModel.
@riverpod
class TodoDetailPageViewModel extends _$TodoDetailPageViewModel {
  @override
  Future<TodoDetailPageState> build(String todoId) async {
    final todo = await ref
        .watch(todoRepositoryProvider)
        .fetchTodoById(this.todoId);
    return TodoDetailPageState(todo: todo);
  }

  /// Todo を削除する。
  Future<void> deleteTodo() async {
    // family providerなのでbuildするときにtodoIdが渡される。
    await ref.read(todoRepositoryProvider).deleteTodo(id: todoId);
    ref.invalidateSelf();
    ref.invalidate(todoPageViewModelProvider);
  }
}
