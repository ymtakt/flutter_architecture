// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_todos_by_todo_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiTodosByTodoId200Response extends GetApiTodosByTodoId200Response {
  @override
  final GetApiTodos200ResponseTodosInner todo;

  factory _$GetApiTodosByTodoId200Response(
          [void Function(GetApiTodosByTodoId200ResponseBuilder)? updates]) =>
      (GetApiTodosByTodoId200ResponseBuilder()..update(updates))._build();

  _$GetApiTodosByTodoId200Response._({required this.todo}) : super._();
  @override
  GetApiTodosByTodoId200Response rebuild(
          void Function(GetApiTodosByTodoId200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiTodosByTodoId200ResponseBuilder toBuilder() =>
      GetApiTodosByTodoId200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiTodosByTodoId200Response && todo == other.todo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, todo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetApiTodosByTodoId200Response')
          ..add('todo', todo))
        .toString();
  }
}

class GetApiTodosByTodoId200ResponseBuilder
    implements
        Builder<GetApiTodosByTodoId200Response,
            GetApiTodosByTodoId200ResponseBuilder> {
  _$GetApiTodosByTodoId200Response? _$v;

  GetApiTodos200ResponseTodosInnerBuilder? _todo;
  GetApiTodos200ResponseTodosInnerBuilder get todo =>
      _$this._todo ??= GetApiTodos200ResponseTodosInnerBuilder();
  set todo(GetApiTodos200ResponseTodosInnerBuilder? todo) =>
      _$this._todo = todo;

  GetApiTodosByTodoId200ResponseBuilder() {
    GetApiTodosByTodoId200Response._defaults(this);
  }

  GetApiTodosByTodoId200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiTodosByTodoId200Response other) {
    _$v = other as _$GetApiTodosByTodoId200Response;
  }

  @override
  void update(void Function(GetApiTodosByTodoId200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiTodosByTodoId200Response build() => _build();

  _$GetApiTodosByTodoId200Response _build() {
    _$GetApiTodosByTodoId200Response _$result;
    try {
      _$result = _$v ??
          _$GetApiTodosByTodoId200Response._(
            todo: todo.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiTodosByTodoId200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
