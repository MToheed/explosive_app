import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 563,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Do you want to delete this row?",
            style: AppTextStyles.semiBold(32, AppColors.dark02),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularButton(
                title: "YES",
                kColor: AppColors.white,
                textColor: AppColors.dark02,
                onPressed: () {},
              ),
              CircularButton(
                title: "NO",
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
