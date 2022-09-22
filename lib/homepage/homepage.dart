import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:finalproject1/homepage/profile.dart';
import 'package:finalproject1/homepage/tours.dart';
import 'package:flutter/material.dart';
import 'favourite.dart';
import 'giftpage.dart';
import 'location.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final navigationkey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;
  final screens = [
    Locations(),
    Favourite(),
    Gifts(),
    tours(),
    profile(),
  ];
  final items = <Widget>[
    Icon(
      Icons.home,
      size: 25,
      color: Colors.black,
    ),
    Icon(
      Icons.favorite_border,
      size: 25,
      color: Colors.black,
    ),
    Icon(
      Icons.card_giftcard,
      size: 25,
      color: Colors.black,
    ),
    Icon(
      Icons.add_card_rounded,
      size: 25,
      color: Colors.black,
    ),
    Icon(
      Icons.person_outline,
      size: 25,
      color: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[index],
      backgroundColor: Colors.red,
      bottomNavigationBar: CurvedNavigationBar(
        key: navigationkey,
        color: Colors.white,
        buttonBackgroundColor: Colors.redAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        backgroundColor: Colors.transparent,
        items: items,
        height: 55,
        index: index,
        onTap: (index) => setState(
              () {
            this.index = index;
          },
        ),
      ),
    );
  }
}