//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:miracle_api_client/src/model/get_api_todos200_response_todos_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_todos_by_todo_id200_response.g.dart';

/// GetApiTodosByTodoId200Response
///
/// Properties:
/// * [todo]
@BuiltValue()
abstract class GetApiTodosByTodoId200Response
    implements
        Built<GetApiTodosByTodoId200Response,
            GetApiTodosByTodoId200ResponseBuilder> {
  @BuiltValueField(wireName: r'todo')
  GetApiTodos200ResponseTodosInner get todo;

  GetApiTodosByTodoId200Response._();

  factory GetApiTodosByTodoId200Response(
          [void updates(GetApiTodosByTodoId200ResponseBuilder b)]) =
      _$GetApiTodosByTodoId200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiTodosByTodoId200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiTodosByTodoId200Response> get serializer =>
      _$GetApiTodosByTodoId200ResponseSerializer();
}

class _$GetApiTodosByTodoId200ResponseSerializer
    implements PrimitiveSerializer<GetApiTodosByTodoId200Response> {
  @override
  final Iterable<Type> types = const [
    GetApiTodosByTodoId200Response,
    _$GetApiTodosByTodoId200Response
  ];

  @override
  final String wireName = r'GetApiTodosByTodoId200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiTodosByTodoId200Response object, {
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
    GetApiTodosByTodoId200Response object, {
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
    required GetApiTodosByTodoId200ResponseBuilder result,
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
  GetApiTodosByTodoId200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiTodosByTodoId200ResponseBuilder();
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
