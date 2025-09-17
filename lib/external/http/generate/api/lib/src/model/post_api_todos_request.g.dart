// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_todos_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiTodosRequest extends PostApiTodosRequest {
  @override
  final String title;
  @override
  final String description;
  @override
  final bool completed;

  factory _$PostApiTodosRequest(
          [void Function(PostApiTodosRequestBuilder)? updates]) =>
      (PostApiTodosRequestBuilder()..update(updates))._build();

  _$PostApiTodosRequest._(
      {required this.title, required this.description, required this.completed})
      : super._();
  @override
  PostApiTodosRequest rebuild(
          void Function(PostApiTodosRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiTodosRequestBuilder toBuilder() =>
      PostApiTodosRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiTodosRequest &&
        title == other.title &&
        description == other.description &&
        completed == other.completed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostApiTodosRequest')
          ..add('title', title)
          ..add('description', description)
          ..add('completed', completed))
        .toString();
  }
}

class PostApiTodosRequestBuilder
    implements Builder<PostApiTodosRequest, PostApiTodosRequestBuilder> {
  _$PostApiTodosRequest? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  PostApiTodosRequestBuilder() {
    PostApiTodosRequest._defaults(this);
  }

  PostApiTodosRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _completed = $v.completed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiTodosRequest other) {
    _$v = other as _$PostApiTodosRequest;
  }

  @override
  void update(void Function(PostApiTodosRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiTodosRequest build() => _build();

  _$PostApiTodosRequest _build() {
    final _$result = _$v ??
        _$PostApiTodosRequest._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'PostApiTodosRequest', 'title'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'PostApiTodosRequest', 'description'),
          completed: BuiltValueNullFieldError.checkNotNull(
              completed, r'PostApiTodosRequest', 'completed'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
