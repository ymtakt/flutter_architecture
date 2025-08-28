import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../util/shared_preferences/shared_preferences_helper.dart';
import 'children_dto.dart';

part 'children_service.g.dart';

/// [ChildrenService] クラスのインスタンスを提供する。
@riverpod
ChildrenService childrenService(Ref ref) => ChildrenService(ref);

/// Children 関係のサービスクラス。
class ChildrenService {
  /// [ChildrenService] を生成する。
  const ChildrenService(this._ref);

  /// [Ref] のインスタンス。
  final Ref _ref;

  /// SharedPreferencesHelper のインスタンス。
  SharedPreferencesHelper get _sharedPreferencesHelper =>
      SharedPreferencesHelper(_ref);

  /// Children 一覧を取得する。
  Future<List<ChildrenDto>> fetchChildren() async {
    final jsonString = await _sharedPreferencesHelper.getString(
      SharedPreferencesKey.children,
    );

    if (jsonString == null) {
      return [];
    }

    try {
      final List<dynamic> jsonList = jsonDecode(jsonString);
      return jsonList.map((json) => ChildrenDto.fromJson(json)).toList();
    } catch (e) {
      // エラーハンドリング設計
      return [];
    }
  }

  /// Children を取得する。
  Future<ChildrenDto?> fetchChildById(String id) async {
    final children = await fetchChildren();
    try {
      return children.firstWhere((child) => child.id == id);
    } catch (e) {
      // エラーハンドリング設計
      return null;
    }
  }

  /// Children を追加する。
  Future<void> createChild(ChildrenDto child) async {
    final children = await fetchChildren();
    children.add(child);
    await _saveChildren(children);
  }

  /// Children を更新する。
  Future<void> updateChild(ChildrenDto updatedChild) async {
    final children = await fetchChildren();
    final index = children.indexWhere((child) => child.id == updatedChild.id);
    if (index != -1) {
      children[index] = updatedChild;
      await _saveChildren(children);
    }
  }

  /// Children を削除する。
  Future<void> deleteChildById(String id) async {
    final children = await fetchChildren();
    children.removeWhere((child) => child.id == id);
    await _saveChildren(children);
  }

  /// Children一覧をSharedPreferencesに保存する。
  Future<void> _saveChildren(List<ChildrenDto> children) async {
    final jsonString = jsonEncode(
      children.map((child) => child.toJson()).toList(),
    );
    await _sharedPreferencesHelper.setString(
      SharedPreferencesKey.children,
      jsonString,
    );
  }
}
