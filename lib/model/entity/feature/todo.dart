import 'package:freezed_annotation/freezed_annotation.dart';

import '../../service/feature/todo/todo_dto.dart';

part 'todo.freezed.dart';

enum TodoStatus {
  notStarted,
  inProgress,
  done;

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

  /// [TodoDto] から [Todo] を生成する。
  factory Todo.fromDto(TodoDto dto) => Todo(
    id: dto.id,
    title: dto.title,
    description: dto.description,
    status: TodoStatus.values.firstWhere((e) => e.name == dto.status),
  );
}
