import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'widgets.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
              child: Column(
                  mainAxisAlignment: !isMobile(context)
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
                  crossAxisAlignment: !isMobile(context)
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: <Widget>[
                    if (isMobile(context))
                      SvgPicture.asset(
                        '/images/living.svg',
                        height: size.height * 0.3,
                      ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Buy ',
                            style: TextStyle(
                              fontSize: isDesktop(context) ? 64 : 36,
                              fontWeight: FontWeight.w800,
                              color: kTextColor,
                            ),
                          ),
                          TextSpan(
                            text: 'Event Tickets',
                            style: TextStyle(
                                fontSize: isDesktop(context) ? 64 : 36,
                                fontWeight: FontWeight.w800,
                                color: kPrimaryColor),
                          ),
                        ],
                      ),
                    ),
                     Text(
                      'With Us Today!',
                      style:
                          TextStyle(fontSize: isDesktop(context) ? 64 :32, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 5),
                     Text(
                      'Kenya, Uganda, Tanzania.',
                      style:
                          TextStyle(fontSize: isDesktop(context) ? 36 :18, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      runSpacing: 10,
                      children: <Widget>[
                        CustomButton(
                          color: kPrimaryColor,
                          onPressed: () {},
                          title: 'BROWSE',
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CustomButton(
                          color: kSecondaryColor,
                          onPressed: () {},
                          title: 'WATCH DEMO',
                        )
                      ],
                    )
                  ]),
            ),
          ),
          if (isDesktop(context) || isTab(context))
            Expanded(
              child: SvgPicture.asset(
                '/images/living.svg',
                height: size.height * 0.7,
              ),
            )
        ],
      )
    );
  }
}
