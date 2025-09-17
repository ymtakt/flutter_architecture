import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.g.dart';

/// サインインしているかどうかを取得する。
@riverpod
Future<bool> isSignedIn(Ref ref) async {
  // final auth = await ref.watch(authNotifierProvider.future);
  return true;
}

/// 認証情報を管理する Notifier.
///
/// アプリの起動中はインスタンスを保持するために keepAlive: true を指定している。
@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  @override
  Future<String?> build() async {
    return 'auth';
  }

  /// ログインして、認証情報を更新する。
  ///
  /// ログインに失敗した場合は、[LoginException] がスローされる。
  Future<void> signIn() async {
    //
  }

  /// ログアウトして、認証情報を更新する。
  Future<void> signOut() async {}
}

/// ログインに失敗した際にスローされる例外。
class LoginException implements Exception {}
