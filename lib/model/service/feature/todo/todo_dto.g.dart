// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoDtosImpl _$$TodoDtosImplFromJson(Map<String, dynamic> json) =>
    _$TodoDtosImpl(
      todos: (json['todos'] as List<dynamic>?)
              ?.map((e) => TodoDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TodoDtosImplToJson(_$TodoDtosImpl instance) =>
    <String, dynamic>{
      'todos': instance.todos,
    };

_$TodoDtoImpl _$$TodoDtoImplFromJson(Map<String, dynamic> json) =>
    _$TodoDtoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$TodoDtoImplToJson(_$TodoDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
