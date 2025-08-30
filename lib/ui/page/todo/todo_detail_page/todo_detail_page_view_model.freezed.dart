// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_detail_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoDetailPageState {
  Todo get todo => throw _privateConstructorUsedError;

  /// Create a copy of TodoDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoDetailPageStateCopyWith<TodoDetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDetailPageStateCopyWith<$Res> {
  factory $TodoDetailPageStateCopyWith(
          TodoDetailPageState value, $Res Function(TodoDetailPageState) then) =
      _$TodoDetailPageStateCopyWithImpl<$Res, TodoDetailPageState>;
  @useResult
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoDetailPageStateCopyWithImpl<$Res, $Val extends TodoDetailPageState>
    implements $TodoDetailPageStateCopyWith<$Res> {
  _$TodoDetailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_value.copyWith(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ) as $Val);
  }

  /// Create a copy of TodoDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TodoDetailPageStateImplCopyWith<$Res>
    implements $TodoDetailPageStateCopyWith<$Res> {
  factory _$$TodoDetailPageStateImplCopyWith(_$TodoDetailPageStateImpl value,
          $Res Function(_$TodoDetailPageStateImpl) then) =
      __$$TodoDetailPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Todo todo});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$TodoDetailPageStateImplCopyWithImpl<$Res>
    extends _$TodoDetailPageStateCopyWithImpl<$Res, _$TodoDetailPageStateImpl>
    implements _$$TodoDetailPageStateImplCopyWith<$Res> {
  __$$TodoDetailPageStateImplCopyWithImpl(_$TodoDetailPageStateImpl _value,
      $Res Function(_$TodoDetailPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$TodoDetailPageStateImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$TodoDetailPageStateImpl implements _TodoDetailPageState {
  const _$TodoDetailPageStateImpl({required this.todo});

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoDetailPageState(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDetailPageStateImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  /// Create a copy of TodoDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoDetailPageStateImplCopyWith<_$TodoDetailPageStateImpl> get copyWith =>
      __$$TodoDetailPageStateImplCopyWithImpl<_$TodoDetailPageStateImpl>(
          this, _$identity);
}

abstract class _TodoDetailPageState implements TodoDetailPageState {
  const factory _TodoDetailPageState({required final Todo todo}) =
      _$TodoDetailPageStateImpl;

  @override
  Todo get todo;

  /// Create a copy of TodoDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoDetailPageStateImplCopyWith<_$TodoDetailPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
