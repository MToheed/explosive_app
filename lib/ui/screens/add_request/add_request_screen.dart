import 'package:explosive_app/ui/constants/constants.dart';
import 'request_body.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AddRequestScreen extends StatelessWidget {
  const AddRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Add New Request", isDrawer: false),
      backgroundColor: AppColors.grey03,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: RequestBody(),
      ),
    );
  }
}
