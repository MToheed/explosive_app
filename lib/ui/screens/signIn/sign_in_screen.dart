import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/screens/signIn/remember_checkbox.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
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
                                  AppStrings.welcome,
                                  style: AppTextStyles.bold50,
                                ),
                                Text(
                                  AppStrings.details,
                                  style: AppTextStyles.semiBold40,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  AppStrings.aramcoId,
                                  style: AppTextStyles.bold24Dark02,
                                ),
                                AuthTextField(
                                  hintText: AppStrings.aramcoIdHint,
                                  textController: aramcoIdController,
                                ),
                                const Text(
                                  AppStrings.password,
                                  style: AppTextStyles.bold24Dark02,
                                ),
                                AuthTextField(
                                  hintText: AppStrings.passwordHint,
                                  textController: passwordController,
                                ),
                                const RememberCheckBox(),
                                AuthButton(
                                  title: AppStrings.signIn,
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
