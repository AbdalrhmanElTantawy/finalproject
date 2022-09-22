import 'package:flutter/material.dart';
class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text("favourite",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
    );
  }
}