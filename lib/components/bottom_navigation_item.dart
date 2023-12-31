import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_journal/components/bottom_navigation_bar.dart';


class MyButtonNavigationItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final Menus currentItem;
  final Menus name;
  const MyButtonNavigationItem(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.currentItem,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
            currentItem == name ? Colors.blue : Colors.black, BlendMode.srcIn),
      ),
    );
  }
}
