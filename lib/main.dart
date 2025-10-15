import 'package:flutter/material.dart';
import 'package:flutter_architecture/external/config/flavor.dart';
import 'package:flutter_architecture/external/http/extract_http_request_headers.dart';
import 'package:flutter_architecture/external/http/http_client.dart';
import 'package:flutter_architecture/ui/routing/router.dart';
import 'package:flutter_architecture/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// アプリケーションのエントリポイント。
///
/// Flavor の設定、HTTP クライアントの初期化、Riverpod の設定を行い、
/// Flutter アプリケーションを起動する。
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Flavor を環境変数から取得する。
  final flavor = Flavor.values.byName(const String.fromEnvironment('FLAVOR'));
  logger.d('flavor: $flavor');

  // ベース URL を与えて HttpClient のインスタンスを作成する。
  // TODO: 環境変数で管理する
  final httpClient = getHttpClient(baseUrl: flavor.serverBaseUrl);

  // ProviderContainer を生成し、上記の一連の初期化処理で得られたインスタンス等をオーバーライド
  // して使用する。
  final container = ProviderContainer(
    overrides: [
      extractHttpRequestHeadersProvider.overrideWith(
        (ref) => () async {
          return {};
        },
      ),
      httpClientProvider.overrideWith((_) => httpClient),
    ],
  );

  // UncontrolledProviderScope に container を渡して、Flutter アプリを起動する。
  runApp(UncontrolledProviderScope(container: container, child: const MyApp()));
}

/// アプリケーションのルートウィジェット。
///
/// MaterialApp の設定とルーティング設定を提供する。
class MyApp extends StatelessWidget {
  /// [MyApp] を生成する。
  const MyApp({super.key});

  /// アプリケーションのルートウィジェットを構築する。
  ///
  /// MaterialApp.router を使用してルーティング機能付きの
  /// アプリケーションを構築する。
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: router,
    );
  }
}
