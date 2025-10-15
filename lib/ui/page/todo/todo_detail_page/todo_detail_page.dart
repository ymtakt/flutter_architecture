import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:flutter_architecture/ui/page/todo/todo_detail_page/todo_detail_page_handler.dart';
import 'package:flutter_architecture/ui/page/todo/todo_detail_page/todo_detail_page_view_model.dart';
import 'package:flutter_architecture/ui/routing/router_path.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Todo 詳細画面のページウィジェット。
///
/// 指定された ID の Todo の詳細情報を表示し、編集・削除機能を提供する。
/// ViewModel から Todo データを取得し、Handler を通じて各種操作を実行する。
class TodoDetailPage extends ConsumerWidget {
  /// [TodoDetailPage] を生成する。
  const TodoDetailPage({super.key, required this.todoId});

  /// 表示する Todo の ID。
  final String todoId;

  /// Todo 詳細画面の UI を構築する。
  ///
  /// ViewModel から Todo データを取得し、詳細情報の表示、
  /// 編集・削除ボタンの配置を行う。
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ViewModel を watch する。
    final viewModelAsyncValue = ref.watch(
      todoDetailPageViewModelProvider(todoId),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: Column(
        children: [
          viewModelAsyncValue.when(
            data: (data) => SingleChildScrollView(
              child: Column(
                children: [
                  Text(data.todo.id),
                  Column(children: [Text('Todo'), Text(data.todo.title)]),
                  Column(
                    children: [Text('Todoの説明'), Text(data.todo.description)],
                  ),
                  Column(
                    children: [Text('Todoの状態'), Text(data.todo.status.name)],
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        context.go('${RouterPath.TODO}/$todoId/edit'),
                    child: const Text('編集する'),
                  ),
                  TextButton(
                    onPressed: () => ref
                        .read(todoDetailPageHandlerProvider)
                        .showDeleteTodoDialog(context: context, todoId: todoId),
                    child: const Text(' 削除する'),
                  ),
                ],
              ),
            ),
            error: (error, stackTrace) {
              if (error is FetchTodoNotFoundException) {
                return Text('Todoが見つかりません');
              }
              return Text(error.toString());
            },
            loading: () => const CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
