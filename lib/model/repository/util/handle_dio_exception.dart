import 'package:dio/dio.dart';

/// エラーコードから例外への変換関数の型定義
typedef ErrorMapper = Exception Function(String errorCode);

/// DioException を処理する高階関数
///
/// [e] - 処理するDioException
/// [errorMapper] - エラーコードから例外への変換関数（オプション）
///
/// Never型を返すため、絶対にreturnしない
Never handleDioException(DioException e, {ErrorMapper? errorMapper}) {
  // DioException共通に処理する
  final data = e.response?.data as Map<String, dynamic>?;

  if (data == null) {
    // ジェネラルなException型
    throw DioExceptionCommon();
  }

  final errorCode = data['error']?['code'] as String?;
  if (errorCode == null) {
    throw DioExceptionCommon();
  }

  // カスタムエラーマッパーが提供されていない場合は例外をスロー
  if (errorMapper == null) {
    throw DioExceptionCommon();
  }

  throw errorMapper(errorCode);
}

/// 特定のエラーコードセットに対するエラーマッパーを作成するファクトリ関数
ErrorMapper createErrorMapper(Map<String, Exception Function()> errorMap) {
  return (String errorCode) {
    final exceptionFactory = errorMap[errorCode];
    if (exceptionFactory != null) {
      return exceptionFactory();
    }
    return DioExceptionCommon();
  };
}

/// DioException 共通の例外。
class DioExceptionCommon implements Exception {}
