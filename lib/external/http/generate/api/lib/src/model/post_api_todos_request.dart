//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_todos_request.g.dart';

/// PostApiTodosRequest
///
/// Properties:
/// * [title]
/// * [description]
/// * [completed]
@BuiltValue()
abstract class PostApiTodosRequest
    implements Built<PostApiTodosRequest, PostApiTodosRequestBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'completed')
  bool get completed;

  PostApiTodosRequest._();

  factory PostApiTodosRequest([void updates(PostApiTodosRequestBuilder b)]) =
      _$PostApiTodosRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiTodosRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiTodosRequest> get serializer =>
      _$PostApiTodosRequestSerializer();
}

class _$PostApiTodosRequestSerializer
    implements PrimitiveSerializer<PostApiTodosRequest> {
  @override
  final Iterable<Type> types = const [
    PostApiTodosRequest,
    _$PostApiTodosRequest
  ];

  @override
  final String wireName = r'PostApiTodosRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiTodosRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'completed';
    yield serializers.serialize(
      object.completed,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiTodosRequest object, {
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
    required PostApiTodosRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'completed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.completed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiTodosRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiTodosRequestBuilder();
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
