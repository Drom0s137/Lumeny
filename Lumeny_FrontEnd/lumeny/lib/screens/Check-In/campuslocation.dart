import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/Check-In/selectingcampuslocation.dart';
import 'package:quiz_app/screens/Check-In/dailycheckin.dart';

import 'package:get/get.dart';

class CampusLocation extends StatefulWidget {
  @override
  _CampusLocation createState() => _CampusLocation();
}

class _CampusLocation extends State<CampusLocation> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text(
          '𝘾𝙝𝙚𝙘𝙠 𝙄𝙣',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(color: kSecondaryColor),
          ),
          Align(
            alignment: Alignment(0, -0.9),
            child: InkWell(
              onTap: () => Get.to(Location()),
              child: Text(
                "𝐏𝐥𝐞𝐚𝐬𝐞 𝐒𝐞𝐥𝐞𝐜𝐭 𝐓𝐡𝐞 𝐂𝐚𝐦𝐩𝐮𝐬 𝐋𝐨𝐜𝐚𝐭𝐢𝐨𝐧",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.75),
            child: Container(
              height: 5,
              width: 150,
              color: kPrimaryColor,
            ),
          ),
          Align(
            alignment: Alignment(0, -0.77),
            child: Text(
              "𝙤𝙧",
              style: TextStyle(fontSize: 18, color: kPrimaryColor),
            ),
          ),
          Align(
            alignment: Alignment(0.8, -0.75),
            child: Container(
              height: 5,
              width: 150,
              color: kPrimaryColor,
            ),
          ),
          Align(
            alignment: Alignment(0, -0.65),
            child: Container(
              child: Text(
                '𝐑𝐞𝐜𝐞𝐧𝐭',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.8, -0.4),
            child: Container(
              height: 50,
              width: 150,
              alignment: Alignment(0, 0),
              child: Text(
                'NRB',
                style: TextStyle(fontSize: 18),
              ),
              color: kPrimaryColor,
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.4),
            child: Container(
              height: 50,
              width: 150,
              alignment: Alignment(0, 0),
              child: Text(
                'CSN',
                style: TextStyle(fontSize: 18),
              ),
              color: kPrimaryColor,
            ),
          ),
          Align(
            alignment: Alignment(0.8, -0.2),
            child: Container(
              height: 50,
              width: 150,
              alignment: Alignment(0, 0),
              child: Text(
                'MUSC',
                style: TextStyle(fontSize: 18),
              ),
              color: kPrimaryColor,
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.2),
            child: Container(
              height: 50,
              width: 150,
              alignment: Alignment(0, 0),
              child: Text(
                'KTH',
                style: TextStyle(fontSize: 18),
              ),
              color: kPrimaryColor,
            ),
          ),
          Align(
            alignment: Alignment(0.8, 0),
            child: Container(
              height: 50,
              width: 150,
              alignment: Alignment(0, 0),
              child: Text(
                'HH',
                style: TextStyle(fontSize: 18),
              ),
              color: kPrimaryColor,
            ),
          ),
          Align(
            alignment: Alignment(-0.8, 0),
            child: Container(
              height: 50,
              width: 150,
              alignment: Alignment(0, 0),
              child: Text(
                'BSB',
                style: TextStyle(fontSize: 18),
              ),
              color: kPrimaryColor,
            ),
          ),
          Align(
            alignment: Alignment(0.8, 0.2),
            child: Container(
              height: 50,
              width: 150,
              alignment: Alignment(0, 0),
              child: Text(
                'HH',
                style: TextStyle(fontSize: 18),
              ),
              color: kPrimaryColor,
            ),
          ),
          Align(
            alignment: Alignment(-0.8, 0.2),
            child: Container(
              height: 50,
              width: 150,
              alignment: Alignment(0, 0),
              child: Text(
                'JHE',
                style: TextStyle(fontSize: 18),
              ),
              color: kPrimaryColor,
            ),
          ),
          Align(
            alignment: Alignment(0.8, 0.4),
            child: Container(
              height: 50,
              width: 150,
              color: kPrimaryColor,
              alignment: Alignment(0, 0),
              child: Text(
                'CB',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.8, 0.4),
            child: Container(
              height: 50,
              width: 150,
              color: kPrimaryColor,
              alignment: Alignment(0, 0),
              child: Text(
                'ET CC',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.9),
            child: InkWell(
              onTap: () => Get.to(DailyCheckIn()),
              child: Container(
                width: 350,

                padding: EdgeInsets.all(kDefaultPadding), // 15
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "                       𝐃𝐚𝐢𝐥𝐲 𝐂𝐡𝐞𝐜𝐤 𝐈𝐧",
                  style: TextStyle(
                      color: Colors.white,
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
