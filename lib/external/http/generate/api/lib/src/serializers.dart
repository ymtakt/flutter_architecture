//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:miracle_api_client/src/date_serializer.dart';
import 'package:miracle_api_client/src/model/date.dart';

import 'package:miracle_api_client/src/model/get_api_todos200_response.dart';
import 'package:miracle_api_client/src/model/get_api_todos200_response_todos_inner.dart';
import 'package:miracle_api_client/src/model/get_api_todos400_response.dart';
import 'package:miracle_api_client/src/model/get_api_todos400_response_error.dart';
import 'package:miracle_api_client/src/model/get_api_todos_by_todo_id200_response.dart';
import 'package:miracle_api_client/src/model/get_index200_response.dart';
import 'package:miracle_api_client/src/model/post_api_todos200_response.dart';
import 'package:miracle_api_client/src/model/post_api_todos_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  GetApiTodos200Response,
  GetApiTodos200ResponseTodosInner,
  GetApiTodos400Response,
  GetApiTodos400ResponseError,
  GetApiTodosByTodoId200Response,
  GetIndex200Response,
  PostApiTodos200Response,
  PostApiTodosRequest,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
