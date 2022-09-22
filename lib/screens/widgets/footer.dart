import 'package:flutter/material.dart';

import '../../constants.dart';
import 'widgets.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              'All Rights Reserved',
              style: TextStyle(fontSize: 10),
            ),
          ),
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
