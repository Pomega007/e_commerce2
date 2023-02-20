import 'package:e_commerce/Screens/Accounts/LoginScreen.dart';
import 'package:e_commerce/Screens/OnBoarding1.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(
        builder: (context) => OnBoarding1(),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Pattern.png'),
            alignment: Alignment.topCenter,
          ),
        ),
          child: Column(
            children: [
              Container(
                height: 200,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 25,
                      color: Theme.of(context).scaffoldBackgroundColor
                    )
                  ]
                ),
                child: Image.asset('assets/Full Logo.png'),
                height: 300,
              ),
            ],
          ),
      ),
    );
  }
}
