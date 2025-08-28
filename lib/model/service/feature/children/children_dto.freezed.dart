// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'children_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChildrenDtos _$ChildrenDtosFromJson(Map<String, dynamic> json) {
  return _ChildrenDtos.fromJson(json);
}

/// @nodoc
mixin _$ChildrenDtos {
  List<ChildrenDto> get children => throw _privateConstructorUsedError;

  /// Serializes this ChildrenDtos to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildrenDtos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildrenDtosCopyWith<ChildrenDtos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenDtosCopyWith<$Res> {
  factory $ChildrenDtosCopyWith(
          ChildrenDtos value, $Res Function(ChildrenDtos) then) =
      _$ChildrenDtosCopyWithImpl<$Res, ChildrenDtos>;
  @useResult
  $Res call({List<ChildrenDto> children});
}

/// @nodoc
class _$ChildrenDtosCopyWithImpl<$Res, $Val extends ChildrenDtos>
    implements $ChildrenDtosCopyWith<$Res> {
  _$ChildrenDtosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildrenDtos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ChildrenDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildrenDtosImplCopyWith<$Res>
    implements $ChildrenDtosCopyWith<$Res> {
  factory _$$ChildrenDtosImplCopyWith(
          _$ChildrenDtosImpl value, $Res Function(_$ChildrenDtosImpl) then) =
      __$$ChildrenDtosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChildrenDto> children});
}

/// @nodoc
class __$$ChildrenDtosImplCopyWithImpl<$Res>
    extends _$ChildrenDtosCopyWithImpl<$Res, _$ChildrenDtosImpl>
    implements _$$ChildrenDtosImplCopyWith<$Res> {
  __$$ChildrenDtosImplCopyWithImpl(
      _$ChildrenDtosImpl _value, $Res Function(_$ChildrenDtosImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildrenDtos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$ChildrenDtosImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ChildrenDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildrenDtosImpl implements _ChildrenDtos {
  const _$ChildrenDtosImpl({final List<ChildrenDto> children = const []})
      : _children = children;

  factory _$ChildrenDtosImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildrenDtosImplFromJson(json);

  final List<ChildrenDto> _children;
  @override
  @JsonKey()
  List<ChildrenDto> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'ChildrenDtos(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildrenDtosImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  /// Create a copy of ChildrenDtos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildrenDtosImplCopyWith<_$ChildrenDtosImpl> get copyWith =>
      __$$ChildrenDtosImplCopyWithImpl<_$ChildrenDtosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildrenDtosImplToJson(
      this,
    );
  }
}

abstract class _ChildrenDtos implements ChildrenDtos {
  const factory _ChildrenDtos({final List<ChildrenDto> children}) =
      _$ChildrenDtosImpl;

  factory _ChildrenDtos.fromJson(Map<String, dynamic> json) =
      _$ChildrenDtosImpl.fromJson;

  @override
  List<ChildrenDto> get children;

  /// Create a copy of ChildrenDtos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildrenDtosImplCopyWith<_$ChildrenDtosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildrenDto _$ChildrenDtoFromJson(Map<String, dynamic> json) {
  return _ChildrenDto.fromJson(json);
}

/// @nodoc
mixin _$ChildrenDto {
// Children の ID.
  String get id => throw _privateConstructorUsedError; // Children の名前。
  String get name => throw _privateConstructorUsedError; // Children のふりがな。
  String get kana => throw _privateConstructorUsedError; // Children の性別。
  String get gender => throw _privateConstructorUsedError; // Children の生年月日。
  String get birthday => throw _privateConstructorUsedError; // Children の作成日時。
  String get createdAt => throw _privateConstructorUsedError; // Children の更新日時。
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ChildrenDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildrenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildrenDtoCopyWith<ChildrenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenDtoCopyWith<$Res> {
  factory $ChildrenDtoCopyWith(
          ChildrenDto value, $Res Function(ChildrenDto) then) =
      _$ChildrenDtoCopyWithImpl<$Res, ChildrenDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String kana,
      String gender,
      String birthday,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$ChildrenDtoCopyWithImpl<$Res, $Val extends ChildrenDto>
    implements $ChildrenDtoCopyWith<$Res> {
  _$ChildrenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildrenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? kana = null,
    Object? gender = null,
    Object? birthday = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kana: null == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildrenDtoImplCopyWith<$Res>
    implements $ChildrenDtoCopyWith<$Res> {
  factory _$$ChildrenDtoImplCopyWith(
          _$ChildrenDtoImpl value, $Res Function(_$ChildrenDtoImpl) then) =
      __$$ChildrenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String kana,
      String gender,
      String birthday,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$ChildrenDtoImplCopyWithImpl<$Res>
    extends _$ChildrenDtoCopyWithImpl<$Res, _$ChildrenDtoImpl>
    implements _$$ChildrenDtoImplCopyWith<$Res> {
  __$$ChildrenDtoImplCopyWithImpl(
      _$ChildrenDtoImpl _value, $Res Function(_$ChildrenDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildrenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? kana = null,
    Object? gender = null,
    Object? birthday = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ChildrenDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kana: null == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildrenDtoImpl implements _ChildrenDto {
  const _$ChildrenDtoImpl(
      {required this.id,
      required this.name,
      required this.kana,
      required this.gender,
      required this.birthday,
      required this.createdAt,
      required this.updatedAt});

  factory _$ChildrenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildrenDtoImplFromJson(json);

// Children の ID.
  @override
  final String id;
// Children の名前。
  @override
  final String name;
// Children のふりがな。
  @override
  final String kana;
// Children の性別。
  @override
  final String gender;
// Children の生年月日。
  @override
  final String birthday;
// Children の作成日時。
  @override
  final String createdAt;
// Children の更新日時。
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'ChildrenDto(id: $id, name: $name, kana: $kana, gender: $gender, birthday: $birthday, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildrenDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, kana, gender, birthday, createdAt, updatedAt);

  /// Create a copy of ChildrenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildrenDtoImplCopyWith<_$ChildrenDtoImpl> get copyWith =>
      __$$ChildrenDtoImplCopyWithImpl<_$ChildrenDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildrenDtoImplToJson(
      this,
    );
  }
}

abstract class _ChildrenDto implements ChildrenDto {
  const factory _ChildrenDto(
      {required final String id,
      required final String name,
      required final String kana,
      required final String gender,
      required final String birthday,
      required final String createdAt,
      required final String updatedAt}) = _$ChildrenDtoImpl;

  factory _ChildrenDto.fromJson(Map<String, dynamic> json) =
      _$ChildrenDtoImpl.fromJson;

// Children の ID.
  @override
  String get id; // Children の名前。
  @override
  String get name; // Children のふりがな。
  @override
  String get kana; // Children の性別。
  @override
  String get gender; // Children の生年月日。
  @override
  String get birthday; // Children の作成日時。
  @override
  String get createdAt; // Children の更新日時。
  @override
  String get updatedAt;

  /// Create a copy of ChildrenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildrenDtoImplCopyWith<_$ChildrenDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
