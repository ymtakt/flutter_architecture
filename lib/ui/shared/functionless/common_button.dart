import 'package:flutter/material.dart';

/// 共通のボタンコンポーネント。
///
/// アプリケーション全体で使用する統一されたボタンの見た目と動作を提供する。
/// ローディング状態の表示やアイコン表示などの機能を持つ。
class CommonButton extends StatelessWidget {
  /// [CommonButton] を生成する。
  const CommonButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.enabled = true,
    this.width,
    this.height,
    this.backgroundColor,
    this.foregroundColor,
    this.icon,
    this.fontSize,
  });

  /// ボタンが押された時に実行されるコールバック関数。
  final VoidCallback? onPressed;
  
  /// ボタンに表示するテキスト。
  final String text;
  
  /// ローディング中かどうか。
  final bool isLoading;
  
  /// ボタンが有効かどうか。
  final bool enabled;
  
  /// ボタンの幅。
  final double? width;
  
  /// ボタンの高さ。
  final double? height;
  
  /// ボタンの背景色。
  final Color? backgroundColor;
  
  /// ボタンの前景色（テキスト色）。
  final Color? foregroundColor;
  
  /// ボタンに表示するアイコン。
  final Widget? icon;
  
  /// テキストのフォントサイズ。
  final double? fontSize;

  /// ボタンウィジェットを構築する。
  ///
  /// ボタンの状態（有効/無効、ローディング）に応じて
  /// 適切な見た目と動作を持つボタンを生成する。
  @override
  Widget build(BuildContext context) {
    final bool isEnabled = enabled && !isLoading && onPressed != null;

    Widget child = isLoading
        ? SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: foregroundColor ?? Colors.white,
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[icon!, const SizedBox(width: 8)],
              Text(
                text,
                style: TextStyle(
                  fontSize: fontSize ?? 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );

    return SizedBox(
      width: width,
      height: height ?? 48,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: child,
      ),
    );
  }
}
