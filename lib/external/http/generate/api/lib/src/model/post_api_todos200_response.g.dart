// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_todos200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiTodos200Response extends PostApiTodos200Response {
  @override
  final GetApiTodos200ResponseTodosInner todo;

  factory _$PostApiTodos200Response(
          [void Function(PostApiTodos200ResponseBuilder)? updates]) =>
      (PostApiTodos200ResponseBuilder()..update(updates))._build();

  _$PostApiTodos200Response._({required this.todo}) : super._();
  @override
  PostApiTodos200Response rebuild(
          void Function(PostApiTodos200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiTodos200ResponseBuilder toBuilder() =>
      PostApiTodos200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiTodos200Response && todo == other.todo;
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
    return (newBuiltValueToStringHelper(r'PostApiTodos200Response')
          ..add('todo', todo))
        .toString();
  }
}

class PostApiTodos200ResponseBuilder
    implements
        Builder<PostApiTodos200Response, PostApiTodos200ResponseBuilder> {
  _$PostApiTodos200Response? _$v;

  GetApiTodos200ResponseTodosInnerBuilder? _todo;
  GetApiTodos200ResponseTodosInnerBuilder get todo =>
      _$this._todo ??= GetApiTodos200ResponseTodosInnerBuilder();
  set todo(GetApiTodos200ResponseTodosInnerBuilder? todo) =>
      _$this._todo = todo;

  PostApiTodos200ResponseBuilder() {
    PostApiTodos200Response._defaults(this);
  }

  PostApiTodos200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiTodos200Response other) {
    _$v = other as _$PostApiTodos200Response;
  }

  @override
  void update(void Function(PostApiTodos200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiTodos200Response build() => _build();

  _$PostApiTodos200Response _build() {
    _$PostApiTodos200Response _$result;
    try {
      _$result = _$v ??
          _$PostApiTodos200Response._(
            todo: todo.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiTodos200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
