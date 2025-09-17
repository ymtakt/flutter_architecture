// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_todos400_response_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetApiTodos400ResponseErrorCodeEnum
    _$getApiTodos400ResponseErrorCodeEnum_endpointPeriodGetTodosPeriodFetchFailedPeriod1 =
    const GetApiTodos400ResponseErrorCodeEnum._(
        'endpointPeriodGetTodosPeriodFetchFailedPeriod1');

GetApiTodos400ResponseErrorCodeEnum
    _$getApiTodos400ResponseErrorCodeEnumValueOf(String name) {
  switch (name) {
    case 'endpointPeriodGetTodosPeriodFetchFailedPeriod1':
      return _$getApiTodos400ResponseErrorCodeEnum_endpointPeriodGetTodosPeriodFetchFailedPeriod1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetApiTodos400ResponseErrorCodeEnum>
    _$getApiTodos400ResponseErrorCodeEnumValues = BuiltSet<
        GetApiTodos400ResponseErrorCodeEnum>(const <GetApiTodos400ResponseErrorCodeEnum>[
  _$getApiTodos400ResponseErrorCodeEnum_endpointPeriodGetTodosPeriodFetchFailedPeriod1,
]);

Serializer<GetApiTodos400ResponseErrorCodeEnum>
    _$getApiTodos400ResponseErrorCodeEnumSerializer =
    _$GetApiTodos400ResponseErrorCodeEnumSerializer();

class _$GetApiTodos400ResponseErrorCodeEnumSerializer
    implements PrimitiveSerializer<GetApiTodos400ResponseErrorCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'endpointPeriodGetTodosPeriodFetchFailedPeriod1':
        'endpoint.getTodos.fetchFailed.1',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'endpoint.getTodos.fetchFailed.1':
        'endpointPeriodGetTodosPeriodFetchFailedPeriod1',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetApiTodos400ResponseErrorCodeEnum
  ];
  @override
  final String wireName = 'GetApiTodos400ResponseErrorCodeEnum';

  @override
  Object serialize(
          Serializers serializers, GetApiTodos400ResponseErrorCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetApiTodos400ResponseErrorCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetApiTodos400ResponseErrorCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetApiTodos400ResponseError extends GetApiTodos400ResponseError {
  @override
  final GetApiTodos400ResponseErrorCodeEnum code;

  factory _$GetApiTodos400ResponseError(
          [void Function(GetApiTodos400ResponseErrorBuilder)? updates]) =>
      (GetApiTodos400ResponseErrorBuilder()..update(updates))._build();

  _$GetApiTodos400ResponseError._({required this.code}) : super._();
  @override
  GetApiTodos400ResponseError rebuild(
          void Function(GetApiTodos400ResponseErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiTodos400ResponseErrorBuilder toBuilder() =>
      GetApiTodos400ResponseErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiTodos400ResponseError && code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetApiTodos400ResponseError')
          ..add('code', code))
        .toString();
  }
}

class GetApiTodos400ResponseErrorBuilder
    implements
        Builder<GetApiTodos400ResponseError,
            GetApiTodos400ResponseErrorBuilder> {
  _$GetApiTodos400ResponseError? _$v;

  GetApiTodos400ResponseErrorCodeEnum? _code;
  GetApiTodos400ResponseErrorCodeEnum? get code => _$this._code;
  set code(GetApiTodos400ResponseErrorCodeEnum? code) => _$this._code = code;

  GetApiTodos400ResponseErrorBuilder() {
    GetApiTodos400ResponseError._defaults(this);
  }

  GetApiTodos400ResponseErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiTodos400ResponseError other) {
    _$v = other as _$GetApiTodos400ResponseError;
  }

  @override
  void update(void Function(GetApiTodos400ResponseErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiTodos400ResponseError build() => _build();

  _$GetApiTodos400ResponseError _build() {
    final _$result = _$v ??
        _$GetApiTodos400ResponseError._(
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'GetApiTodos400ResponseError', 'code'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
