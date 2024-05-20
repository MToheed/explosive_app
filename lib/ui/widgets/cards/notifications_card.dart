import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NotificationsCard extends StatelessWidget {
  const NotificationsCard({super.key, this.isUnRead = true});

  final bool isUnRead;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Stack(
        children: [
          Container(
            height: 190,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                colors: [
                  (isUnRead) ? AppColors.darkGreen : AppColors.grey02,
                  AppColors.white,
                ],
                stops: const [0.01, 0.01],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: AppSvgPicture(
                    path: (isUnRead)
                        ? "assets/icons/un_read.svg"
                        : "assets/icons/read.svg",
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Application In Review",
                              style: AppTextStyles.bold(48, AppColors.dark02),
                            ),
                            Row(
                              children: [
                                Text(
                                  "10 mins ago",
                                  style: AppTextStyles.bold(
                                    32,
                                    (isUnRead)
                                        ? AppColors.dark03
                                        : AppColors.grey02,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    color: (isUnRead)
                                        ? AppColors.darkGreen
                                        : AppColors.grey02,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: Text(
                            "Your application is in review status. You submitted application on 24/12/2024. Please wait for further information.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.bold(32, AppColors.dark03),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
