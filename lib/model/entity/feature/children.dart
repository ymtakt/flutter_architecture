import 'package:freezed_annotation/freezed_annotation.dart';

import '../../service/feature/children/children_dto.dart';

part 'children.freezed.dart';

/// Children エンティティ。
@freezed
class Children with _$Children {
  /// [Children] を生成する。
  const factory Children({
    required String id,
    required String name,
    required String kana,
    required String gender,
    required String birthday,
  }) = _Children;

  /// [ChildrenDto] から [Children] を生成する。
  factory Children.fromDto(ChildrenDto dto) => Children(
    id: dto.id,
    name: dto.name,
    kana: dto.kana,
    gender: dto.gender,
    birthday: dto.birthday,
  );
}
