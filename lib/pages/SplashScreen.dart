import 'package:flutter/material.dart';
import 'package:tictoc_main/pages/root_app.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<bool> checkLoggedInUser() async {
    await Future.delayed(Duration(seconds: 3), );
    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    checkLoggedInUser().then((status){
      if(status){
        navigateToHome();
      }
    });
  }

  void navigateToHome(){
    Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context){
      return RootApp();
    }));
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
