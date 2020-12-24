import 'package:flutter/material.dart';
import 'package:tictoc_main/theme/colors.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile",style: TextStyle(
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
