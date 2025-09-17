// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_index200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIndex200Response extends GetIndex200Response {
  @override
  final String message;

  factory _$GetIndex200Response(
          [void Function(GetIndex200ResponseBuilder)? updates]) =>
      (GetIndex200ResponseBuilder()..update(updates))._build();

  _$GetIndex200Response._({required this.message}) : super._();
  @override
  GetIndex200Response rebuild(
          void Function(GetIndex200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIndex200ResponseBuilder toBuilder() =>
      GetIndex200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIndex200Response && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetIndex200Response')
          ..add('message', message))
        .toString();
  }
}

class GetIndex200ResponseBuilder
    implements Builder<GetIndex200Response, GetIndex200ResponseBuilder> {
  _$GetIndex200Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GetIndex200ResponseBuilder() {
    GetIndex200Response._defaults(this);
  }

  GetIndex200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIndex200Response other) {
    _$v = other as _$GetIndex200Response;
  }

  @override
  void update(void Function(GetIndex200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIndex200Response build() => _build();

  _$GetIndex200Response _build() {
    final _$result = _$v ??
        _$GetIndex200Response._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'GetIndex200Response', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
