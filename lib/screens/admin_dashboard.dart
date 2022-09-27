import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiketifyv1/screens/screens.dart';
import '../constants.dart';
import '../responsive.dart';
import 'widgets/widgets.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300),
          child: const SideMenu()),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(minHeight: size.height),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  NavBar(),
                  AdminBody(),
                  Footer(),
                ]),
          ),
        ),
      ),
    );
  }
}

class AdminBody extends StatelessWidget {
  const AdminBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
                child: Column(
                    mainAxisAlignment: !isMobile(context)
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.start,
                    crossAxisAlignment: !isMobile(context)
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: <Widget>[
                      if (isMobile(context))
                        Column(
                          children: [
                            const Text('You\'re on mobile view!'),
                            const SizedBox(
                              height: 20,
                            ),
                            SvgPicture.asset(
                              '/images/admin.svg',
                              height: size.height * 0.2,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Welcome ',
                              style: TextStyle(
                                fontSize: isDesktop(context) ? 84 : 40,
                                fontWeight: FontWeight.w800,
                                color: kTextColor,
                              ),
                            ),
                            TextSpan(
                              text: 'Admin',
                              style: TextStyle(
                                  fontSize: isDesktop(context) ? 84 : 40,
                                  fontWeight: FontWeight.w800,
                                  color: kPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        runSpacing: 10,
                        children: <Widget>[
                          CustomButton(
                            color: kPrimaryColor,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CustomerDataScreen()));
                            },
                            title: 'STATISTICS',
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CustomButton(
                            color: kSecondaryColor,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const EventPage()));
                            },
                            title: 'ADD EVENT',
                          )
                        ],
                      )
                    ]),
              ),
            ),
            if (isDesktop(context) || isTab(context))
              Expanded(
                child: SvgPicture.asset(
                  '/images/admin.svg',
                  height: size.height * 0.7,
                ),
              )
          ],
        ));
  }
}
