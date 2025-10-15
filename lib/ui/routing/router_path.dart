/// アプリケーション内で使用するルートパスの定数を定義するクラス。
///
/// 各画面へのナビゲーションに使用するパス文字列を集約管理する。
final class RouterPath {
  /// ホーム画面のパス。
  static const HOME = '/';
  
  /// Todo 一覧画面のパス。
  static const TODO = '/todo';
  
  /// Todo 登録画面のパス。
  static const TODO_REGISTER = '$TODO/register';
}
