import 'package:dio/dio.dart';

/// DioException を受け取ってxxな例外をスローする関数。
///
/// [e] - 処理するDioException
/// [createExceptionFromString] - エラーコードから例外への変換関数（オプション）
///
/// Never型を返すため、絶対にreturnしない
Never throwByDioException(
  DioException e, {
  Never Function(String errorCode)? onErrorCode,
}) {
  // DioException共通に処理する
  final data = e.response?.data as Map<String, dynamic>?;

  if (data == null) {
    // ジェネラルなException型
    throw RepositoryException();
  }

  final errorCode = data['error']?['code'] as String?;
  if (errorCode == null) {
    throw RepositoryException();
  }

  // エラーコードによるハンドリングが提供されていない場合はRepositoryExceptionをスローする。
  if (onErrorCode == null) {
    throw RepositoryException();
  }

  // エラーコードによるハンドリングを行う。
  onErrorCode(errorCode);
}

/// 特定のエラーコードセットに対するエラーマッパーを作成するファクトリ関数
Exception Function(String errorCode) createErrorMapper(
  Map<String, Exception Function()> errorMap,
) {
  return (String errorCode) {
    final exceptionFactory = errorMap[errorCode];
    if (exceptionFactory != null) {
      return exceptionFactory();
    }
    return RepositoryException();
  };
}

/// Repository 層からスローされる一般的または、未知の例外。
///
/// サーバーサイドで定義されるエラーコードのうち、業務知識の例外として取り扱わないその他の例外に相当する。
///
/// この例外を用いることで、DioExceptionをRepositoryの外に表出させないようにする。
class RepositoryException implements Exception {}
