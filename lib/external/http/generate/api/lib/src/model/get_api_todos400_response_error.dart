//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_todos400_response_error.g.dart';

/// GetApiTodos400ResponseError
///
/// Properties:
/// * [code] - エラーコード。以下の値が使用されます： - endpoint.getTodos.fetchFailed.1: FETCH_FAILED - Todo 一覧の取得に失敗しました。
@BuiltValue()
abstract class GetApiTodos400ResponseError
    implements
        Built<GetApiTodos400ResponseError, GetApiTodos400ResponseErrorBuilder> {
  /// エラーコード。以下の値が使用されます： - endpoint.getTodos.fetchFailed.1: FETCH_FAILED - Todo 一覧の取得に失敗しました。
  @BuiltValueField(wireName: r'code')
  GetApiTodos400ResponseErrorCodeEnum get code;
  // enum codeEnum {  endpoint.getTodos.fetchFailed.1,  };

  GetApiTodos400ResponseError._();

  factory GetApiTodos400ResponseError(
          [void updates(GetApiTodos400ResponseErrorBuilder b)]) =
      _$GetApiTodos400ResponseError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiTodos400ResponseErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiTodos400ResponseError> get serializer =>
      _$GetApiTodos400ResponseErrorSerializer();
}

class _$GetApiTodos400ResponseErrorSerializer
    implements PrimitiveSerializer<GetApiTodos400ResponseError> {
  @override
  final Iterable<Type> types = const [
    GetApiTodos400ResponseError,
    _$GetApiTodos400ResponseError
  ];

  @override
  final String wireName = r'GetApiTodos400ResponseError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiTodos400ResponseError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(GetApiTodos400ResponseErrorCodeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiTodos400ResponseError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiTodos400ResponseErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiTodos400ResponseErrorCodeEnum),
          ) as GetApiTodos400ResponseErrorCodeEnum;
          result.code = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetApiTodos400ResponseError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiTodos400ResponseErrorBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class GetApiTodos400ResponseErrorCodeEnum extends EnumClass {
  /// エラーコード。以下の値が使用されます： - endpoint.getTodos.fetchFailed.1: FETCH_FAILED - Todo 一覧の取得に失敗しました。
  @BuiltValueEnumConst(wireName: r'endpoint.getTodos.fetchFailed.1')
  static const GetApiTodos400ResponseErrorCodeEnum
      endpointPeriodGetTodosPeriodFetchFailedPeriod1 =
      _$getApiTodos400ResponseErrorCodeEnum_endpointPeriodGetTodosPeriodFetchFailedPeriod1;

  static Serializer<GetApiTodos400ResponseErrorCodeEnum> get serializer =>
      _$getApiTodos400ResponseErrorCodeEnumSerializer;

  const GetApiTodos400ResponseErrorCodeEnum._(String name) : super(name);

  static BuiltSet<GetApiTodos400ResponseErrorCodeEnum> get values =>
      _$getApiTodos400ResponseErrorCodeEnumValues;
  static GetApiTodos400ResponseErrorCodeEnum valueOf(String name) =>
      _$getApiTodos400ResponseErrorCodeEnumValueOf(name);
}
