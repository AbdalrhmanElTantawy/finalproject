import 'dart:async';
import 'package:finalproject1/introduction_screen/start_screen.dart';
import 'package:flutter/material.dart';
import '../Custom_Color/custom_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    StartTimer();
  }
  StartTimer() async{
    var duaration=Duration(milliseconds: 2000);
    return Timer(duaration,route);
  }
  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>StartScreen()),);
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [
            CustomColor.darkred,
            CustomColor.lightred,
            CustomColor.lightred,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/whitelogo.png"),
        ],
      ),
    );
  }
}
