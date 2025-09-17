import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_selector_section_view_model.freezed.dart';
part 'todo_selector_section_view_model.g.dart';

/// Todo選択セクションの状態
@freezed
class TodoSelectorSectionState with _$TodoSelectorSectionState {
  const factory TodoSelectorSectionState({
    @Default([]) List<Todo> todos,
    @Default(false) bool isLoading,
    Todo? selectedTodo,
  }) = _TodoSelectorSectionState;
}

/// Todo選択セクションのViewModel
@riverpod
class TodoSelectorSectionViewModel extends _$TodoSelectorSectionViewModel {
  @override
  TodoSelectorSectionState build() {
    // 初期化時にTodo一覧を読み込み
    loadTodos();
    return const TodoSelectorSectionState(isLoading: true);
  }

  /// Todo一覧を読み込む
  Future<void> loadTodos() async {
    state = state.copyWith(isLoading: true);

    try {
      /** 
       * TodoRepositoryを呼び出してTodo一覧を取得:
       * - 完了・未完了の両方を取得
       * - 作成日時の降順で取得
       * - 最新20件程度に制限
       */

      await Future.delayed(const Duration(milliseconds: 500));
      final todos = <Todo>[
        // 実際のTodo一覧
      ];

      state = state.copyWith(todos: todos, isLoading: false);
    } catch (error) {
      state = state.copyWith(todos: [], isLoading: false);
      rethrow;
    }
  }

  /// Todo選択を記録
  Future<void> recordSelection(Todo todo) async {
    state = state.copyWith(selectedTodo: todo);

    /** 
     * 選択履歴をSharedPreferencesに保存:
     * - 最近選択されたTodoのIDを記録
     * - 選択時刻を記録
     * - 使用統計データとして活用
     */
  }
}
