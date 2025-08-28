import 'package:freezed_annotation/freezed_annotation.dart';

part 'children_dto.freezed.dart';
part 'children_dto.g.dart';

// TODO: 後で Open API のスキーマから生成することを検討する。

/// Children の一覧を表す DTO.
@freezed
class ChildrenDtos with _$ChildrenDtos {
  /// Children の一覧を表す DTO を生成する。
  const factory ChildrenDtos({@Default([]) List<ChildrenDto> children}) =
      _ChildrenDtos;

  /// JSON から [ChildrenDtos] を生成する。
  factory ChildrenDtos.fromJson(Map<String, dynamic> json) =>
      _$ChildrenDtosFromJson(json);
}

/// Children のデータを表す DTO.
@freezed
class ChildrenDto with _$ChildrenDto {
  /// Children のデータを表す DTO を生成する。
  const factory ChildrenDto({
    // Children の ID.
    required String id,

    // Children の名前。
    required String name,

    // Children のふりがな。
    required String kana,

    // Children の性別。
    required String gender,

    // Children の生年月日。
    required String birthday,

    // Children の作成日時。
    required String createdAt,

    // Children の更新日時。
    required String updatedAt,
  }) = _ChildrenDto;

  /// JSON から [ChildrenDto] を生成する。
  factory ChildrenDto.fromJson(Map<String, dynamic> json) =>
      _$ChildrenDtoFromJson(json);
}
