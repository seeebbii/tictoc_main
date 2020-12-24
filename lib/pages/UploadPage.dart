import 'package:flutter/material.dart';
import 'package:tictoc_main/theme/colors.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Upload",style: TextStyle(
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
