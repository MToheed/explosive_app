import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Notifications", isDrawer: true),
      backgroundColor: AppColors.grey03,
      drawer: AppNavDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NotificationsCard(),
              NotificationsCard(isUnRead: false),
              NotificationsCard(),
              NotificationsCard(),
              NotificationsCard(isUnRead: false),
              NotificationsCard(),
              NotificationsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
