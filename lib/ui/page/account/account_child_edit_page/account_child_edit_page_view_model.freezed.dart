// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_child_edit_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountChildEditPageState {
  Children get child => throw _privateConstructorUsedError;

  /// Create a copy of AccountChildEditPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountChildEditPageStateCopyWith<AccountChildEditPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountChildEditPageStateCopyWith<$Res> {
  factory $AccountChildEditPageStateCopyWith(AccountChildEditPageState value,
          $Res Function(AccountChildEditPageState) then) =
      _$AccountChildEditPageStateCopyWithImpl<$Res, AccountChildEditPageState>;
  @useResult
  $Res call({Children child});

  $ChildrenCopyWith<$Res> get child;
}

/// @nodoc
class _$AccountChildEditPageStateCopyWithImpl<$Res,
        $Val extends AccountChildEditPageState>
    implements $AccountChildEditPageStateCopyWith<$Res> {
  _$AccountChildEditPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountChildEditPageState
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

  /// Create a copy of AccountChildEditPageState
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
abstract class _$$AccountChildEditPageStateImplCopyWith<$Res>
    implements $AccountChildEditPageStateCopyWith<$Res> {
  factory _$$AccountChildEditPageStateImplCopyWith(
          _$AccountChildEditPageStateImpl value,
          $Res Function(_$AccountChildEditPageStateImpl) then) =
      __$$AccountChildEditPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Children child});

  @override
  $ChildrenCopyWith<$Res> get child;
}

/// @nodoc
class __$$AccountChildEditPageStateImplCopyWithImpl<$Res>
    extends _$AccountChildEditPageStateCopyWithImpl<$Res,
        _$AccountChildEditPageStateImpl>
    implements _$$AccountChildEditPageStateImplCopyWith<$Res> {
  __$$AccountChildEditPageStateImplCopyWithImpl(
      _$AccountChildEditPageStateImpl _value,
      $Res Function(_$AccountChildEditPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountChildEditPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
  }) {
    return _then(_$AccountChildEditPageStateImpl(
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Children,
    ));
  }
}

/// @nodoc

class _$AccountChildEditPageStateImpl implements _AccountChildEditPageState {
  const _$AccountChildEditPageStateImpl({required this.child});

  @override
  final Children child;

  @override
  String toString() {
    return 'AccountChildEditPageState(child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountChildEditPageStateImpl &&
            (identical(other.child, child) || other.child == child));
  }

  @override
  int get hashCode => Object.hash(runtimeType, child);

  /// Create a copy of AccountChildEditPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountChildEditPageStateImplCopyWith<_$AccountChildEditPageStateImpl>
      get copyWith => __$$AccountChildEditPageStateImplCopyWithImpl<
          _$AccountChildEditPageStateImpl>(this, _$identity);
}

abstract class _AccountChildEditPageState implements AccountChildEditPageState {
  const factory _AccountChildEditPageState({required final Children child}) =
      _$AccountChildEditPageStateImpl;

  @override
  Children get child;

  /// Create a copy of AccountChildEditPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountChildEditPageStateImplCopyWith<_$AccountChildEditPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
