import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TextFormFieldError extends StatelessWidget {
  const TextFormFieldError({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Min 3 characters required *",
      style: AppTextStyles.regular(15, AppColors.red),
    );
  }
}
