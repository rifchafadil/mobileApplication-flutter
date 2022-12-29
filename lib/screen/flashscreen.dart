import 'package:flutter/material.dart';
import 'package:flutterstackeditemlist/screen/Signup.dart';
import 'package:flutterstackeditemlist/screen/login.dart';
// import 'package:flutterstackeditemlist/screen/login.dart';
// import 'package:flutterstackeditemlist/screen/signup.dart';
import 'package:flutterstackeditemlist/widgets/customized_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/flashscreenfix.png"),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomizedButton(
              buttonText: "Login",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const LoginPage()));
              },
            ),
            CustomizedButton(
              buttonText: "Sign Up",
              buttonColor: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const SignUpPage()));
              },
            ),
            SizedBox(
              width: 80,
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}