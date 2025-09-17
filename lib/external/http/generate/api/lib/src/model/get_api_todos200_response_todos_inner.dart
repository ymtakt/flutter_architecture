//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_todos200_response_todos_inner.g.dart';

/// GetApiTodos200ResponseTodosInner
///
/// Properties:
/// * [id]
/// * [title]
/// * [completed]
/// * [description]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class GetApiTodos200ResponseTodosInner
    implements
        Built<GetApiTodos200ResponseTodosInner,
            GetApiTodos200ResponseTodosInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  num get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'completed')
  bool get completed;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  String get updatedAt;

  GetApiTodos200ResponseTodosInner._();

  factory GetApiTodos200ResponseTodosInner(
          [void updates(GetApiTodos200ResponseTodosInnerBuilder b)]) =
      _$GetApiTodos200ResponseTodosInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiTodos200ResponseTodosInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiTodos200ResponseTodosInner> get serializer =>
      _$GetApiTodos200ResponseTodosInnerSerializer();
}

class _$GetApiTodos200ResponseTodosInnerSerializer
    implements PrimitiveSerializer<GetApiTodos200ResponseTodosInner> {
  @override
  final Iterable<Type> types = const [
    GetApiTodos200ResponseTodosInner,
    _$GetApiTodos200ResponseTodosInner
  ];

  @override
  final String wireName = r'GetApiTodos200ResponseTodosInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiTodos200ResponseTodosInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(num),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'completed';
    yield serializers.serialize(
      object.completed,
      specifiedType: const FullType(bool),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiTodos200ResponseTodosInner object, {
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
    required GetApiTodos200ResponseTodosInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'completed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.completed = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetApiTodos200ResponseTodosInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiTodos200ResponseTodosInnerBuilder();
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
