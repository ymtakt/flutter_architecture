import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:flutter_architecture/ui/shared/functionless/common_select_box.dart';
import 'package:flutter_architecture/ui/shared/functionless/common_text_field.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Todo の入力フォームコンポーネント。
///
/// Todo の作成・編集に使用する共通のフォームを提供する。
/// 初期データを渡すことで編集モードとして使用できる。
class TodoForm extends HookWidget {
  /// [TodoForm] を生成する。
  const TodoForm({
    super.key,
    required this.handleSubmit,
    required this.submitButtonText,
    this.initialTodoData,
  });

  /// フォームの初期データ。編集モードの場合に指定する。
  final Todo? initialTodoData;
  
  /// フォーム送信時に実行される処理。
  final Function(Todo) handleSubmit;
  
  /// 送信ボタンに表示するテキスト。
  final String submitButtonText;

  /// Todo フォームウィジェットを構築する。
  ///
  /// Todo の入力フィールドと送信ボタンを含む
  /// フォーム UI を構築する。
  @override
  Widget build(BuildContext context) {
    // エフェメラルステートとしてフォームの状態を管理
    final nameController = useTextEditingController(
      text: initialTodoData?.title ?? '',
    );
    final kanaController = useTextEditingController(
      text: initialTodoData?.description ?? '',
    );
    final todoStatus = useState<TodoStatus?>(
      initialTodoData?.status ?? TodoStatus.notStarted,
    );
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // TODOタイトルフィールド
            CommonTextField(
              controller: nameController,
              labelText: 'タイトル',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'タイトルを入力してください';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            // 説明フィールド
            CommonTextField(
              controller: kanaController,
              labelText: '説明',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '説明を入力してください';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            // 状態選択 - 修正箇所
            CommonSelectBox<TodoStatus>(
              value: todoStatus.value,
              items: TodoStatus.values
                  .map(
                    (status) => DropdownMenuItem<TodoStatus>(
                      value: status,
                      child: Text(status.toString()),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                todoStatus.value = value;
              },
              labelText: '状態',
              validator: (value) {
                if (value == null) {
                  return '状態を選択してください';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextButton(
              child: Text(submitButtonText),
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  final todo = Todo(
                    id: initialTodoData?.id ?? '',
                    title: nameController.text,
                    description: kanaController.text,
                    status: todoStatus.value ?? TodoStatus.notStarted,
                  );
                  handleSubmit(todo);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
