import 'package:flutter_architecture/model/entity/feature/children.dart';
import 'package:flutter_architecture/model/repository/feature/account/account_children.repository.dart';
import 'package:flutter_architecture/ui/page/account/account_page/account_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_child_register_page_handler.g.dart';

/// [AccountRegisterDetailPageHandler] クラスのインスタンスを提供する。
@riverpod
AccountRegisterDetailPageHandler accountRegisterDetailPageHandler(Ref ref) =>
    AccountRegisterDetailPageHandler(ref);

/// [AccountChildDetailPageHandler] クラスのインスタンスを提供する。
class AccountRegisterDetailPageHandler {
  AccountRegisterDetailPageHandler(this._ref);

  final Ref _ref;

  /// 子供を作成する。
  Future<void> createChild(Children child) async {
    // バリデーションを行う
    // バリデーションが通ったら、子供を作成するviewModelを呼び出す
    // TODO: 子供を作成する。
    await _ref
        .read(accountChildrenRepositoryProvider)
        .createChildren(
          name: child.name,
          kana: child.kana,
          gender: child.gender,
          birthday: child.birthday,
        );
    _ref.invalidate(accountPageViewModelProvider);
  }
}
