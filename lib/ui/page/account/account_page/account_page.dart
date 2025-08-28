import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/page/account/account_page/account_page_view_model.dart';
import 'package:flutter_architecture/ui/routing/router_path.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(accountPageViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('アカウント')),
      body: Column(
        children: [
          Expanded(
            child: viewModel.when(
              data: (data) => ListView.builder(
                itemCount: data.children.length,
                itemBuilder: (context, index) => TextButton(
                  onPressed: () => context.go(
                    '${RouterPath.CHILD}/${data.children[index].id}',
                  ),
                  child: Text(data.children[index].name),
                ),
              ),
              error: (error, __) {
                print(error);
                return Text(error.toString());
              },
              loading: () => const CircularProgressIndicator(),
            ),
          ),
          TextButton(
            onPressed: () => context.go(RouterPath.CHILD_REGISTER),
            child: const Text('お子様を登録する'),
          ),
        ],
      ),
    );
  }
}
