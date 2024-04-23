import 'package:explosive_app/ui/constants/constants.dart';
import 'package:flutter/material.dart';
import 'nav_drawer_item.dart';

class NavDrawerBody extends StatelessWidget {
  const NavDrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          NavDrawerItem(
              iconUrl: "assets/icons/requests.svg", title: "Previous Request"),
          NavDrawerItem(
              iconUrl: "assets/icons/support.svg", title: "Support & Help"),
          NavDrawerItem(
              iconUrl: "assets/icons/alarm.svg", title: "Notifications"),
          NavDrawerItem(
              iconUrl: "assets/icons/settings.svg", title: "Settings"),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(height: 2, color: AppColors.white),
                Padding(
                  padding: EdgeInsets.only(bottom: 40.0),
                  child: NavDrawerItem(
                    iconUrl: "assets/icons/logout.svg",
                    title: "Log Out",
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
