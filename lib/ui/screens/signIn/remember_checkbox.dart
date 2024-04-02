import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:explosive_app/ui/constants/constants.dart';

class RememberCheckBox extends StatelessWidget {
  const RememberCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.dark03),
          ),
        ),
        const SizedBox(width: 15),
        const Text(
          AppStrings.remember,
          style: AppTextStyles.bold24Dark02,
        ),
      ],
    );
  }
}
