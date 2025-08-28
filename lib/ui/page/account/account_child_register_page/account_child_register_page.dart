import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/page/account/account_child_form.dart';
import 'package:flutter_architecture/ui/page/account/account_child_register_page/account_child_register_page_handler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountChildRegisterPage extends ConsumerWidget {
  const AccountChildRegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('お子様プロフィール登録')),
      body: AccountChildForm(
        handleSubmit: (child) {
          // 登録処理
          ref.read(accountRegisterDetailPageHandlerProvider).createChild(child);
        },
        submitButtonText: '登録する',
      ),
    );
  }
}
