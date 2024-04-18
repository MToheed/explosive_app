import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AuthCard(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        children: [
                          const Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppStrings.codeVerify,
                                  style: AppTextStyles.bold50,
                                ),
                                Text(
                                  AppStrings.typeOTP,
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.semiBold40,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const AppSvgPicture(
                                    path: "assets/icons/otp_lock.svg"),
                                const Text(
                                  AppStrings.otpMobileNo,
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.semiBold40,
                                ),
                                AuthTextField(
                                  hintText: AppStrings.otpHint,
                                  textController: otpController,
                                ),
                                AuthButton(
                                  title: AppStrings.verify,
                                  onPressed: () {},
                                ),
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
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
