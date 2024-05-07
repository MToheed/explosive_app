import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.grey03,
            ),
            child: const Center(
              child: AppSvgPicture(path: "assets/icons/user.svg"),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProfileData(title: "Name", body: "John Doe"),
                        ProfileData(title: "Badge No.", body: "728346"),
                        ProfileData(title: "Well Name", body: "HMYM - 532612"),
                        ProfileData(
                          title: "Department",
                          body: "JRAK Well Completion",
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProfileData(title: "User Type", body: "Foreman"),
                        ProfileData(title: "Site No.", body: "502"),
                        ProfileData(title: "Service Company", body: "SLB"),
                        ProfileData(title: "Contact No.", body: "0581 587 864"),
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

class ProfileData extends StatelessWidget {
  const ProfileData({super.key, required this.title, required this.body});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.bold(24, AppColors.dark03),
        ),
        Text(
          body,
          style: AppTextStyles.bold(32, AppColors.purple),
        ),
      ],
    );
  }
}
