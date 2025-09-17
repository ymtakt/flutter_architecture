//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_index200_response.g.dart';

/// GetIndex200Response
///
/// Properties:
/// * [message]
@BuiltValue()
abstract class GetIndex200Response
    implements Built<GetIndex200Response, GetIndex200ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  GetIndex200Response._();

  factory GetIndex200Response([void updates(GetIndex200ResponseBuilder b)]) =
      _$GetIndex200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetIndex200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetIndex200Response> get serializer =>
      _$GetIndex200ResponseSerializer();
}

class _$GetIndex200ResponseSerializer
    implements PrimitiveSerializer<GetIndex200Response> {
  @override
  final Iterable<Type> types = const [
    GetIndex200Response,
    _$GetIndex200Response
  ];

  @override
  final String wireName = r'GetIndex200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetIndex200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetIndex200Response object, {
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
    required GetIndex200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetIndex200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIndex200ResponseBuilder();
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
