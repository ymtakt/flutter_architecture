// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_detail_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoDetailPageViewModelHash() =>
    r'5078923e7867f582a51d43f2cfd7806b9d410d57';

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

abstract class _$TodoDetailPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<TodoDetailPageState> {
  late final String todoId;

  FutureOr<TodoDetailPageState> build(
    String todoId,
  );
}

/// TodoDetailPage の ViewModel.
///
/// Copied from [TodoDetailPageViewModel].
@ProviderFor(TodoDetailPageViewModel)
const todoDetailPageViewModelProvider = TodoDetailPageViewModelFamily();

/// TodoDetailPage の ViewModel.
///
/// Copied from [TodoDetailPageViewModel].
class TodoDetailPageViewModelFamily
    extends Family<AsyncValue<TodoDetailPageState>> {
  /// TodoDetailPage の ViewModel.
  ///
  /// Copied from [TodoDetailPageViewModel].
  const TodoDetailPageViewModelFamily();

  /// TodoDetailPage の ViewModel.
  ///
  /// Copied from [TodoDetailPageViewModel].
  TodoDetailPageViewModelProvider call(
    String todoId,
  ) {
    return TodoDetailPageViewModelProvider(
      todoId,
    );
  }

  @override
  TodoDetailPageViewModelProvider getProviderOverride(
    covariant TodoDetailPageViewModelProvider provider,
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
  String? get name => r'todoDetailPageViewModelProvider';
}

/// TodoDetailPage の ViewModel.
///
/// Copied from [TodoDetailPageViewModel].
class TodoDetailPageViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TodoDetailPageViewModel,
        TodoDetailPageState> {
  /// TodoDetailPage の ViewModel.
  ///
  /// Copied from [TodoDetailPageViewModel].
  TodoDetailPageViewModelProvider(
    String todoId,
  ) : this._internal(
          () => TodoDetailPageViewModel()..todoId = todoId,
          from: todoDetailPageViewModelProvider,
          name: r'todoDetailPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todoDetailPageViewModelHash,
          dependencies: TodoDetailPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              TodoDetailPageViewModelFamily._allTransitiveDependencies,
          todoId: todoId,
        );

  TodoDetailPageViewModelProvider._internal(
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
  FutureOr<TodoDetailPageState> runNotifierBuild(
    covariant TodoDetailPageViewModel notifier,
  ) {
    return notifier.build(
      todoId,
    );
  }

  @override
  Override overrideWith(TodoDetailPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodoDetailPageViewModelProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<TodoDetailPageViewModel,
      TodoDetailPageState> createElement() {
    return _TodoDetailPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoDetailPageViewModelProvider && other.todoId == todoId;
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
mixin TodoDetailPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<TodoDetailPageState> {
  /// The parameter `todoId` of this provider.
  String get todoId;
}

class _TodoDetailPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TodoDetailPageViewModel,
        TodoDetailPageState> with TodoDetailPageViewModelRef {
  _TodoDetailPageViewModelProviderElement(super.provider);

  @override
  String get todoId => (origin as TodoDetailPageViewModelProvider).todoId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
