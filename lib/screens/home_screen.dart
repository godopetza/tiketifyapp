import 'package:flutter/material.dart';
import 'package:tiketifyv1/constants.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const NavBar(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Buy ',
                                      style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Event Tickets',
                                      style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.w800,
                                          color: kPrimaryColor),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                'With Us Today!',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Kenya, Uganda, Tanzania.',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w300),
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
                                  const SizedBox(width: 5,),
                                  CustomButton(
                                    color: kSecondaryColor,
                                    onPressed: () {},
                                    title: 'WATCH DEMO',
                                  )
                                ],
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
