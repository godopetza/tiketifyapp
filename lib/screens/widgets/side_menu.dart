import 'package:flutter/material.dart';

import '../../constants.dart';
import 'widgets.dart';



class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}