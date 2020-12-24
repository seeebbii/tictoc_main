import 'package:flutter/material.dart';
import 'package:tictoc_main/theme/colors.dart';
class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Activity",style: TextStyle(
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
