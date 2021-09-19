import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/Check-In/campuslocation.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screens/Check-In/login.dart';

class LandingPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '𝙃𝙤𝙢𝙚 𝙋𝙖𝙜𝙚',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.account_circle),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(color: kSecondaryColor),
          ),
          Align(
            alignment: Alignment(0, -3),
            child: Image(
              image: AssetImage("assets/McMasterUniversity.jpg"),
              height: 500,
              width: 500,
            ),
          ),
          Align(
            alignment: Alignment(0, -0.08),
            child: Text(
              "𝐄𝐝𝐝𝐲  𝐒𝐮",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: kPrimaryColor),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.45),
            child: InkWell(
              // onTap: ,
              child: Container(
                padding: EdgeInsets.only(left: 80),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: kSecondaryColor),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/Eddy.jpg'), fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.3),
            child: InkWell(
              onTap: () => Get.to(CampusLocation()),
              child: Container(
                width: 300,
                padding: EdgeInsets.all(kDefaultPadding), // 15
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "            𝐃𝐚𝐢𝐥𝐲-𝐂𝐡𝐞𝐜𝐤 𝐈𝐧",
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: textTitles),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.6),
            child: InkWell(
              onTap: () => Get.to(LoginScreen()),
              child: Container(
                width: 300,

                padding: EdgeInsets.all(kDefaultPadding), // 15
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "              𝐁𝐨𝐨𝐤 𝐒𝐞𝐫𝐯𝐢𝐜𝐞𝐬",
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: textTitles),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.9),
            child: InkWell(
              //onTap: () => Get.to(DropDownDemo()),
              child: Container(
                width: 300,
                padding: EdgeInsets.all(kDefaultPadding), // 15
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "            𝐂𝐡𝐞𝐜𝐤-𝐈𝐧 𝐇𝐢𝐬𝐭𝐨𝐫𝐲",
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: textTitles),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
