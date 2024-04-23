import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavDrawerItem extends StatelessWidget {
  const NavDrawerItem({
    super.key,
    required this.iconUrl,
    required this.title,
  });

  final String iconUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: AppSvgPicture(path: iconUrl),
          ),
          const SizedBox(width: 40),
          Text(
            title,
            style: AppTextStyles.bold36,
          )
        ],
      ),
    );
  }
}
