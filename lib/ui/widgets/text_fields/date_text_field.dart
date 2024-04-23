import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DateTextField extends StatelessWidget {
  const DateTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: AppColors.dark03,
        ),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: AppSvgPicture(path: "assets/icons/calendar.svg"),
          ),
          Text(
            "Last 30 days",
            style: AppTextStyles.semiBold24Dark03,
          )
        ],
      ),
    );
  }
}
