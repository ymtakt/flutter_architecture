import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../model/entity/feature/children.dart';
import '../../../../model/repository/feature/account/account_children.repository.dart';

part 'account_child_edit_page_view_model.freezed.dart';
part 'account_child_edit_page_view_model.g.dart';

/// AccountChildEditPage の状態を表す State.
@freezed
class AccountChildEditPageState with _$AccountChildEditPageState {
  /// [AccountChildEditPageState] を生成する。
  const factory AccountChildEditPageState({required Children child}) =
      _AccountChildEditPageState;
}

/// AccountChildEditPage の ViewModel.
@riverpod
class AccountChildEditPageViewModel extends _$AccountChildEditPageViewModel {
  @override
  Future<AccountChildEditPageState> build(String childId) async {
    final child = await ref
        .watch(accountChildrenRepositoryProvider)
        .fetchChildById(this.childId);
    return AccountChildEditPageState(child: child);
  }

  /// Children を更新する。
  Future<void> updateChild(Children child) async {
    // family providerなのでbuildするときにchildIdが渡される。
    await ref
        .read(accountChildrenRepositoryProvider)
        .updateChildren(
          id: childId,
          name: child.name,
          kana: child.kana,
          gender: child.gender,
          birthday: child.birthday,
        );
    ref.invalidateSelf();
  }
}
