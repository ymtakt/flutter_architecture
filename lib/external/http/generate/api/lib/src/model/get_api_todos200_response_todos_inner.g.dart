// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_todos200_response_todos_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiTodos200ResponseTodosInner
    extends GetApiTodos200ResponseTodosInner {
  @override
  final num id;
  @override
  final String title;
  @override
  final bool completed;
  @override
  final String description;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$GetApiTodos200ResponseTodosInner(
          [void Function(GetApiTodos200ResponseTodosInnerBuilder)? updates]) =>
      (GetApiTodos200ResponseTodosInnerBuilder()..update(updates))._build();

  _$GetApiTodos200ResponseTodosInner._(
      {required this.id,
      required this.title,
      required this.completed,
      required this.description,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  GetApiTodos200ResponseTodosInner rebuild(
          void Function(GetApiTodos200ResponseTodosInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiTodos200ResponseTodosInnerBuilder toBuilder() =>
      GetApiTodos200ResponseTodosInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiTodos200ResponseTodosInner &&
        id == other.id &&
        title == other.title &&
        completed == other.completed &&
        description == other.description &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetApiTodos200ResponseTodosInner')
          ..add('id', id)
          ..add('title', title)
          ..add('completed', completed)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GetApiTodos200ResponseTodosInnerBuilder
    implements
        Builder<GetApiTodos200ResponseTodosInner,
            GetApiTodos200ResponseTodosInnerBuilder> {
  _$GetApiTodos200ResponseTodosInner? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GetApiTodos200ResponseTodosInnerBuilder() {
    GetApiTodos200ResponseTodosInner._defaults(this);
  }

  GetApiTodos200ResponseTodosInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _completed = $v.completed;
      _description = $v.description;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiTodos200ResponseTodosInner other) {
    _$v = other as _$GetApiTodos200ResponseTodosInner;
  }

  @override
  void update(void Function(GetApiTodos200ResponseTodosInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiTodos200ResponseTodosInner build() => _build();

  _$GetApiTodos200ResponseTodosInner _build() {
    final _$result = _$v ??
        _$GetApiTodos200ResponseTodosInner._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GetApiTodos200ResponseTodosInner', 'id'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'GetApiTodos200ResponseTodosInner', 'title'),
          completed: BuiltValueNullFieldError.checkNotNull(
              completed, r'GetApiTodos200ResponseTodosInner', 'completed'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'GetApiTodos200ResponseTodosInner', 'description'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'GetApiTodos200ResponseTodosInner', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'GetApiTodos200ResponseTodosInner', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
