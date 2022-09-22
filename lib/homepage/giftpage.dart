import 'package:flutter/material.dart';
class Gifts extends StatelessWidget {
  const Gifts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text("Gift",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
    );

  }
}