import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Settings", isDrawer: true),
      backgroundColor: AppColors.grey03,
      drawer: AppNavDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RequestSection(title: "Account"),
            SettingsCard(
              iconUrl: "assets/icons/user.svg",
              title: "Edit Profile",
              value: "John Doe",
            ),
            SizedBox(height: 10),
            SettingsCard(
              iconUrl: "assets/icons/lock.svg",
              title: "Change Password",
              value: "XXXXXXXXXX",
            ),
            RequestSection(title: "Language"),
            SettingsCard(
              iconUrl: "assets/icons/language.svg",
              title: "Language",
              value: "English",
            ),
            RequestSection(title: "Notification"),
            SettingsCard(
              iconUrl: "assets/icons/notification_1.svg",
              title: "Notification",
              value: "ON",
            ),
          ],
        ),
      ),
    );
  }
}
