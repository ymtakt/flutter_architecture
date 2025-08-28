import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../entity/feature/children.dart';
import '../../../service/feature/children/children_dto.dart';
import '../../../service/feature/children/children_service.dart';

part 'account_children.repository.g.dart';

/// [AccountChildrenRepository] クラスのインスタンスを提供する。
@riverpod
AccountChildrenRepository accountChildrenRepository(Ref ref) =>
    AccountChildrenRepository(ref);

/// AccountChildren 関係の通信を行うリポジトリクラス。
class AccountChildrenRepository {
  /// [AccountChildrenRepository] を生成する。
  const AccountChildrenRepository(this._ref);

  final Ref _ref;

  /// Children 一覧を取得する。
  ///
  /// 取得に失敗した場合は、空の配列を返す。
  Future<List<Children>> fetchChildren() async {
    final children = await _ref.read(childrenServiceProvider).fetchChildren();
    return children.map(Children.fromDto).toList();
  }

  /// Children を取得する。
  ///
  /// 取得に失敗した場合は、例外をスローする。
  Future<Children> fetchChildById(String id) async {
    final child = await _ref.read(childrenServiceProvider).fetchChildById(id);
    if (child == null) {
      throw FetchChildByIdException();
    }
    return Children.fromDto(child);
  }

  /// Children を作成する。
  ///
  /// 作成に失敗した場合は、例外をスローする。
  Future<void> createChildren({
    required String name,
    required String kana,
    required String gender,
    required String birthday,
  }) async {
    final childDto = ChildrenDto(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      kana: kana,
      gender: gender,
      birthday: birthday,
      createdAt: DateTime.now().toIso8601String(),
      updatedAt: DateTime.now().toIso8601String(),
    );
    await _ref.read(childrenServiceProvider).createChild(childDto);
  }

  /// Children を更新する。
  ///
  /// 更新に失敗した場合は、例外をスローする。
  Future<void> updateChildren({
    required String id,
    required String name,
    required String kana,
    required String gender,
    required String birthday,
  }) async {
    final childDto = ChildrenDto(
      id: id,
      name: name,
      kana: kana,
      gender: gender,
      birthday: birthday,
      createdAt: '', // 既存のcreatedAtを保持する場合は別途取得が必要
      updatedAt: DateTime.now().toIso8601String(),
    );
    await _ref.read(childrenServiceProvider).updateChild(childDto);
  }

  /// Children を削除する。
  ///
  /// 削除に失敗した場合は、例外をスローする。
  Future<void> deleteChildren({required String id}) async {
    await _ref.read(childrenServiceProvider).deleteChildById(id);
  }
}

/// Children 一覧の取得に失敗した場合にスローされる例外。
class FetchChildrenException implements Exception {}

/// Children の取得に失敗した場合にスローされる例外。
class FetchChildByIdException implements Exception {}
