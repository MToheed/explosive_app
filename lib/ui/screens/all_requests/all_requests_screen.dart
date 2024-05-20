import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'all_requests_view.dart';

class AllRequestsScreen extends StatelessWidget {
  const AllRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Requests", isDrawer: true),
      backgroundColor: AppColors.grey03,
      drawer: AppNavDrawer(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            children: [
              SizedBox(height: 35),
              SearchDateCard(),
              Expanded(
                child: AllRequestsView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
