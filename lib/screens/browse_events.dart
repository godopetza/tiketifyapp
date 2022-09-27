import 'package:flutter/material.dart';
import 'package:tiketifyv1/screens/screens.dart';
import '../constants.dart';
import '../models/models.dart';
import '../responsive.dart';
import 'widgets/widgets.dart';

class BrowseEventsScreen extends StatelessWidget {
  const BrowseEventsScreen({Key? key}) : super(key: key);

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
                  const BrowseScreenBody(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.arrow_circle_up),
                      Text('Scroll Above cards')
                    ],
                  ),
                  const Footer(),
                ]),
          ),
        ),
      ),
    );
  }
}

class BrowseScreenBody extends StatelessWidget {
  const BrowseScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final events = Event.events.toList();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Expanded(
        child: Padding(
          padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Book Events Below',
                          style: TextStyle(
                            fontSize: isDesktop(context) ? 48 : 24,
                            fontWeight: FontWeight.w800,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.65,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: events.length,
                        itemBuilder: (context, index) {
                          final event = events[index];
                          return Card(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.white),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 20.0,
                                    top: !isMobile(context) ? 20 : 0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: size.height * 0.25,
                                          width: size.width * 0.4,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      event.eventphoto!),
                                                  fit: BoxFit.contain)),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(event.eventname!),
                                                Text('Kes ${event.eventPrice!}')
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    CustomButton(
                                        title: 'BUY',
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BookEventScreen(
                                                          event: event)));
                                        },
                                        color: kSecondaryColor),
                                    const SizedBox(
                                      height: 5,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
