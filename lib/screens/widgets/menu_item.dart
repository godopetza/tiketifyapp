import 'package:flutter/material.dart';

import '../../constants.dart';

class NavItem extends StatelessWidget {
  final String title;
  final GestureTapCallback onTap;
  final double? textSize;
  final Color? textColor;
  const NavItem({
    Key? key,
    required this.title,
    required this.onTap,
    this.textSize = 14,
    this.textColor = kTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: textSize,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}