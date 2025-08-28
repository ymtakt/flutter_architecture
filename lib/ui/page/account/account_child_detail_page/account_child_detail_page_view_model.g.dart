// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_child_detail_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountChildDetailPageViewModelHash() =>
    r'35942e01ad516a5ee41d771fd3229a5407c9dd15';

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

abstract class _$AccountChildDetailPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<AccountChildDetailPageState> {
  late final String childId;

  FutureOr<AccountChildDetailPageState> build(
    String childId,
  );
}

/// AccountChildDetailPage の ViewModel.
///
/// Copied from [AccountChildDetailPageViewModel].
@ProviderFor(AccountChildDetailPageViewModel)
const accountChildDetailPageViewModelProvider =
    AccountChildDetailPageViewModelFamily();

/// AccountChildDetailPage の ViewModel.
///
/// Copied from [AccountChildDetailPageViewModel].
class AccountChildDetailPageViewModelFamily
    extends Family<AsyncValue<AccountChildDetailPageState>> {
  /// AccountChildDetailPage の ViewModel.
  ///
  /// Copied from [AccountChildDetailPageViewModel].
  const AccountChildDetailPageViewModelFamily();

  /// AccountChildDetailPage の ViewModel.
  ///
  /// Copied from [AccountChildDetailPageViewModel].
  AccountChildDetailPageViewModelProvider call(
    String childId,
  ) {
    return AccountChildDetailPageViewModelProvider(
      childId,
    );
  }

  @override
  AccountChildDetailPageViewModelProvider getProviderOverride(
    covariant AccountChildDetailPageViewModelProvider provider,
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
  String? get name => r'accountChildDetailPageViewModelProvider';
}

/// AccountChildDetailPage の ViewModel.
///
/// Copied from [AccountChildDetailPageViewModel].
class AccountChildDetailPageViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        AccountChildDetailPageViewModel, AccountChildDetailPageState> {
  /// AccountChildDetailPage の ViewModel.
  ///
  /// Copied from [AccountChildDetailPageViewModel].
  AccountChildDetailPageViewModelProvider(
    String childId,
  ) : this._internal(
          () => AccountChildDetailPageViewModel()..childId = childId,
          from: accountChildDetailPageViewModelProvider,
          name: r'accountChildDetailPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountChildDetailPageViewModelHash,
          dependencies: AccountChildDetailPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              AccountChildDetailPageViewModelFamily._allTransitiveDependencies,
          childId: childId,
        );

  AccountChildDetailPageViewModelProvider._internal(
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
  FutureOr<AccountChildDetailPageState> runNotifierBuild(
    covariant AccountChildDetailPageViewModel notifier,
  ) {
    return notifier.build(
      childId,
    );
  }

  @override
  Override overrideWith(AccountChildDetailPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: AccountChildDetailPageViewModelProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<AccountChildDetailPageViewModel,
      AccountChildDetailPageState> createElement() {
    return _AccountChildDetailPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountChildDetailPageViewModelProvider &&
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
mixin AccountChildDetailPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<AccountChildDetailPageState> {
  /// The parameter `childId` of this provider.
  String get childId;
}

class _AccountChildDetailPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        AccountChildDetailPageViewModel,
        AccountChildDetailPageState> with AccountChildDetailPageViewModelRef {
  _AccountChildDetailPageViewModelProviderElement(super.provider);

  @override
  String get childId =>
      (origin as AccountChildDetailPageViewModelProvider).childId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
