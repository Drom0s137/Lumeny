import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/Home page/hompage.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screens/University-Login/university.dart';

class PFPCreation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'πΌπππ€πͺπ£π© πΎπ§πππ©ππ€π£',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(color: kTextField),
          ),
          Align(
            alignment: Alignment(0, -0.85),
            child: InkWell(
              // onTap: ,
              child: Container(
                padding: EdgeInsets.only(left: 80),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/Eddy.jpg'), fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.3),
            child: InkWell(
              onTap: () => Get.to(LandingPage()),
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding), // 15
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "                   ππ‘π¨π¨π¬π ππ‘π¨π­π¨                   ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: textTitles),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.05),
            child: InkWell(
              onTap: () => Get.to(LandingPage()),
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding), // 15
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "                   ππ©π₯π¨ππ ππ‘π¨π­π¨                   ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: textTitles),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.25),
            child: InkWell(
              onTap: () => Get.to(LandingPage()),
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding), // 15
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Text(
                  "ππ‘π¨π¨π¬π πππππ’π§ππ­π’π¨π§ ππ¨ππ?π¦ππ§π­ππ­π’π¨π§",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: textTitles),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.5),
            child: InkWell(
              onTap: () => Get.to(LandingPage()),
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding), // 15
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "ππ©π₯π¨ππ πππππ’π§ππ­π’π¨π§ ππ¨ππ?π¦ππ§π­ππ­π’π¨π§",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: textTitles),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.9),
            child: InkWell(
              onTap: () => Get.to(LandingPage()),
              child: Container(
                width: 350,
                padding: EdgeInsets.all(kDefaultPadding), // 15
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "                          ππ¨π§π­π’π§π?π",
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
