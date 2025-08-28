import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/page/account/account_child_detail_page/account_child_detail_page_handler.dart';
import 'package:flutter_architecture/ui/page/account/account_child_detail_page/account_child_detail_page_view_model.dart';
import 'package:flutter_architecture/ui/routing/router_path.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountChildDetailPage extends ConsumerWidget {
  const AccountChildDetailPage({super.key, required this.childId});

  final String childId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ViewModel を watch する。
    final viewModelAsyncValue = ref.watch(
      accountChildDetailPageViewModelProvider(childId),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('お子様プロフィール'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: Column(
        children: [
          viewModelAsyncValue.when(
            data: (data) => SingleChildScrollView(
              child: Column(
                children: [
                  Text(data.child.id),
                  Column(children: [Text('お子様プロフィール'), Text(data.child.name)]),
                  Column(children: [Text('ふりがな'), Text(data.child.kana)]),
                  Column(children: [Text('性別'), Text(data.child.gender)]),
                  Column(children: [Text('生年月日'), Text(data.child.birthday)]),
                  ElevatedButton(
                    onPressed: () =>
                        context.go('${RouterPath.CHILD}/$childId/edit'),
                    child: const Text('編集する'),
                  ),
                  TextButton(
                    onPressed: () => ref
                        .read(accountChildDetailPageHandlerProvider)
                        .showDeleteChildDialog(
                          context: context,
                          childId: childId,
                        ),
                    child: const Text(' 削除する'),
                  ),
                ],
              ),
            ),
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
