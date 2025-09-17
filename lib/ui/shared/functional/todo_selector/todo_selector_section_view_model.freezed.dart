// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_selector_section_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoSelectorSectionState {
  List<Todo> get todos => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Todo? get selectedTodo => throw _privateConstructorUsedError;

  /// Create a copy of TodoSelectorSectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoSelectorSectionStateCopyWith<TodoSelectorSectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoSelectorSectionStateCopyWith<$Res> {
  factory $TodoSelectorSectionStateCopyWith(TodoSelectorSectionState value,
          $Res Function(TodoSelectorSectionState) then) =
      _$TodoSelectorSectionStateCopyWithImpl<$Res, TodoSelectorSectionState>;
  @useResult
  $Res call({List<Todo> todos, bool isLoading, Todo? selectedTodo});

  $TodoCopyWith<$Res>? get selectedTodo;
}

/// @nodoc
class _$TodoSelectorSectionStateCopyWithImpl<$Res,
        $Val extends TodoSelectorSectionState>
    implements $TodoSelectorSectionStateCopyWith<$Res> {
  _$TodoSelectorSectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoSelectorSectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? isLoading = null,
    Object? selectedTodo = freezed,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTodo: freezed == selectedTodo
          ? _value.selectedTodo
          : selectedTodo // ignore: cast_nullable_to_non_nullable
              as Todo?,
    ) as $Val);
  }

  /// Create a copy of TodoSelectorSectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res>? get selectedTodo {
    if (_value.selectedTodo == null) {
      return null;
    }

    return $TodoCopyWith<$Res>(_value.selectedTodo!, (value) {
      return _then(_value.copyWith(selectedTodo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TodoSelectorSectionStateImplCopyWith<$Res>
    implements $TodoSelectorSectionStateCopyWith<$Res> {
  factory _$$TodoSelectorSectionStateImplCopyWith(
          _$TodoSelectorSectionStateImpl value,
          $Res Function(_$TodoSelectorSectionStateImpl) then) =
      __$$TodoSelectorSectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Todo> todos, bool isLoading, Todo? selectedTodo});

  @override
  $TodoCopyWith<$Res>? get selectedTodo;
}

/// @nodoc
class __$$TodoSelectorSectionStateImplCopyWithImpl<$Res>
    extends _$TodoSelectorSectionStateCopyWithImpl<$Res,
        _$TodoSelectorSectionStateImpl>
    implements _$$TodoSelectorSectionStateImplCopyWith<$Res> {
  __$$TodoSelectorSectionStateImplCopyWithImpl(
      _$TodoSelectorSectionStateImpl _value,
      $Res Function(_$TodoSelectorSectionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoSelectorSectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? isLoading = null,
    Object? selectedTodo = freezed,
  }) {
    return _then(_$TodoSelectorSectionStateImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTodo: freezed == selectedTodo
          ? _value.selectedTodo
          : selectedTodo // ignore: cast_nullable_to_non_nullable
              as Todo?,
    ));
  }
}

/// @nodoc

class _$TodoSelectorSectionStateImpl implements _TodoSelectorSectionState {
  const _$TodoSelectorSectionStateImpl(
      {final List<Todo> todos = const [],
      this.isLoading = false,
      this.selectedTodo})
      : _todos = todos;

  final List<Todo> _todos;
  @override
  @JsonKey()
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Todo? selectedTodo;

  @override
  String toString() {
    return 'TodoSelectorSectionState(todos: $todos, isLoading: $isLoading, selectedTodo: $selectedTodo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoSelectorSectionStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedTodo, selectedTodo) ||
                other.selectedTodo == selectedTodo));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_todos), isLoading, selectedTodo);

  /// Create a copy of TodoSelectorSectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoSelectorSectionStateImplCopyWith<_$TodoSelectorSectionStateImpl>
      get copyWith => __$$TodoSelectorSectionStateImplCopyWithImpl<
          _$TodoSelectorSectionStateImpl>(this, _$identity);
}

abstract class _TodoSelectorSectionState implements TodoSelectorSectionState {
  const factory _TodoSelectorSectionState(
      {final List<Todo> todos,
      final bool isLoading,
      final Todo? selectedTodo}) = _$TodoSelectorSectionStateImpl;

  @override
  List<Todo> get todos;
  @override
  bool get isLoading;
  @override
  Todo? get selectedTodo;

  /// Create a copy of TodoSelectorSectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoSelectorSectionStateImplCopyWith<_$TodoSelectorSectionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
