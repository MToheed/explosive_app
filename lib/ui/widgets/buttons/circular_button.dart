import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    super.key,
    required this.title,
    this.kColor = AppColors.darkGreen,
    this.textColor = AppColors.white,
    required this.onPressed,
  });

  final String title;
  final Color kColor;
  final Color textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 200,
      decoration: BoxDecoration(
        color: kColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: kColor,
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.bold(24, textColor),
          ),
        ),
      ),
    );
  }
}
