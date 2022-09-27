import 'package:flutter/material.dart';
import 'package:tiketifyv1/models/event_model.dart';
import '../constants.dart';
import '../responsive.dart';
import 'widgets/widgets.dart';

class BookEventScreen extends StatelessWidget {
  final Event event;
  const BookEventScreen({Key? key, required this.event}) : super(key: key);

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
                children: <Widget>[
                  const NavBar(),
                  BookEventBody(event: event),
                  const Footer(),
                ]),
          ),
        ),
      ),
    );
  }
}

class BookEventBody extends StatelessWidget {
  final Event event;
  const BookEventBody({
    Key? key,
    required this.event,
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
                        Column(
                          children: [
                            Text(event.eventname!),
                            Image.network(
                              event.eventphoto!,
                              height: size.height * 0.3,
                            ),
                          ],
                        ),
                      const CustomTextField(hint: 'ENTER EMAIL HERE'),
                      const SizedBox(height: 10),
                      const CustomTextField(
                          hint: 'ENTER NAME HERE', passwordtext: true),
                      const SizedBox(height: 20),
                      Wrap(
                        runSpacing: 10,
                        children: <Widget>[
                          CustomButton(
                            color: kPrimaryColor,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: const Text('ALERT'),
                                        content: const Text('Redirect to payment'),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text('OK')),
                                        ],
                                      ));
                            },
                            title: 'PAY KES ${event.eventPrice!}',
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                    ]),
              ),
            ),
            if (isDesktop(context) || isTab(context))
              Expanded(
                child: Column(
                  children: [
                    Image.network(
                      event.eventphoto!,
                      height: size.height * 0.7,
                    ),
                    Text('Price: Kes${event.eventPrice!}'),
                    Text(event.eventname!)
                  ],
                ),
              )
          ],
        ));
  }
}
