import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../responsive.dart';
import 'widgets/widgets.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key? key}) : super(key: key);

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
                  StatsScreenBody(),
                  Footer(),
                ]),
          ),
        ),
      ),
    );
  }
}

class StatsScreenBody extends StatelessWidget {
  const StatsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final eventImages = [
      'https://images.unsplash.com/photo-1609615795042-7146c22ac11e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
      'https://source.unsplash.com/featured?music',
      'https://source.unsplash.com/featured?love',
      'https://source.unsplash.com/featured?sing',
      'https://source.unsplash.com/featured?dj',
    ];

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
                        CarouselSlider.builder(
                          itemCount: eventImages.length,
                          itemBuilder: (context, index, realIndex) {
                            final eventImage = eventImages[index];

                            return buildImage(eventImage, index);
                          },
                          options: CarouselOptions(
                            height: size.height * 0.5,
                            enlargeCenterPage: true,
                            autoPlay: true,
                          ),
                        ),
                      if (!isMobile(context))
                        Row(
                          children: const [
                            CustomCard(
                              cardcolor: Color(0xFF01DA08),
                              maintext: 'REVENUE',
                              subtext: '\$25,000',
                            ),
                            CustomCard(
                              cardcolor: Color(0xFF3C76F3),
                              maintext: 'TICKETS SOLD',
                              subtext: '28,611',
                            ),
                          ],
                        ),
                      if (isMobile(context))
                        Column(
                          children: const [
                            CustomCard(
                              cardcolor: Color(0xFF01DA08),
                              maintext: 'REVENUE',
                              subtext: '\$25,000',
                            ),
                            CustomCard(
                              cardcolor: Color(0xFF3C76F3),
                              maintext: 'TICKETS SOLD',
                              subtext: '28,611',
                            ),
                          ],
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_circle_right,
                          color: kTextColor,
                        ),
                        label: Text(
                          'Customer Details',
                          style: (TextStyle(
                              color: kTextColor,
                              fontSize: isDesktop(context) ? 48 : 20)),
                        ),
                      ),
                    ]),
              ),
            ),
            if (isDesktop(context) || isTab(context))
              Expanded(
                child: CarouselSlider.builder(
                  itemCount: eventImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final eventImage = eventImages[index];

                    return buildImage(eventImage, index);
                  },
                  options: CarouselOptions(
                    height: size.height * 0.7,
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                ),
              ),
          ],
        ));
  }

  Widget buildImage(String eventImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.network(
          eventImage,
          fit: BoxFit.cover,
        ),
      );
}

class CustomCard extends StatelessWidget {
  final Color cardcolor;
  final String maintext;
  final String subtext;

  const CustomCard({
    Key? key,
    required this.cardcolor,
    required this.maintext,
    required this.subtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: cardcolor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text(
            maintext,
            style: TextStyle(fontSize: isDesktop(context) ? 64 : 25),
          ),
          Text(
            subtext,
            style: TextStyle(
              color: Colors.white,
              fontSize: isDesktop(context) ? 36 : 18,
            ),
          ),
        ]),
      ),
    );
  }
}
