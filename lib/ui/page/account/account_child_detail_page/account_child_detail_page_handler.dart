import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/page/account/account_child_detail_page/account_child_detail_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_child_detail_page_handler.g.dart';

/// [AccountChildDetailPageHandler] クラスのインスタンスを提供する。
@riverpod
AccountChildDetailPageHandler accountChildDetailPageHandler(Ref ref) =>
    AccountChildDetailPageHandler(ref);

/// [AccountChildDetailPageHandler] クラスのインスタンスを提供する。
class AccountChildDetailPageHandler {
  AccountChildDetailPageHandler(this._ref);

  final Ref _ref;

  /// 子供を削除するためのダイアログを表示する。
  Future<void> showDeleteChildDialog({
    required BuildContext context,
    required String childId,
  }) async {
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('子供を削除しますか？'),
        content: const Text('子供を削除すると、子供のデータが削除されます。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('キャンセル'),
          ),
          TextButton(
            onPressed: () async {
              // 子供を削除するviewModelを呼び出す
              await _ref
                  .read(
                    accountChildDetailPageViewModelProvider(childId).notifier,
                  )
                  .deleteChild();
              if (!context.mounted) {
                return;
              }
              Navigator.pop(context);
            },
            child: const Text('削除'),
          ),
        ],
      ),
    );
  }
}
