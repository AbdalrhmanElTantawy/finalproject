import 'package:flutter/material.dart';
import '../Custom_Color/custom_color.dart';
import '../Sign_in/sign_in.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignupState();
}

class _SignupState extends State<SignUp> {
  bool agreement=false;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
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
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset("assets/images/whitelogo.png"),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 20,),
                    child: Image.asset("assets/images/BGsignup.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40, right: 60),
                    child: Form(
                      key: formkey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: ("Name")),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("Recuired");
                              } else {
                                return ("logined");
                              }
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(labelText: ("Email")),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("Recuired");
                              } else {
                                return ("logined");
                              }
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(labelText: ("Password")),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("Recuired");
                              } else {
                                return ("logined");
                              }
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(labelText: ("Phone Number")),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("Recuired");
                              } else {
                                return ("logined");
                              }
                            },
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: agreement,
                                onChanged: (value) {
                                  setState(
                                        () {
                                      agreement = value!;
                                    },
                                  );
                                },
                              ),
                              RichText(
                                text: const TextSpan(
                                  text: "I agree the ",
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: " Terms & Conditions",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Stack(
                              children: [
                                Container(
                                  width: 290,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: CustomColor.darkred,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 240),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: CustomColor.circlbutton,
                                      borderRadius: BorderRadius.circular(25)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 240),
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 120,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/Facebook.png"),
                              SizedBox(
                                width: 30,
                              ),
                              Image.asset("assets/images/Google.png"),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account? ",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) => SignIn()));
                                },
                                child: Text(
                                  " Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
