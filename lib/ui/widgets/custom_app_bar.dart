import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Requests',
        style: AppTextStyles.bold40,
      ),
      toolbarHeight: 120,
      backgroundColor: AppColors.white,
      leading: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: const AppSvgPicture(path: "assets/icons/hamburger.svg"),
          );
        },
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 35.0),
          child: badges.Badge(
            badgeContent: Text(
              "5",
              style: AppTextStyles.semiBold16,
            ),
            badgeStyle: badges.BadgeStyle(
              badgeColor: AppColors.red,
              padding: EdgeInsets.all(10),
            ),
            child: AppSvgPicture(path: "assets/icons/notification.svg"),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
