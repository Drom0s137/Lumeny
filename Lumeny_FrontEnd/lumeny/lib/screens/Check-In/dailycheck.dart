import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/University-Login/university.dart';
import 'package:quiz_app/screens/Check-In/dailycheckin2.dart';
import 'package:quiz_app/screens/Home page/hompage.dart';

class CheckScreenState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "𝘿𝙖𝙞𝙡𝙮 𝙃𝙚𝙖𝙡𝙩𝙝 𝘾𝙝𝙚𝙘𝙠",
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(color: Color(0xFFE3C539)),
          ),
          Image(
            image: AssetImage("assets/LOGO.png"),
          ),
          Container(),
          Align(
            child: Icon(
              Icons.circle,
              size: 250,
              color: Colors.white,
            ),
          ),
          Align(
            child: Icon(
              Icons.check,
              size: 150,
              color: Colors.green,
            ),
          ),
          Align(
            alignment: Alignment(0, 0.5),
            child: Text(
              "𝐄𝐝𝐝𝐲 𝐒𝐮",
              style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 42,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.65),
            child: Text(
              "𝐒𝐞𝐩𝐭𝐞𝐦𝐛𝐞𝐫 𝟏𝟗 𝐏𝐚𝐬𝐬",
              style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.95),
            child: InkWell(
              onTap: () => Get.to(LandingPage()),
              child: Container(
                width: 300,
                height: 55,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10), // 15
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: Text(
                  "𝐇𝐨𝐦𝐞",
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: buttonTextSize),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
