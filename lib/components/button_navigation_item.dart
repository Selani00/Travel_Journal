import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonNavigationItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  const ButtonNavigationItem({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
      ),
    );
  }
}
