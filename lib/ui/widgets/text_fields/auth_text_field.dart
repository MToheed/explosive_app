import 'package:explosive_app/ui/constants/app_colors.dart';
import 'package:explosive_app/ui/widgets/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.hintText,
    required this.textController,
  });

  final String hintText;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.dark02.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: textController,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyles.semiBold24,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}
