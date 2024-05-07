import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/texts/app_text_styles.dart';
import 'package:flutter/material.dart';

class PreviousRequestsCard extends StatelessWidget {
  const PreviousRequestsCard({
    super.key,
    required this.kColor,
    required this.status,
    required this.requestNo,
  });

  final Color kColor;
  final String status;
  final int requestNo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0),
      child: Container(
        height: 180,
        width: 460,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Request No.",
                    style: AppTextStyles.bold24Dark03,
                  ),
                  Container(
                    height: 42,
                    width: 120,
                    decoration: BoxDecoration(
                      color: kColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      status,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.semiBold24White,
                    ),
                  ),
                ],
              ),
              Text(
                "$requestNo",
                style: AppTextStyles.bold48Purple,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Urgency: ",
                        style: AppTextStyles.bold24Grey02,
                      ),
                      Text(
                        "Urgent",
                        style: AppTextStyles.semiBold24Dark03,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Date: ",
                        style: AppTextStyles.bold24Grey02,
                      ),
                      Text(
                        "20-08-2024",
                        style: AppTextStyles.semiBold24Dark03,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
