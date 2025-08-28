// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_child_edit_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountChildEditPageViewModelHash() =>
    r'2331ae84fc3df1f58df6e58a8692297802b745db';

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

abstract class _$AccountChildEditPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<AccountChildEditPageState> {
  late final String childId;

  FutureOr<AccountChildEditPageState> build(
    String childId,
  );
}

/// AccountChildEditPage の ViewModel.
///
/// Copied from [AccountChildEditPageViewModel].
@ProviderFor(AccountChildEditPageViewModel)
const accountChildEditPageViewModelProvider =
    AccountChildEditPageViewModelFamily();

/// AccountChildEditPage の ViewModel.
///
/// Copied from [AccountChildEditPageViewModel].
class AccountChildEditPageViewModelFamily
    extends Family<AsyncValue<AccountChildEditPageState>> {
  /// AccountChildEditPage の ViewModel.
  ///
  /// Copied from [AccountChildEditPageViewModel].
  const AccountChildEditPageViewModelFamily();

  /// AccountChildEditPage の ViewModel.
  ///
  /// Copied from [AccountChildEditPageViewModel].
  AccountChildEditPageViewModelProvider call(
    String childId,
  ) {
    return AccountChildEditPageViewModelProvider(
      childId,
    );
  }

  @override
  AccountChildEditPageViewModelProvider getProviderOverride(
    covariant AccountChildEditPageViewModelProvider provider,
  ) {
    return call(
      provider.childId,
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
  String? get name => r'accountChildEditPageViewModelProvider';
}

/// AccountChildEditPage の ViewModel.
///
/// Copied from [AccountChildEditPageViewModel].
class AccountChildEditPageViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AccountChildEditPageViewModel,
        AccountChildEditPageState> {
  /// AccountChildEditPage の ViewModel.
  ///
  /// Copied from [AccountChildEditPageViewModel].
  AccountChildEditPageViewModelProvider(
    String childId,
  ) : this._internal(
          () => AccountChildEditPageViewModel()..childId = childId,
          from: accountChildEditPageViewModelProvider,
          name: r'accountChildEditPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountChildEditPageViewModelHash,
          dependencies: AccountChildEditPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              AccountChildEditPageViewModelFamily._allTransitiveDependencies,
          childId: childId,
        );

  AccountChildEditPageViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.childId,
  }) : super.internal();

  final String childId;

  @override
  FutureOr<AccountChildEditPageState> runNotifierBuild(
    covariant AccountChildEditPageViewModel notifier,
  ) {
    return notifier.build(
      childId,
    );
  }

  @override
  Override overrideWith(AccountChildEditPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: AccountChildEditPageViewModelProvider._internal(
        () => create()..childId = childId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        childId: childId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AccountChildEditPageViewModel,
      AccountChildEditPageState> createElement() {
    return _AccountChildEditPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountChildEditPageViewModelProvider &&
        other.childId == childId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, childId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AccountChildEditPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<AccountChildEditPageState> {
  /// The parameter `childId` of this provider.
  String get childId;
}

class _AccountChildEditPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        AccountChildEditPageViewModel,
        AccountChildEditPageState> with AccountChildEditPageViewModelRef {
  _AccountChildEditPageViewModelProviderElement(super.provider);

  @override
  String get childId =>
      (origin as AccountChildEditPageViewModelProvider).childId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
