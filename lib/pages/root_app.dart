import 'package:flutter/material.dart';
import 'package:tictoc_main/pages/ActivityPage.dart';
import 'package:tictoc_main/pages/DiscoverPage.dart';
import 'package:tictoc_main/pages/ProfilePage.dart';
import 'package:tictoc_main/pages/UploadPage.dart';
import 'package:tictoc_main/theme/colors.dart';
import 'package:tictoc_main/widgets/tik_tok_icons.dart';
import 'package:tictoc_main/widgets/upload_icon.dart';

import 'HomePage.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

static List<Widget> screenList = [
  HomePage(),
  DiscoverPage(),
  UploadPage(),
  ActivityPage(),
  ProfilePage(),
];

  Widget getBody(){
    return IndexedStack(
      children: screenList,
      index: pageIndex,
    );
  }

  Widget getFooter() {
    List bottomItems = [
      {"icon":Icons.home, "label": "Home", "isIcon": true},
      {"icon": Icons.search, "label": "Discover", "isIcon": true},
      {"icon": "", "label": "", "isIcon": false},
      {"icon": Icons.message, "label": "Inbox", "isIcon": true},
      {"icon": Icons.person, "label": "Me", "isIcon": true}
    ];
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(color: appBgColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length,(index){
            return bottomItems[index]['isIcon'] ?
            InkWell(
              onTap: (){
                selectedTab(index);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    bottomItems[index]['icon'],
                    color: white ,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      bottomItems[index]['label'],
                      style: TextStyle(color: white, fontSize: 10),
                    ),
                  )
                ],
              ),
            ) :
            InkWell(
                onTap: (){
                  selectedTab(index);
                },
                child: UploadIcon()
            );
          }),
        ),
      ),
    );
  }
  selectedTab(index){
    setState(() {
      pageIndex = index;
    });
  }
}


