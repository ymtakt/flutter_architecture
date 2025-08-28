import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/page/account/account_child_edit_page/account_child_edit_page_handler.dart';
import 'package:flutter_architecture/ui/page/account/account_child_edit_page/account_child_edit_page_view_model.dart';
import 'package:flutter_architecture/ui/page/account/account_child_form.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountChildEditPage extends ConsumerWidget {
  const AccountChildEditPage({super.key, required this.childId});

  final String childId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelState = ref.watch(
      accountChildEditPageViewModelProvider(childId),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('お子様プロフィール編集')),
      body: viewModelState.when(
        data: (state) => AccountChildForm(
          initialChildData: state.child,
          handleSubmit: (child) {
            // 更新処理
            ref
                .read(accountChildEditPageHandlerProvider)
                .updateChild(context: context, child: child);
          },
          submitButtonText: '更新する',
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('エラーが発生しました: $error')),
      ),
    );
  }
}
