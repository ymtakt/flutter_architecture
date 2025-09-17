import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'send_event.g.dart';

/// [SendEventUseCase] クラスのインスタンスを提供する。
@riverpod
SendEventUseCase sendEventUseCase(Ref ref) => SendEventUseCase(ref);

/// イベントを送信するユースケース。
class SendEventUseCase {
  /// [SendEventUseCase] を生成する。
  SendEventUseCase(this._ref);

  final Ref _ref;

  /// イベントを送信する。
  // Future<String?> invoke() => _ref.read(authRepositoryProvider).fetchIdToken();
  Future<void> invoke() => Future.value();
}
