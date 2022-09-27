import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiketifyv1/responsive.dart';
import 'package:tiketifyv1/screens/screens.dart';

import '../../constants.dart';
import 'widgets.dart';

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
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          child: Row(
            children: [
              SvgPicture.asset(
                '/images/logo.svg',
                width: 50,
              ),
              //Text
              Text(
                'TIKETIFY',
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        //NavItems
        const Spacer(),
        if (!isMobile(context))
          Row(
            children: [
              NavItem(
                title: 'HOME',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              ),
              NavItem(
                title: 'TIKETI',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BrowseEventsScreen()));
                },
              ),
              NavItem(
                title: 'CONTACT US',
                onTap: () {},
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: kPrimaryColor,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: const Text('LOGIN'),
              ),
            ],
          ),
        if (isMobile(context))
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          )
      ]),
    );
  }
}
