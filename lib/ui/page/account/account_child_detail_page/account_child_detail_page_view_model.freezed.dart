// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_child_detail_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountChildDetailPageState {
  Children get child => throw _privateConstructorUsedError;

  /// Create a copy of AccountChildDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountChildDetailPageStateCopyWith<AccountChildDetailPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountChildDetailPageStateCopyWith<$Res> {
  factory $AccountChildDetailPageStateCopyWith(
          AccountChildDetailPageState value,
          $Res Function(AccountChildDetailPageState) then) =
      _$AccountChildDetailPageStateCopyWithImpl<$Res,
          AccountChildDetailPageState>;
  @useResult
  $Res call({Children child});

  $ChildrenCopyWith<$Res> get child;
}

/// @nodoc
class _$AccountChildDetailPageStateCopyWithImpl<$Res,
        $Val extends AccountChildDetailPageState>
    implements $AccountChildDetailPageStateCopyWith<$Res> {
  _$AccountChildDetailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountChildDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
  }) {
    return _then(_value.copyWith(
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Children,
    ) as $Val);
  }

  /// Create a copy of AccountChildDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChildrenCopyWith<$Res> get child {
    return $ChildrenCopyWith<$Res>(_value.child, (value) {
      return _then(_value.copyWith(child: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountChildDetailPageStateImplCopyWith<$Res>
    implements $AccountChildDetailPageStateCopyWith<$Res> {
  factory _$$AccountChildDetailPageStateImplCopyWith(
          _$AccountChildDetailPageStateImpl value,
          $Res Function(_$AccountChildDetailPageStateImpl) then) =
      __$$AccountChildDetailPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Children child});

  @override
  $ChildrenCopyWith<$Res> get child;
}

/// @nodoc
class __$$AccountChildDetailPageStateImplCopyWithImpl<$Res>
    extends _$AccountChildDetailPageStateCopyWithImpl<$Res,
        _$AccountChildDetailPageStateImpl>
    implements _$$AccountChildDetailPageStateImplCopyWith<$Res> {
  __$$AccountChildDetailPageStateImplCopyWithImpl(
      _$AccountChildDetailPageStateImpl _value,
      $Res Function(_$AccountChildDetailPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountChildDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
  }) {
    return _then(_$AccountChildDetailPageStateImpl(
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Children,
    ));
  }
}

/// @nodoc

class _$AccountChildDetailPageStateImpl
    implements _AccountChildDetailPageState {
  const _$AccountChildDetailPageStateImpl({required this.child});

  @override
  final Children child;

  @override
  String toString() {
    return 'AccountChildDetailPageState(child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountChildDetailPageStateImpl &&
            (identical(other.child, child) || other.child == child));
  }

  @override
  int get hashCode => Object.hash(runtimeType, child);

  /// Create a copy of AccountChildDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountChildDetailPageStateImplCopyWith<_$AccountChildDetailPageStateImpl>
      get copyWith => __$$AccountChildDetailPageStateImplCopyWithImpl<
          _$AccountChildDetailPageStateImpl>(this, _$identity);
}

abstract class _AccountChildDetailPageState
    implements AccountChildDetailPageState {
  const factory _AccountChildDetailPageState({required final Children child}) =
      _$AccountChildDetailPageStateImpl;

  @override
  Children get child;

  /// Create a copy of AccountChildDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountChildDetailPageStateImplCopyWith<_$AccountChildDetailPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
