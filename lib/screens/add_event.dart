import 'package:flutter/material.dart';
import 'package:tiketifyv1/constants.dart';

import '../responsive.dart';
import 'widgets/widgets.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300), child: SideMenu()),
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
                  AddEventBody(),
                  Footer(),
                ]),
          ),
        ),
      ),
    );
  }
}

class AddEventBody extends StatelessWidget {
  const AddEventBody({Key? key}) : super(key: key);

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
                      if (isMobile(context)) CustomImageContainer(),
                      CustomTextField(
                        hint: 'ENTER EVENT NAME',
                      ),
                      const SizedBox(height: 5),
                      CustomTextField(
                        hint: 'ENTER EVENT DESCRIPTION',
                      ),
                      const SizedBox(height: 5),
                      CustomTextField(
                        hint: 'ENTER EVENT PRICE',
                      ),
                      const SizedBox(height: 5),
                      CustomTextField(
                        hint: 'ENTER AVAILABLE TICKETS',
                      ),
                      CustomTextField(
                        hint: 'ENTER EVENT DATE',
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        runSpacing: 10,
                        children: <Widget>[
                          CustomButton(
                            color: kSecondaryColor,
                            onPressed: () {},
                            title: 'UPLOAD EVENT',
                          )
                        ],
                      )
                    ]),
              ),
            ),
            if (isDesktop(context) || isTab(context))
              Expanded(child: CustomImageContainer())
          ],
        ));
  }
}

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, right: 10.0),
      child: Container(
          height: isDesktop(context) ? size.height * 0.7 : size.height * 0.5,
          width: isDesktop(context) ? size.width * 0.45 : size.width * 0.75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Theme.of(context).primaryColor,
              ),
              top: BorderSide(
                width: 1,
                color: Theme.of(context).primaryColor,
              ),
              left: BorderSide(
                width: 1,
                color: Theme.of(context).primaryColor,
              ),
              right: BorderSide(
                width: 1,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon: const Icon(
                Icons.add_circle,
                color: kPrimaryColor,
                size: 43,
              ),
              onPressed: () {},
            ),
          )),
    );
  }
}
