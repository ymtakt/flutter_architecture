// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_edit_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoEditPageViewModelHash() =>
    r'82d31f7c348a5a546bbe97d1f6c165cacd57d33b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TodoEditPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<TodoEditPageState> {
  late final String todoId;

  FutureOr<TodoEditPageState> build(
    String todoId,
  );
}

/// TodoEditPage の ViewModel.
///
/// 指定した一つのTodoIDに対応する編集画面のViewModelである。
///
/// Copied from [TodoEditPageViewModel].
@ProviderFor(TodoEditPageViewModel)
const todoEditPageViewModelProvider = TodoEditPageViewModelFamily();

/// TodoEditPage の ViewModel.
///
/// 指定した一つのTodoIDに対応する編集画面のViewModelである。
///
/// Copied from [TodoEditPageViewModel].
class TodoEditPageViewModelFamily
    extends Family<AsyncValue<TodoEditPageState>> {
  /// TodoEditPage の ViewModel.
  ///
  /// 指定した一つのTodoIDに対応する編集画面のViewModelである。
  ///
  /// Copied from [TodoEditPageViewModel].
  const TodoEditPageViewModelFamily();

  /// TodoEditPage の ViewModel.
  ///
  /// 指定した一つのTodoIDに対応する編集画面のViewModelである。
  ///
  /// Copied from [TodoEditPageViewModel].
  TodoEditPageViewModelProvider call(
    String todoId,
  ) {
    return TodoEditPageViewModelProvider(
      todoId,
    );
  }

  @override
  TodoEditPageViewModelProvider getProviderOverride(
    covariant TodoEditPageViewModelProvider provider,
  ) {
    return call(
      provider.todoId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'todoEditPageViewModelProvider';
}

/// TodoEditPage の ViewModel.
///
/// 指定した一つのTodoIDに対応する編集画面のViewModelである。
///
/// Copied from [TodoEditPageViewModel].
class TodoEditPageViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TodoEditPageViewModel,
        TodoEditPageState> {
  /// TodoEditPage の ViewModel.
  ///
  /// 指定した一つのTodoIDに対応する編集画面のViewModelである。
  ///
  /// Copied from [TodoEditPageViewModel].
  TodoEditPageViewModelProvider(
    String todoId,
  ) : this._internal(
          () => TodoEditPageViewModel()..todoId = todoId,
          from: todoEditPageViewModelProvider,
          name: r'todoEditPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todoEditPageViewModelHash,
          dependencies: TodoEditPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              TodoEditPageViewModelFamily._allTransitiveDependencies,
          todoId: todoId,
        );

  TodoEditPageViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.todoId,
  }) : super.internal();

  final String todoId;

  @override
  FutureOr<TodoEditPageState> runNotifierBuild(
    covariant TodoEditPageViewModel notifier,
  ) {
    return notifier.build(
      todoId,
    );
  }

  @override
  Override overrideWith(TodoEditPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodoEditPageViewModelProvider._internal(
        () => create()..todoId = todoId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        todoId: todoId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TodoEditPageViewModel,
      TodoEditPageState> createElement() {
    return _TodoEditPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoEditPageViewModelProvider && other.todoId == todoId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, todoId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TodoEditPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<TodoEditPageState> {
  /// The parameter `todoId` of this provider.
  String get todoId;
}

class _TodoEditPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TodoEditPageViewModel,
        TodoEditPageState> with TodoEditPageViewModelRef {
  _TodoEditPageViewModelProviderElement(super.provider);

  @override
  String get todoId => (origin as TodoEditPageViewModelProvider).todoId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
