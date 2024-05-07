import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AppDataRow extends StatelessWidget {
  const AppDataRow({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Center(
        child: Text(
          text,
          style: AppTextStyles.semiBold(24, AppColors.dark02),
        ),
      ),
    );
  }
}
