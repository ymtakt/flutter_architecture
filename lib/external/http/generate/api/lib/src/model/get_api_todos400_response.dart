//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:miracle_api_client/src/model/get_api_todos400_response_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_todos400_response.g.dart';

/// GetApiTodos400Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class GetApiTodos400Response
    implements Built<GetApiTodos400Response, GetApiTodos400ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  GetApiTodos400ResponseError get error;

  GetApiTodos400Response._();

  factory GetApiTodos400Response(
          [void updates(GetApiTodos400ResponseBuilder b)]) =
      _$GetApiTodos400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiTodos400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiTodos400Response> get serializer =>
      _$GetApiTodos400ResponseSerializer();
}

class _$GetApiTodos400ResponseSerializer
    implements PrimitiveSerializer<GetApiTodos400Response> {
  @override
  final Iterable<Type> types = const [
    GetApiTodos400Response,
    _$GetApiTodos400Response
  ];

  @override
  final String wireName = r'GetApiTodos400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiTodos400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(GetApiTodos400ResponseError),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiTodos400Response object, {
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
    required GetApiTodos400ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiTodos400ResponseError),
          ) as GetApiTodos400ResponseError;
          result.error.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetApiTodos400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiTodos400ResponseBuilder();
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
