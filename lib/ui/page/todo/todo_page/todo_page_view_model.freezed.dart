// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoPageState {
  List<Todo> get todos => throw _privateConstructorUsedError;

  /// Create a copy of TodoPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoPageStateCopyWith<TodoPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoPageStateCopyWith<$Res> {
  factory $TodoPageStateCopyWith(
          TodoPageState value, $Res Function(TodoPageState) then) =
      _$TodoPageStateCopyWithImpl<$Res, TodoPageState>;
  @useResult
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$TodoPageStateCopyWithImpl<$Res, $Val extends TodoPageState>
    implements $TodoPageStateCopyWith<$Res> {
  _$TodoPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoPageStateImplCopyWith<$Res>
    implements $TodoPageStateCopyWith<$Res> {
  factory _$$TodoPageStateImplCopyWith(
          _$TodoPageStateImpl value, $Res Function(_$TodoPageStateImpl) then) =
      __$$TodoPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$$TodoPageStateImplCopyWithImpl<$Res>
    extends _$TodoPageStateCopyWithImpl<$Res, _$TodoPageStateImpl>
    implements _$$TodoPageStateImplCopyWith<$Res> {
  __$$TodoPageStateImplCopyWithImpl(
      _$TodoPageStateImpl _value, $Res Function(_$TodoPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodoPageStateImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$TodoPageStateImpl implements _TodoPageState {
  const _$TodoPageStateImpl({required final List<Todo> todos}) : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoPageState(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoPageStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  /// Create a copy of TodoPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoPageStateImplCopyWith<_$TodoPageStateImpl> get copyWith =>
      __$$TodoPageStateImplCopyWithImpl<_$TodoPageStateImpl>(this, _$identity);
}

abstract class _TodoPageState implements TodoPageState {
  const factory _TodoPageState({required final List<Todo> todos}) =
      _$TodoPageStateImpl;

  @override
  List<Todo> get todos;

  /// Create a copy of TodoPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoPageStateImplCopyWith<_$TodoPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
