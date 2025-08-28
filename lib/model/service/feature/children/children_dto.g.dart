// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildrenDtosImpl _$$ChildrenDtosImplFromJson(Map<String, dynamic> json) =>
    _$ChildrenDtosImpl(
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => ChildrenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ChildrenDtosImplToJson(_$ChildrenDtosImpl instance) =>
    <String, dynamic>{
      'children': instance.children,
    };

_$ChildrenDtoImpl _$$ChildrenDtoImplFromJson(Map<String, dynamic> json) =>
    _$ChildrenDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      kana: json['kana'] as String,
      gender: json['gender'] as String,
      birthday: json['birthday'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$ChildrenDtoImplToJson(_$ChildrenDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kana': instance.kana,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
