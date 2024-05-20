import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';


class SupportCard extends StatelessWidget {
  const SupportCard({
    super.key,
    required this.title,
    required this.email,
    required this.mobileNo,
    required this.officeNo,
  });

  final String title;
  final String email;
  final String mobileNo;
  final String officeNo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RequestSection(title: title),
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              color: AppColors.grey01,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child:
                                  AppSvgPicture(path: "assets/icons/email.svg"),
                            ),
                          ),
                          const SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: AppTextStyles.bold(24, AppColors.dark03),
                              ),
                              Text(
                                email,
                                style: AppTextStyles.bold(32, AppColors.purple),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Mobile",
                                style: AppTextStyles.bold(24, AppColors.dark03),
                              ),
                              Text(
                                mobileNo,
                                style: AppTextStyles.bold(32, AppColors.purple),
                              ),
                            ],
                          ),
                          const SizedBox(width: 30),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              color: AppColors.grey01,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child:
                                  AppSvgPicture(path: "assets/icons/phone.svg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const HorizontalLine(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AppSvgPicture(path: "assets/icons/phone_1.svg"),
                    const SizedBox(width: 30),
                    Text(
                      "Office",
                      style: AppTextStyles.bold(32, AppColors.dark03),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      officeNo,
                      style: AppTextStyles.bold(32, AppColors.purple),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
