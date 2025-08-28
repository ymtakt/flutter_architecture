import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../model/entity/feature/children.dart';
import '../../../../model/repository/feature/account/account_children.repository.dart';

part 'account_page_view_model.freezed.dart';
part 'account_page_view_model.g.dart';

/// AccountPage の状態を表す State.
@freezed
class AccountPageState with _$AccountPageState {
  /// [AccountPageState] を生成する。
  const factory AccountPageState({required List<Children> children}) =
      _AccountPageState;
}

/// AccountPage の ViewModel.
@riverpod
class AccountPageViewModel extends _$AccountPageViewModel {
  @override
  Future<AccountPageState> build() async {
    final children = await ref
        .watch(accountChildrenRepositoryProvider)
        .fetchChildren();
    return AccountPageState(children: children);
  }

  /// Children を作成する。
  ///
  /// 作成後、ViewModel をリビルドする。
}
