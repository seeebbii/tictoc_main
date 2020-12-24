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
      height: 65,
      width: double.infinity,
      decoration: pageIndex == 0 ? BoxDecoration(color: appBgColor, boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 2.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0), // shadow direction: bottom right
        )
      ],) : BoxDecoration(color: white, boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 2.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0), // shadow direction: bottom right
        )
      ],),
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
                  pageIndex == 0 ? Icon(
                    bottomItems[index]['icon'],
                    color: white ,
                  ) : Icon(
                    bottomItems[index]['icon'],
                    color: black ,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: pageIndex == 0 ? Text(
                      bottomItems[index]['label'],
                      style: TextStyle(color: white, fontSize: 10),
                    ) : Text(
                      bottomItems[index]['label'],
                      style: TextStyle(color: black, fontSize: 10),
                    ) ,
                  )
                ],
              ),
            ) :
            InkWell(
                onTap: (){
                  selectedTab(index);
                },
                child: pageIndex == 0 ? UploadIcon(mainColor: white, iconColor: black,) : UploadIcon(mainColor: black, iconColor: white,)
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


