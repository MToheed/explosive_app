import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/nav_drawer/nav_drawer_body.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AppNavDrawer extends StatelessWidget {
  const AppNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 560,
      backgroundColor: AppColors.yellow,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Row(
                children: [
                  const AppSvgPicture(
                    path: "assets/icons/profile.svg",
                  ),
                  const SizedBox(width: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("John Doe", style: AppTextStyles.bold48),
                      Text("0581-587-864", style: AppTextStyles.bold32),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Builder(
                        builder: (context) {
                          return GestureDetector(
                            onTap: () => Scaffold.of(context).closeDrawer(),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: AppColors.darkGreen,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(
                                Icons.close,
                                color: AppColors.white,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 2, color: AppColors.white),
            const NavDrawerBody(),
          ],
        ),
      ),
    );
  }
}
