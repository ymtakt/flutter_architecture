import 'package:flutter/material.dart';

class CommonDatePicker extends StatelessWidget {
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

  final DateTime? value;
  final ValueChanged<DateTime?> onChanged;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final bool enabled;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final String Function(DateTime)? dateFormat;

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

  DateTime _calculateInitialDate(DateTime firstDate, DateTime lastDate) {
    final now = DateTime.now();
    if (now.isAfter(firstDate) && now.isBefore(lastDate)) {
      return now;
    }
    return lastDate;
  }

  String _formatDate(DateTime date) {
    if (dateFormat != null) {
      return dateFormat!(date);
    }
    return '${date.year}年${date.month}月${date.day}日';
  }
}
