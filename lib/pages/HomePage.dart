

import 'package:flutter/material.dart';
import 'package:tictoc_main/theme/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                color: black
            ),
          ),
          Container(
            width: size.width,
            height: size.height,
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Following', style: TextStyle(
                        color: white.withOpacity(0.5),
                        fontSize: 16,

                      ),)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
