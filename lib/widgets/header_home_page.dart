import 'package:flutter/material.dart';
import 'package:tictoc_main/theme/colors.dart';


class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}