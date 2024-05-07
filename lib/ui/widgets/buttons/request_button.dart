import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RequestButton extends StatelessWidget {
  const RequestButton({
    super.key,
    required this.title,
    required this.iconUrl,
    required this.onPressed,
  });

  final String title;
  final String iconUrl;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 48,
        width: 120,
        decoration: BoxDecoration(
          color: AppColors.dark03,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppSvgPicture(path: iconUrl),
            Text(
              title,
              style: AppTextStyles.semiBold32,
            ),
          ],
        ),
      ),
    );
  }
}
