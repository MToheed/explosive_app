import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    required this.iconUrl,
    required this.title,
    required this.value,
  });

  final String iconUrl;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 30.0),
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.grey03,
              ),
              child: Center(
                child: AppSvgPicture(path: iconUrl),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyles.bold(24, AppColors.dark03),
              ),
              Text(
                value,
                style: AppTextStyles.bold(32, AppColors.purple),
              ),
            ],
          )
        ],
      ),
    );
  }
}
