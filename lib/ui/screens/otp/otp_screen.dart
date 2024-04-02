import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({super.key});

  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const AppLogo(),
            AuthCard(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            AppStrings.codeVerify,
                            style: AppTextStyles.bold50,
                          ),
                          const Text(
                            AppStrings.typeOTP,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.semiBold40,
                          ),
                          SvgPicture.asset(
                            "assets/icons/otp_lock.svg",
                          ),
                          const Text(
                            AppStrings.otpMobileNo,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.semiBold40,
                          ),
                          AuthTextField(
                            hintText: AppStrings.otpHint,
                            textController: otpController,
                          ),
                          // AuthButton(
                          //   title: AppStrings.verify,
                          //   onPressed: () {},
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
