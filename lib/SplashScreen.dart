import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
  bool loggedIn;

  SplashScreen({Key key, this.loggedIn}) : super(key : key);
}

class _SplashScreenState extends State<SplashScreen> {

  Future<bool> checkLoggedInUser() async {
    await Future.delayed(Duration(seconds: 3), );
    return widget.loggedIn;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/logo/appicon.png',)
      ),
    );
  }
}
