import 'package:explosive_app/ui/constants/app_colors.dart';
import 'package:explosive_app/ui/widgets/app_text_styles.dart';
import 'package:explosive_app/ui/widgets/auth_button.dart';
import 'package:explosive_app/ui/widgets/auth_card.dart';
import 'package:explosive_app/ui/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final aramcoIdController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/aramco_logo.png",
              width: 508,
              height: 274,
            ),

            AuthCard(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome back!",
                      style: AppTextStyles.bold50,
                    ),
                    const Text(
                      "Please enter details to sign in.",
                      style: AppTextStyles.semiBold40,
                    ),
                    const Text(
                      "Aramco ID *",
                      style: AppTextStyles.bold24Dark02,
                    ),
                    AuthTextField(
                      hintText: "Please enter your Aramco ID",
                      textController: aramcoIdController,
                    ),
                    const Text(
                      "Password *",
                      style: AppTextStyles.bold24Dark02,
                    ),
                    AuthTextField(
                      hintText: "Please enter your password",
                      textController: passwordController,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.dark03),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          "Remember Me",
                          style: AppTextStyles.bold24Dark02,
                        ),
                      ],
                    ),
                    AuthButton(
                      title: "SIGN IN",
                      onPressed: () {},
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
