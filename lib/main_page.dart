import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_app/screens/booking_screen.dart';
import 'package:hotel_management_app/screens/discover_screen.dart';
import 'package:hotel_management_app/screens/favourite_screen.dart';
import 'package:hotel_management_app/screens/message_screen.dart';
//import 'package:flutter/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> screenList = const [
    DiscoverScreen(),
    BookingScreen(),
    FavouriteScreen(),
    MessageScreen()
  ];

  int screenNo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[screenNo],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 400,
          height: 70,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bottomNavigationIcon(
                  index: 0,
                  icon: CupertinoIcons.alt,
                  navigationText: 'Discover',
                ),
                bottomNavigationIcon(
                  index: 1,
                  icon: CupertinoIcons.alt,
                  navigationText: 'Booking',
                ),
                bottomNavigationIcon(
                  index: 2,
                  icon: CupertinoIcons.alt,
                  navigationText: 'Favourite',
                ),
                bottomNavigationIcon(
                  index: 3,
                  icon: CupertinoIcons.alt,
                  navigationText: 'Message',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomNavigationIcon(
      {required IconData icon,
      required String navigationText,
      required int index}) {
    return InkWell(
      onTap: () {
        setState(() {
          screenNo = index;
        });
      },
      child: Column(children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          navigationText,
          style: const TextStyle(color: Colors.white),
        ),
      ]),
    );
  }
}
