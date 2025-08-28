import 'package:flutter_architecture/ui/page/account/account_page/account_page_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../model/entity/feature/children.dart';
import '../../../../model/repository/feature/account/account_children.repository.dart';

part 'account_child_detail_page_view_model.freezed.dart';
part 'account_child_detail_page_view_model.g.dart';

/// AccountChildDetailPage の状態を表す State.
@freezed
class AccountChildDetailPageState with _$AccountChildDetailPageState {
  /// [AccountChildDetailPageState] を生成する。
  const factory AccountChildDetailPageState({required Children child}) =
      _AccountChildDetailPageState;
}

/// AccountChildDetailPage の ViewModel.
@riverpod
class AccountChildDetailPageViewModel
    extends _$AccountChildDetailPageViewModel {
  @override
  Future<AccountChildDetailPageState> build(String childId) async {
    final child = await ref
        .watch(accountChildrenRepositoryProvider)
        .fetchChildById(this.childId);
    return AccountChildDetailPageState(child: child);
  }

  /// Children を削除する。
  Future<void> deleteChild() async {
    // family providerなのでbuildするときにchildIdが渡される。
    await ref
        .read(accountChildrenRepositoryProvider)
        .deleteChildren(id: childId);
    ref.invalidateSelf();
    ref.invalidate(accountPageViewModelProvider);
  }
}
