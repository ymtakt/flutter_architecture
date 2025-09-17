//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:miracle_api_client/src/model/get_api_todos200_response_todos_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_todos200_response.g.dart';

/// GetApiTodos200Response
///
/// Properties:
/// * [todos]
@BuiltValue()
abstract class GetApiTodos200Response
    implements Built<GetApiTodos200Response, GetApiTodos200ResponseBuilder> {
  @BuiltValueField(wireName: r'todos')
  BuiltList<GetApiTodos200ResponseTodosInner> get todos;

  GetApiTodos200Response._();

  factory GetApiTodos200Response(
          [void updates(GetApiTodos200ResponseBuilder b)]) =
      _$GetApiTodos200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiTodos200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiTodos200Response> get serializer =>
      _$GetApiTodos200ResponseSerializer();
}

class _$GetApiTodos200ResponseSerializer
    implements PrimitiveSerializer<GetApiTodos200Response> {
  @override
  final Iterable<Type> types = const [
    GetApiTodos200Response,
    _$GetApiTodos200Response
  ];

  @override
  final String wireName = r'GetApiTodos200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiTodos200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'todos';
    yield serializers.serialize(
      object.todos,
      specifiedType: const FullType(
          BuiltList, [FullType(GetApiTodos200ResponseTodosInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiTodos200Response object, {
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
    required GetApiTodos200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'todos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(GetApiTodos200ResponseTodosInner)]),
          ) as BuiltList<GetApiTodos200ResponseTodosInner>;
          result.todos.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetApiTodos200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiTodos200ResponseBuilder();
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
