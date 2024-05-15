import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Support & Help", isDrawer: true),
      backgroundColor: AppColors.grey03,
      drawer: AppNavDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SupportCard(
              title: "Support Group",
              email: "support@aramco.com",
              mobileNo: "0123 456 789",
              officeNo: "0123 456 789",
            ),
            SupportCard(
              title: "Service Company",
              email: "serviceCompany@aramco.com",
              mobileNo: "0123 456 789",
              officeNo: "0123 456 789",
            ),
            SupportCard(
              title: "Dispatch Group",
              email: "dispatcher@aramco.com",
              mobileNo: "0123 456 789",
              officeNo: "0123 456 789",
            ),
          ],
        ),
      ),
    );
  }
}
