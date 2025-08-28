import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/entity/feature/children.dart';
import 'package:flutter_architecture/ui/page/account/account_child_edit_page/account_child_edit_page_view_model.dart';
import 'package:flutter_architecture/ui/page/account/account_page/account_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_child_edit_page_handler.g.dart';

/// [AccountChildEditPageHandler] クラスのインスタンスを提供する。
@riverpod
AccountChildEditPageHandler accountChildEditPageHandler(Ref ref) =>
    AccountChildEditPageHandler(ref);

/// [AccountChildEditPageHandler] クラスのインスタンスを提供する。
class AccountChildEditPageHandler {
  AccountChildEditPageHandler(this._ref);

  final Ref _ref;

  /// 子供情報を更新する
  Future<void> updateChild({
    required BuildContext context,
    required Children child,
  }) async {
    // バリデーションを行う
    // バリデーションが通ったら、子供情報を更新するviewModelを呼び出す
    // 子供情報を更新するviewModelを呼び出す
    await _ref
        .read(accountChildEditPageViewModelProvider(child.id).notifier)
        .updateChild(child);
    _ref.invalidate(accountPageViewModelProvider);
  }
}
