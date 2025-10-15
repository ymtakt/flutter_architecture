import 'package:flutter/material.dart';

/// 共通のセレクトボックスコンポーネント。
///
/// アプリケーション全体で使用する統一されたドロップダウン選択コンポーネントを提供する。
/// ジェネリック型 [T] を使用して任意の型の選択肢を扱える。
class CommonSelectBox<T> extends StatelessWidget {
  /// [CommonSelectBox] を生成する。
  const CommonSelectBox({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.validator,
    this.enabled = true,
  });

  /// 現在選択されている値。
  final T? value;
  
  /// 選択肢のリスト。
  final List<DropdownMenuItem<T>> items;
  
  /// 値が変更されたときに実行されるコールバック関数。
  final ValueChanged<T?>? onChanged;
  
  /// ラベルテキスト。
  final String? labelText;
  
  /// ヒントテキスト。
  final String? hintText;
  
  /// プリフィックスアイコン。
  final Widget? prefixIcon;
  
  /// バリデーション関数。
  final String? Function(T?)? validator;
  
  /// コンポーネントが有効かどうか。
  final bool enabled;

  /// セレクトボックスウィジェットを構築する。
  ///
  /// DropdownButtonFormField を使用してユーザーが選択肢から
  /// 値を選択できる UI を提供する。
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      items: items,
      onChanged: enabled ? onChanged : null,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(),
        prefixIcon: prefixIcon,
      ),
      validator: validator,
    );
  }
}
