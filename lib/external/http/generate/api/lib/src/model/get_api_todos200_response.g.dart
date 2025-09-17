// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_todos200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiTodos200Response extends GetApiTodos200Response {
  @override
  final BuiltList<GetApiTodos200ResponseTodosInner> todos;

  factory _$GetApiTodos200Response(
          [void Function(GetApiTodos200ResponseBuilder)? updates]) =>
      (GetApiTodos200ResponseBuilder()..update(updates))._build();

  _$GetApiTodos200Response._({required this.todos}) : super._();
  @override
  GetApiTodos200Response rebuild(
          void Function(GetApiTodos200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiTodos200ResponseBuilder toBuilder() =>
      GetApiTodos200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiTodos200Response && todos == other.todos;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, todos.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetApiTodos200Response')
          ..add('todos', todos))
        .toString();
  }
}

class GetApiTodos200ResponseBuilder
    implements Builder<GetApiTodos200Response, GetApiTodos200ResponseBuilder> {
  _$GetApiTodos200Response? _$v;

  ListBuilder<GetApiTodos200ResponseTodosInner>? _todos;
  ListBuilder<GetApiTodos200ResponseTodosInner> get todos =>
      _$this._todos ??= ListBuilder<GetApiTodos200ResponseTodosInner>();
  set todos(ListBuilder<GetApiTodos200ResponseTodosInner>? todos) =>
      _$this._todos = todos;

  GetApiTodos200ResponseBuilder() {
    GetApiTodos200Response._defaults(this);
  }

  GetApiTodos200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todos = $v.todos.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiTodos200Response other) {
    _$v = other as _$GetApiTodos200Response;
  }

  @override
  void update(void Function(GetApiTodos200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiTodos200Response build() => _build();

  _$GetApiTodos200Response _build() {
    _$GetApiTodos200Response _$result;
    try {
      _$result = _$v ??
          _$GetApiTodos200Response._(
            todos: todos.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiTodos200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
