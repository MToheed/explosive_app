import 'package:explosive_app/ui/constants/app_colors.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PreviousRequestsView extends StatelessWidget {
  const PreviousRequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (_, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: (index == 19) ? 35.0 : 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PreviousRequestsCard(
                kColor: (index % 2 == 0
                    ? AppColors.darkGreen
                    : (index == 3)
                        ? AppColors.red
                        : AppColors.yellow),
                status: (index % 2 == 0
                    ? "Approved"
                    : (index == 3)
                        ? "Cancelled"
                        : "Pending"),
                requestNo: 177 + index,
              ),
              PreviousRequestsCard(
                kColor: (index % 2 == 0
                    ? AppColors.darkGreen
                    : (index == 3)
                        ? AppColors.red
                        : AppColors.yellow),
                status: (index % 2 == 0
                    ? "Approved"
                    : (index == 3)
                        ? "Cancelled"
                        : "Pending"),
                requestNo: 187 + index,
              ),
            ],
          ),
        );
      },
    );
  }
}
