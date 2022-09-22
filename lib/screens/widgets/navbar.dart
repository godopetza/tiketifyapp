import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(children: <Widget>[
        //Logo
        SvgPicture.asset(
          '/images/logo.svg',
          width: 50,
        ),
        //Text
        Text(
          'TIKETIFY',
          style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        //NavItems
        Spacer(),
        NavItem(
          title: 'HOME',
          onTap: () {},
        ),
        NavItem(
          title: 'TIKETI',
          onTap: () {},
        ),
        NavItem(
          title: 'CONTACT US',
          onTap: () {},
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: kPrimaryColor,
          ),
          onPressed: () {},
          child: const Text('LOGIN'),
        )
      ]),
    );
  }
}

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
      hoverColor: kPrimaryColor,
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
