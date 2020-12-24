import 'package:flutter/material.dart';
import 'package:tictoc_main/theme/colors.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Discover",style: TextStyle(
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
