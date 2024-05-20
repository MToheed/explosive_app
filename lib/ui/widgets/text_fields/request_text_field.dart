import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/texts/text_form_field_error.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RequestTextField extends StatelessWidget {
  const RequestTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  });

  final String title;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.bold(24, AppColors.dark02),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 64,
          width: 270,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.dark03),
                borderRadius: BorderRadius.circular(6),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.dark03),
                borderRadius: BorderRadius.circular(6),
              ),
              hintText: hintText,
              hintStyle: AppTextStyles.semiBold24,
              contentPadding: const EdgeInsets.all(15),
            ),
          ),
        ),
        Text(
          "Min 3 characters required *",
          style: AppTextStyles.regular(15, AppColors.red),
        ),
      ],
    );
  }
}
