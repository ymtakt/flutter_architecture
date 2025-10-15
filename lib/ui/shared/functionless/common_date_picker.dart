import 'package:flutter/material.dart';

/// 共通の日付選択コンポーネント。
///
/// アプリケーション全体で使用する統一された日付選択 UI を提供する。
/// タップで日付選択ダイアログを表示し、選択した日付を表示する。
class CommonDatePicker extends StatelessWidget {
  /// [CommonDatePicker] を生成する。
  const CommonDatePicker({
    super.key,
    required this.value,
    required this.onChanged,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.enabled = true,
    this.firstDate,
    this.lastDate,
    this.dateFormat,
  });

  /// 現在選択されている日付。
  final DateTime? value;
  
  /// 日付が変更されたときに実行されるコールバック関数。
  final ValueChanged<DateTime?> onChanged;
  
  /// ラベルテキスト。
  final String? labelText;
  
  /// ヒントテキスト。
  final String? hintText;
  
  /// プリフィックスアイコン。
  final Widget? prefixIcon;
  
  /// コンポーネントが有効かどうか。
  final bool enabled;
  
  /// 選択可能な開始日。
  final DateTime? firstDate;
  
  /// 選択可能な終了日。
  final DateTime? lastDate;
  
  /// 日付のフォーマット関数。
  final String Function(DateTime)? dateFormat;

  /// 日付選択ウィジェットを構築する。
  ///
  /// InputDecorator でスタイルを統一し、タップで日付選択ダイアログを表示する。
  /// 選択された日付は指定されたフォーマットで表示される。
  @override
  Widget build(BuildContext context) {
    final DateTime defaultFirstDate = firstDate ?? DateTime(1900);
    final DateTime defaultLastDate = lastDate ?? DateTime.now();

    return InkWell(
      onTap: enabled
          ? () => _showDatePicker(context, defaultFirstDate, defaultLastDate)
          : null,
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: const OutlineInputBorder(),
          prefixIcon: prefixIcon ?? const Icon(Icons.calendar_today),
          enabled: enabled,
        ),
        child: Text(
          value != null ? _formatDate(value!) : hintText ?? '日付を選択してください',
          style: TextStyle(
            color: value != null
                ? Theme.of(context).textTheme.bodyLarge?.color
                : Theme.of(context).hintColor,
          ),
        ),
      ),
    );
  }

  /// 日付選択ダイアログを表示する。
  ///
  /// showDatePicker を使用してシステムの日付選択 UI を表示し、
  /// 選択された日付を onChanged コールバックに渡す。
  Future<void> _showDatePicker(
    BuildContext context,
    DateTime firstDate,
    DateTime lastDate,
  ) async {
    final date = await showDatePicker(
      context: context,
      initialDate: value ?? _calculateInitialDate(firstDate, lastDate),
      firstDate: firstDate,
      lastDate: lastDate,
    );
    if (date != null) {
      onChanged(date);
    }
  }

  /// 日付選択ダイアログの初期日付を算出する。
  ///
  /// 現在の日付が選択可能範囲内の場合は現在の日付を、
  /// 範囲外の場合は終了日を初期日付として返す。
  DateTime _calculateInitialDate(DateTime firstDate, DateTime lastDate) {
    final now = DateTime.now();
    if (now.isAfter(firstDate) && now.isBefore(lastDate)) {
      return now;
    }
    return lastDate;
  }

  /// 日付を文字列にフォーマットする。
  ///
  /// dateFormat が指定されている場合はそれを使用し、
  /// 未指定の場合は日本語の年月日形式で返す。
  String _formatDate(DateTime date) {
    if (dateFormat != null) {
      return dateFormat!(date);
    }
    return '${date.year}年${date.month}月${date.day}日';
  }
}
