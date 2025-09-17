// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_todos400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiTodos400Response extends GetApiTodos400Response {
  @override
  final GetApiTodos400ResponseError error;

  factory _$GetApiTodos400Response(
          [void Function(GetApiTodos400ResponseBuilder)? updates]) =>
      (GetApiTodos400ResponseBuilder()..update(updates))._build();

  _$GetApiTodos400Response._({required this.error}) : super._();
  @override
  GetApiTodos400Response rebuild(
          void Function(GetApiTodos400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiTodos400ResponseBuilder toBuilder() =>
      GetApiTodos400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiTodos400Response && error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetApiTodos400Response')
          ..add('error', error))
        .toString();
  }
}

class GetApiTodos400ResponseBuilder
    implements Builder<GetApiTodos400Response, GetApiTodos400ResponseBuilder> {
  _$GetApiTodos400Response? _$v;

  GetApiTodos400ResponseErrorBuilder? _error;
  GetApiTodos400ResponseErrorBuilder get error =>
      _$this._error ??= GetApiTodos400ResponseErrorBuilder();
  set error(GetApiTodos400ResponseErrorBuilder? error) => _$this._error = error;

  GetApiTodos400ResponseBuilder() {
    GetApiTodos400Response._defaults(this);
  }

  GetApiTodos400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiTodos400Response other) {
    _$v = other as _$GetApiTodos400Response;
  }

  @override
  void update(void Function(GetApiTodos400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiTodos400Response build() => _build();

  _$GetApiTodos400Response _build() {
    _$GetApiTodos400Response _$result;
    try {
      _$result = _$v ??
          _$GetApiTodos400Response._(
            error: error.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        error.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiTodos400Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
