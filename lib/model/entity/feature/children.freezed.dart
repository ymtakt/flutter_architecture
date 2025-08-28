// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'children.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Children {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get kana => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;

  /// Create a copy of Children
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildrenCopyWith<Children> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenCopyWith<$Res> {
  factory $ChildrenCopyWith(Children value, $Res Function(Children) then) =
      _$ChildrenCopyWithImpl<$Res, Children>;
  @useResult
  $Res call(
      {String id, String name, String kana, String gender, String birthday});
}

/// @nodoc
class _$ChildrenCopyWithImpl<$Res, $Val extends Children>
    implements $ChildrenCopyWith<$Res> {
  _$ChildrenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Children
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? kana = null,
    Object? gender = null,
    Object? birthday = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildrenImplCopyWith<$Res>
    implements $ChildrenCopyWith<$Res> {
  factory _$$ChildrenImplCopyWith(
          _$ChildrenImpl value, $Res Function(_$ChildrenImpl) then) =
      __$$ChildrenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String kana, String gender, String birthday});
}

/// @nodoc
class __$$ChildrenImplCopyWithImpl<$Res>
    extends _$ChildrenCopyWithImpl<$Res, _$ChildrenImpl>
    implements _$$ChildrenImplCopyWith<$Res> {
  __$$ChildrenImplCopyWithImpl(
      _$ChildrenImpl _value, $Res Function(_$ChildrenImpl) _then)
      : super(_value, _then);

  /// Create a copy of Children
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? kana = null,
    Object? gender = null,
    Object? birthday = null,
  }) {
    return _then(_$ChildrenImpl(
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
    ));
  }
}

/// @nodoc

class _$ChildrenImpl implements _Children {
  const _$ChildrenImpl(
      {required this.id,
      required this.name,
      required this.kana,
      required this.gender,
      required this.birthday});

  @override
  final String id;
  @override
  final String name;
  @override
  final String kana;
  @override
  final String gender;
  @override
  final String birthday;

  @override
  String toString() {
    return 'Children(id: $id, name: $name, kana: $kana, gender: $gender, birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildrenImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, kana, gender, birthday);

  /// Create a copy of Children
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildrenImplCopyWith<_$ChildrenImpl> get copyWith =>
      __$$ChildrenImplCopyWithImpl<_$ChildrenImpl>(this, _$identity);
}

abstract class _Children implements Children {
  const factory _Children(
      {required final String id,
      required final String name,
      required final String kana,
      required final String gender,
      required final String birthday}) = _$ChildrenImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get kana;
  @override
  String get gender;
  @override
  String get birthday;

  /// Create a copy of Children
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildrenImplCopyWith<_$ChildrenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
