import 'package:dio/dio.dart';
import 'package:flutter_architecture/external/http/generate/api/lib/miracle_api_client.dart';
import 'package:flutter_architecture/external/http/internal/dio_http_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_client.g.dart';

/// HTTP クライアントのインスタンスを提供する。
///
/// Riverpod により依存性注入される。実際の実装は main.dart で
/// オーバーライドされる。
@riverpod
MiracleApiClient httpClient(Ref ref) => throw UnimplementedError();

/// 与えられた [baseUrl] で [HttpClient] を作成する。
MiracleApiClient getHttpClient({required String baseUrl}) =>
    MiracleApiClient(dio: _getDio(baseUrl: baseUrl));

/// 指定されたベース URL で Dio インスタンスを作成する。
///
/// [baseUrl] をベースとした HTTP 通信設定済みの Dio インスタンスを返す。
Dio _getDio({required String baseUrl}) => DioHttpClient(baseUrl: baseUrl);
