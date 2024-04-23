import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRequest extends StatelessWidget {
  const NewRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 120,
      decoration: BoxDecoration(
        color: AppColors.dark03,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(
          "+ New",
          style: AppTextStyles.semiBold32,
        ),
      ),
    );
  }
}
