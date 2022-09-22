
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'giftpage.dart';

class tours extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<tours> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(child: Image.asset("assets/images/Menu.jpg")),


              ],

            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
            child: Row(
              children: [
                Text("Popular Destination",
                  style: TextStyle(color:Colors.redAccent,
                      fontWeight: FontWeight.w600,
                      fontSize: 23),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text("10 Tours Avialable", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400),)
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset("assets/images/paris.jpg"),
                Image.asset("assets/images/indiaicon.jpg"),
                Image.asset("assets/images/NewYork.jpg"),
                Image.asset("assets/images/LosAngelesicon.jpg"),
              ],
            ),
          ),
          Row(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Image.asset("assets/images/skate.jpg", width: 390,),
                  Container(
                    height: 80,
                    width: 400,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset("assets/images/Sale1.png"),
                        Image.asset("assets/images/Sale2.png"),
                        Image.asset("assets/images/Sale3.png"),
                      ],
                    ),
                  ),

                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
            child: Row(
              children: [
                Text("Discover New Places",
                  style: TextStyle(color:Colors.redAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 23),
                )
              ],
            ),
          ),
          Container(
            height: 330,

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Gifts()));
                },
                    child: Container(
                        child: Image.asset("assets/images/EiffelTower.png"))),
                Image.asset("assets/images/ParrotCay.png"),
                Image.asset("assets/images/NotreDame.png"),
              ],
            ),
          ),


        ],
      ),
    );
  }
}

