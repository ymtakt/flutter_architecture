import 'package:flutter/material.dart';

/// 共通のテキストフィールドコンポーネント。
///
/// アプリケーション全体で使用する統一されたテキスト入力フィールドを提供する。
/// ラベル、ヘルパーテキスト、バリデーションなどの機能を持つ。
class CommonTextField extends StatelessWidget {
  /// [CommonTextField] を生成する。
  const CommonTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.enabled = true,
    this.maxLength,
    this.keyboardType,
    this.obscureText = false,
    this.maxLines = 1,
  });

  /// テキストフィールドのコントローラー。
  final TextEditingController controller;
  
  /// ラベルテキスト。
  final String? labelText;
  
  /// ヒントテキスト。
  final String? hintText;
  
  /// プリフィックスアイコン。
  final Widget? prefixIcon;
  
  /// サフィックスアイコン。
  final Widget? suffixIcon;
  
  /// バリデーション関数。
  final String? Function(String?)? validator;
  
  /// テキスト変更時に実行されるコールバック関数。
  final ValueChanged<String>? onChanged;
  
  /// フィールドが有効かどうか。
  final bool enabled;
  
  /// 最大文字数。
  final int? maxLength;
  
  /// キーボードタイプ。
  final TextInputType? keyboardType;
  
  /// テキストを隠すかどうか。
  final bool obscureText;
  
  /// 最大行数。
  final int maxLines;

  /// テキストフィールドウィジェットを構築する。
  ///
  /// TextFormField を使用して統一されたスタイルの
  /// テキスト入力フィールドを提供する。
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      maxLength: maxLength,
      maxLines: maxLines,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }
}
