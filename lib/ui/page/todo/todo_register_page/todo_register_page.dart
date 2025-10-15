import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/page/todo/todo_form.dart';
import 'package:flutter_architecture/ui/page/todo/todo_register_page/todo_register_page_handler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Todo 登録画面のページウィジェット。
///
/// 新しい Todo を作成するためのフォームを提供する。
/// TodoForm コンポーネントを使用して入力フィールドと登録処理を管理する。
class TodoRegisterPage extends ConsumerWidget {
  /// [TodoRegisterPage] を生成する。
  const TodoRegisterPage({super.key});

  /// Todo 登録画面の UI を構築する。
  ///
  /// TodoForm を使用して Todo の入力フォームを表示し、
  /// 登録処理を Handler に委譲する。
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo登録')),
      body: TodoForm(
        handleSubmit: (todo) {
          // 登録処理
          ref
              .read(todoRegisterDetailPageHandlerProvider)
              .createTodo(todo, context);
        },
        submitButtonText: '登録する',
      ),
    );
  }
}
