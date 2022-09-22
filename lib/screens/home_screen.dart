import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300
        ),
        child: SideMenu()
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(
              minHeight: size.height
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  NavBar(),
                  CustomBanner(),
                  Footer(),
                ]),
          ),
        ),
      ),
    );
  }
}
