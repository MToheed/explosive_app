import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: AppLogo(),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.saudiAramco,
                    style: AppTextStyles.semiBold64,
                  ),
                  HorizontalLine(),
                  Text(
                    AppStrings.explosiveApp,
                    style: AppTextStyles.semiBold56,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  AppStrings.version,
                  style: AppTextStyles.thin30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
