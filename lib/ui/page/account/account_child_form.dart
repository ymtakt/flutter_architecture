import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/entity/feature/children.dart';
import 'package:flutter_architecture/ui/shared/functionless/common_date_picker.dart';
import 'package:flutter_architecture/ui/shared/functionless/common_select_box.dart';
import 'package:flutter_architecture/ui/shared/functionless/common_text_field.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AccountChildForm extends HookWidget {
  const AccountChildForm({
    super.key,
    required this.handleSubmit,
    required this.submitButtonText,
    this.initialChildData,
  });

  final Children? initialChildData;
  final Function(Children) handleSubmit;
  final String submitButtonText;

  @override
  Widget build(BuildContext context) {
    // エフェメラルステートとしてフォームの状態を管理
    final nameController = useTextEditingController(
      text: initialChildData?.name ?? '',
    );
    final kanaController = useTextEditingController(
      text: initialChildData?.kana ?? '',
    );
    final selectedGender = useState<String?>(initialChildData?.gender ?? '男性');
    final selectedDate = useState<DateTime?>(
      DateTime.tryParse(initialChildData?.birthday ?? ''),
    );
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 名前フィールド
            CommonTextField(
              controller: nameController,
              labelText: '名前',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '名前を入力してください';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            // ふりがなフィールド
            CommonTextField(
              controller: kanaController,
              labelText: 'ふりがな',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'ふりがなを入力してください';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            // 性別選択
            CommonSelectBox(
              value: selectedGender.value,
              items: const [
                DropdownMenuItem(value: '男性', child: Text('男性')),
                DropdownMenuItem(value: '女性', child: Text('女性')),
              ],
              onChanged: (value) {
                selectedGender.value = value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '性別を選択してください';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            // 生年月日選択
            CommonDatePicker(
              value: selectedDate.value,
              onChanged: (value) {
                selectedDate.value = value;
              },
            ),
            const SizedBox(height: 24),

            TextButton(
              child: Text(submitButtonText),
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  final child = Children(
                    id: initialChildData?.id ?? '',
                    name: nameController.text,
                    kana: kanaController.text,
                    gender: selectedGender.value ?? '',
                    birthday: selectedDate.value?.toIso8601String() ?? '',
                  );
                  handleSubmit(child);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
