import 'package:flutter/material.dart';
import 'package:tiketifyv1/responsive.dart';

import '../../constants.dart';
import 'widgets.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context)) ? const DesktopFooter() : const MobileFooter();
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          const Expanded(
              flex: 1,
              child: Text(
                'All Right Reserved',
                style: TextStyle(fontSize: 10),
              )),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                FooterItem(
                  title: 'Twitter',
                  onTap: () {},
                ),
                FooterItem(
                  title: 'Facebook',
                  onTap: () {},
                ),
                FooterItem(
                  title: 'Instagram',
                  onTap: () {},
                ),
                FooterItem(
                  title: 'WhatsApp',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        children: <Widget>[
          const Text(
            'All Rights Reserved',
            style: TextStyle(fontSize: 10),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              FooterItem(
                title: 'Twitter',
                onTap: () {},
              ),
              FooterItem(
                title: 'Facebook',
                onTap: () {},
              ),
              FooterItem(
                title: 'Instagram',
                onTap: () {},
              ),
              FooterItem(
                title: 'WhatsApp',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FooterItem extends StatelessWidget {
  final String title;
  final GestureTapCallback onTap;

  const FooterItem({
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavItem(
        title: title, textColor: kSecondaryColor, textSize: 12, onTap: onTap);
  }
}
