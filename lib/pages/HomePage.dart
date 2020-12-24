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
              decoration: BoxDecoration(color: black),
            ),
            Container(
              width: size.width,
              height: size.height,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 25, right: 10, left: 10, bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              print("Following");
                            },
                            child: Text(
                              'Following',
                              style: TextStyle(
                                color: white.withOpacity(0.5),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            '|',
                            style: TextStyle(
                              color: white.withOpacity(0.5),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 5,),
                          InkWell(
                            onTap: (){
                              print("For You");
                            },
                            child: Text(
                              'For You',
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
