// ignore_for_file: avoid_positional_boolean_parameters

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../external/shared_preferences/shared_preferences_client.dart';

/// shared_preferences パッケージで保存するキーの列挙。
///
/// 業務知識 (domain) ではなく、API エンドポイントのパスと同等の情報として、repository
/// パッケージで列挙する。
enum SharedPreferencesKey {
  /// foo の値。
  foo,

  /// bar の値。
  bar,

  /// children の値。
  todos,
}

/// shared_preferences パッケージを利用して、値の取得や保存を行うヘルパークラス。
class SharedPreferencesHelper {
  /// [SharedPreferencesHelper] を生成する。
  const SharedPreferencesHelper(this._ref);

  /// [Ref] のインスタンス。
  final Ref _ref;

  /// 指定したキー [SharedPreferencesKey] が存在するかどうか。
  Future<bool> containsKey(SharedPreferencesKey key) async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.containsKey(key.name);
  }

  /// 指定したキー [SharedPreferencesKey] に対応する [bool] 型の値を取得する。
  Future<bool?> getBool(SharedPreferencesKey key) async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.getBool(key.name);
  }

  /// 指定したキー [SharedPreferencesKey] に対応する [int] 型の値を取得する。
  Future<int?> getInt(SharedPreferencesKey key) async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.getInt(key.name);
  }

  /// 指定したキー [SharedPreferencesKey] に対応する [double] 型の値を取得する。
  Future<double?> getDouble(SharedPreferencesKey key) async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.getDouble(key.name);
  }

  /// 指定したキー [SharedPreferencesKey] に対応する [String] 型の値を取得する。
  Future<String?> getString(SharedPreferencesKey key) async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.getString(key.name);
  }

  /// 指定したキー [SharedPreferencesKey] に対応する `List<String>` 型の値を取得する。
  Future<List<String>?> getStringList(SharedPreferencesKey key) async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.getStringList(key.name);
  }

  /// 指定したキー [SharedPreferencesKey] に [bool] 型の値を保存する。
  Future<void> setBool(SharedPreferencesKey key, bool value) async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.setBool(key.name, value);
  }

  /// 指定したキー [SharedPreferencesKey] に [int] 型の値を保存する。
  Future<void> setInt(SharedPreferencesKey key, int value) async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.setInt(key.name, value);
  }

  /// 指定したキー [SharedPreferencesKey] に [double] 型の値を保存する。
  Future<void> setDouble(SharedPreferencesKey key, double value) async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.setDouble(key.name, value);
  }

  /// 指定したキー [SharedPreferencesKey] に [String] 型の値を保存する。
  Future<void> setString(SharedPreferencesKey key, String value) async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.setString(key.name, value);
  }

  /// 指定したキー [SharedPreferencesKey] に `List<String>` 型の値を保存する。
  Future<void> setStringList(
    SharedPreferencesKey key,
    List<String> value,
  ) async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.setStringList(key.name, value);
  }

  /// 指定したキー [SharedPreferencesKey] に対応する値を削除する。
  Future<void> remove(SharedPreferencesKey key) async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.remove(key.name);
  }

  /// 保存されているすべてのキーと値を削除する。
  Future<void> clear() async {
    final sharedPreferences = await _ref.read(
      sharedPreferencesClientProvider.future,
    );
    return sharedPreferences.clear();
  }
}
