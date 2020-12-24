import 'package:flutter/material.dart';
import 'package:tictoc_main/constant/data_json.dart';
import 'package:tictoc_main/theme/colors.dart';
import 'package:tictoc_main/widgets/column_social_icon.dart';
import 'package:tictoc_main/widgets/header_home_page.dart';
import 'package:tictoc_main/widgets/left_panel.dart';

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
                      top: 25, right: 15, left: 15, bottom: 10),
                  child: Column(
                    children: [
                      HeaderHomePage(),
                      Flexible(
                        child: Row(
                          children: [
                            LeftPanel(size: size, songName: items[0]['songName'],name: items[0]['name'], caption: items[0]['caption'],),
                            Expanded(
                              child: Container(
                                height: size.height,
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.3,
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            getProfile(items[0]['profileImg']),
                                            getIcons(Icons.thumb_up, items[0]['likes'], 35.0),
                                            getIcons(Icons.comment, items[0]['comments'], 35.0),
                                            getIcons(Icons.share, items[0]['shares'], 35.0),
                                            getAlbum(items[0]['albumImg']),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
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
