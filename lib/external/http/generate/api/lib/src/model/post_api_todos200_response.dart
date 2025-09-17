//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:miracle_api_client/src/model/get_api_todos200_response_todos_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_todos200_response.g.dart';

/// PostApiTodos200Response
///
/// Properties:
/// * [todo]
@BuiltValue()
abstract class PostApiTodos200Response
    implements Built<PostApiTodos200Response, PostApiTodos200ResponseBuilder> {
  @BuiltValueField(wireName: r'todo')
  GetApiTodos200ResponseTodosInner get todo;

  PostApiTodos200Response._();

  factory PostApiTodos200Response(
          [void updates(PostApiTodos200ResponseBuilder b)]) =
      _$PostApiTodos200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiTodos200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiTodos200Response> get serializer =>
      _$PostApiTodos200ResponseSerializer();
}

class _$PostApiTodos200ResponseSerializer
    implements PrimitiveSerializer<PostApiTodos200Response> {
  @override
  final Iterable<Type> types = const [
    PostApiTodos200Response,
    _$PostApiTodos200Response
  ];

  @override
  final String wireName = r'PostApiTodos200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiTodos200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'todo';
    yield serializers.serialize(
      object.todo,
      specifiedType: const FullType(GetApiTodos200ResponseTodosInner),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiTodos200Response object, {
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
    required PostApiTodos200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'todo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiTodos200ResponseTodosInner),
          ) as GetApiTodos200ResponseTodosInner;
          result.todo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiTodos200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiTodos200ResponseBuilder();
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
