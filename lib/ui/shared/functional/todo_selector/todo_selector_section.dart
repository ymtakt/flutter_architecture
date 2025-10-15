// ui/shared/functional/todo_selector_section/todo_selector_section.dart
import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'todo_selector_section_handler.dart';
import 'todo_selector_section_view_model.dart';

/// Todo 選択セクションコンポーネント。
///
/// Todo 一覧を表示して選択機能を提供する共通コンポーネント。
/// 完了済みの Todo の表示/非表示を制御でき、選択時のコールバックを受け取る。
class TodoSelectorSection extends ConsumerWidget {
  /// [TodoSelectorSection] を生成する。
  const TodoSelectorSection({
    super.key,
    this.onTodoSelected,
    this.title = 'Todoを選択',
    this.showCompleted = true,
  });

  /// Todo が選択されたときに実行されるコールバック関数。
  final Function(Todo)? onTodoSelected;
  
  /// セクションのタイトル。
  final String title;
  
  /// 完了済み Todo を表示するかどうか。
  final bool showCompleted;

  /// Todo 選択セクションの UI を構築する。
  ///
  /// ViewModel から Todo データを取得し、フィルタリングした一覧を表示する。
  /// 各 Todo はタップで選択でき、Handler を通じて処理される。
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoSelectorSectionViewModelProvider);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // セクションタイトル
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),

            // Todo一覧
            if (state.isLoading)
              const Center(child: CircularProgressIndicator())
            else if (state.todos.isEmpty)
              const Text('Todoがありません')
            else
              ...state.todos
                  .where(
                    (todo) => showCompleted || todo.status != TodoStatus.done,
                  )
                  .map(
                    (todo) => ListTile(
                      title: Text(todo.title),
                      subtitle: Text(todo.description),
                      leading: Icon(
                        todo.status == TodoStatus.done
                            ? Icons.check_circle
                            : Icons.radio_button_unchecked,
                        color: todo.status == TodoStatus.done
                            ? Colors.green
                            : Colors.grey,
                      ),
                      onTap: () {
                        ref
                            .read(todoSelectorSectionHandlerProvider)
                            .selectTodo(context: context, todo: todo);
                        onTodoSelected?.call(todo);
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
