import 'package:explosive_app/ui/constants/app_colors.dart';
import 'package:explosive_app/ui/widgets/app_logo.dart';
import 'package:explosive_app/ui/widgets/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppLogo(),
          Text(
            "Saudi Aramco",
            style: AppTextStyles.semiBold64,
          ),
          Text(
            "Explosive App",
            style: AppTextStyles.semiBold56,
          ),
          Text(
            "Version 1.0",
            style: AppTextStyles.thin30,
          ),
        ],
      ),
    );
  }
}
