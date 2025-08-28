// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountPageState {
  List<Children> get children => throw _privateConstructorUsedError;

  /// Create a copy of AccountPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountPageStateCopyWith<AccountPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountPageStateCopyWith<$Res> {
  factory $AccountPageStateCopyWith(
          AccountPageState value, $Res Function(AccountPageState) then) =
      _$AccountPageStateCopyWithImpl<$Res, AccountPageState>;
  @useResult
  $Res call({List<Children> children});
}

/// @nodoc
class _$AccountPageStateCopyWithImpl<$Res, $Val extends AccountPageState>
    implements $AccountPageStateCopyWith<$Res> {
  _$AccountPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountPageState
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
              as List<Children>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountPageStateImplCopyWith<$Res>
    implements $AccountPageStateCopyWith<$Res> {
  factory _$$AccountPageStateImplCopyWith(_$AccountPageStateImpl value,
          $Res Function(_$AccountPageStateImpl) then) =
      __$$AccountPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Children> children});
}

/// @nodoc
class __$$AccountPageStateImplCopyWithImpl<$Res>
    extends _$AccountPageStateCopyWithImpl<$Res, _$AccountPageStateImpl>
    implements _$$AccountPageStateImplCopyWith<$Res> {
  __$$AccountPageStateImplCopyWithImpl(_$AccountPageStateImpl _value,
      $Res Function(_$AccountPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$AccountPageStateImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Children>,
    ));
  }
}

/// @nodoc

class _$AccountPageStateImpl implements _AccountPageState {
  const _$AccountPageStateImpl({required final List<Children> children})
      : _children = children;

  final List<Children> _children;
  @override
  List<Children> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'AccountPageState(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountPageStateImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  /// Create a copy of AccountPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountPageStateImplCopyWith<_$AccountPageStateImpl> get copyWith =>
      __$$AccountPageStateImplCopyWithImpl<_$AccountPageStateImpl>(
          this, _$identity);
}

abstract class _AccountPageState implements AccountPageState {
  const factory _AccountPageState({required final List<Children> children}) =
      _$AccountPageStateImpl;

  @override
  List<Children> get children;

  /// Create a copy of AccountPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountPageStateImplCopyWith<_$AccountPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
