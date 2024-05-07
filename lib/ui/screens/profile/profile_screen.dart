import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'profile_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Profile", isDrawer: true),
      backgroundColor: AppColors.grey03,
      drawer: const AppNavDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Profile",
                    style: AppTextStyles.bold32Dark02,
                  ),
                  RequestButton(
                    title: "Edit",
                    iconUrl: "assets/icons/edit.svg",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const ProfileCard(),
          ],
        ),
      ),
    );
  }
}
