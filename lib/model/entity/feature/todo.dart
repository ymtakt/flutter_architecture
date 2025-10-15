import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miracle_api_client/miracle_api_client.dart';

part 'todo.freezed.dart';

/// Todo の状態を表す列挙型。
enum TodoStatus {
  notStarted,
  inProgress,
  done;

  /// 状態を日本語の文字列に変換する。
  @override
  String toString() {
    switch (this) {
      case TodoStatus.notStarted:
        return '未着手';
      case TodoStatus.inProgress:
        return '進行中';
      case TodoStatus.done:
        return '完了';
    }
  }

  /// 状態の名前。
  String get name => toString();
}

/// Todo エンティティ。
@freezed
class Todo with _$Todo {
  /// [Todo] を生成する。
  const factory Todo({
    required String id,
    required String title,
    required String description,
    required TodoStatus status,
  }) = _Todo;

  /// [GetApiTodos200ResponseTodosInner] から [Todo] を生成する。
  ///
  /// API Model なので fromAPIModel と命名するルールにする（公式通り）。
  factory Todo.fromDto(GetApiTodos200ResponseTodosInner dto) => Todo(
    id: dto.id.toString(),
    title: dto.title,
    description: dto.description,
    status: TodoStatus.notStarted, // completedから判定
  );
}

/// Todo一覧の取得に関する400エラー例外。
class FetchTodos400Exception implements Exception {}

/// Todoの一般的な取得エラー例外。
class FetchTodosGeneralException implements Exception {}

/// Todoが見つからない場合の例外。
class FetchTodoNotFoundException implements Exception {}

/// Todo作成の一般的なエラー例外。
class CreateTodoGeneralException implements Exception {}

/// Todo更新時に対象が見つからない場合の例外。
class UpdateTodoNotFoundException implements Exception {}

/// Todo更新の一般的なエラー例外。
class UpdateTodoGeneralException implements Exception {}

/// Todo削除時に対象が見つからない場合の例外。
class DeleteTodoNotFoundException implements Exception {}

/// Todo削除の一般的なエラー例外。
class DeleteTodoGeneralException implements Exception {}
