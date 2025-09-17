import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// テストの最後に自動的に破棄される [ProviderContainer] を生成する。
///
/// Riverpod の公式ドキュメントでも紹介されていた：
///
/// https://riverpod.dev/docs/essentials/testing#unit-tests
ProviderContainer createContainer({
  ProviderContainer? parent,
  List<Override> overrides = const [],
  List<ProviderObserver>? observers,
}) {
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides,
    observers: observers,
  );
  addTearDown(container.dispose);
  return container;
}
