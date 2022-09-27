import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../responsive.dart';
import 'widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300), child: const SideMenu()),
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
                  LoginBody(),
                  Footer(),
                ]),
          ),
        ),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      if (isMobile(context))
                        SvgPicture.asset(
                          '/images/loginscreen.svg',
                          height: size.height * 0.3,
                        ),
                      const CustomTextField(hint: 'ENTER EMAIL HERE'),
                      const SizedBox(height: 10),
                      const CustomTextField(
                          hint: 'ENTER PASSWORD HERE', passwordtext: true),
                      const SizedBox(height: 20),
                      Wrap(
                        runSpacing: 10,
                        children: <Widget>[
                          CustomButton(
                            color: kPrimaryColor,
                            onPressed: () {},
                            title: 'LOGIN',
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.wifi_password_rounded,
                            color: kTextColor,
                          ),
                          label: const Text(
                            'Forgot Password',
                            style: TextStyle(color: kTextColor),
                          )),
                    ]),
              ),
            ),
            if (isDesktop(context) || isTab(context))
              Expanded(
                child: SvgPicture.asset(
                  '/images/loginscreen.svg',
                  height: size.height * 0.7,
                ),
              )
          ],
        ));
  }
}
