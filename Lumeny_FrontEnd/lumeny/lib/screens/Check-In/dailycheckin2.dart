import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/University-Login/university.dart';
import 'package:quiz_app/screens/Check-In/dailycheckin2.dart';

class DailyCheckIn1 extends StatefulWidget {
  @override
  _DailyCheckIn1State createState() => _DailyCheckIn1State();
}

class _DailyCheckIn1State extends State<DailyCheckIn1> {
  bool pressAttentionyes = true;
  bool pressAttentionno = true;
  bool pressAttentionyes1 = true;
  bool pressAttentionno1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Health Check"),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(color: kSecondaryColor),
          ),
          Align(
            alignment: Alignment(-0.2, -0.95),
            child: Container(
              height: 400,
              width: 360,
              child: Text(
                "The University continues to require daily active screening aligned with Ontario COVID-19 self-assessment tool as one measure within our framework to support ongoing health and safety of the community. You will now be directed through a series of questions to support completion of daily provincial health screening requirements.",
                style: TextStyle(color: kHintStyle, fontSize: 12),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.36, -0.60),
            child: Text(
              "Do Any of These Apply to you?",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: dailyCheckIn),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.50),
            child: Text(
              "I am fully vaccinated against COVID-19",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: dailyCheckIn),
            ),
          ),
          Align(
            alignment: Alignment(-0.25, -0.4),
            child: Container(
              height: 50,
              width: 250,
              child: Text(
                "(it has been 14 days or more since your final dose of either a two-dose or a one-dose vaccine series)",
                style: TextStyle(color: kPrimaryColor, fontSize: 14),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.2, -0.25),
            child: Text(
              "I have tested positive for COVID-19",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: dailyCheckIn),
            ),
          ),
          Align(
            alignment: Alignment(-0.25, -0.125),
            child: Container(
              height: 50,
              width: 250,
              child: Text(
                "in the last 90 days (and since been cleared)r",
                style: TextStyle(color: kPrimaryColor, fontSize: 14),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.7, 0),
            child: RaisedButton(
              child: new Text('Yes'),
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              color: pressAttentionyes ? Colors.grey : Colors.green,
              onPressed: () =>
                  setState(() => pressAttentionyes = !pressAttentionyes),
            ),
          ),
          Align(
            alignment: Alignment(-0.1, 0),
            child: RaisedButton(
              child: new Text('No'),
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              color: pressAttentionno ? Colors.grey : Colors.red,
              onPressed: () =>
                  setState(() => pressAttentionno = !pressAttentionno),
            ),
          ),
          Align(
            alignment: Alignment(0.1, 0.15),
            child: Container(
              height: 50,
              width: 300,
              child: Text(
                "Are you currently experiencing any of these issues? Call 911 if you are.",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.1, 0.3),
            child: Container(
              height: 50,
              width: 300,
              child: Text(
                "• Severe difficulty breathing (struggling for each \t breath, can only speak in single words)",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.1, 0.425),
            child: Container(
              height: 50,
              width: 300,
              child: Text(
                "•  Severe chest pain(constant tightness or \t crushing sensation)",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.1, 0.575),
            child: Container(
              height: 50,
              width: 300,
              child: Text(
                "•  Feeling confused or unsure of where you are",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.1, 0.7),
            child: Container(
              height: 50,
              width: 300,
              child: Text(
                "•  Losing consciousness",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.7, 0.75),
            child: RaisedButton(
              child: new Text('Yes'),
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              color: pressAttentionyes1 ? Colors.grey : Colors.green,
              onPressed: () =>
                  setState(() => pressAttentionyes1 = !pressAttentionyes1),
            ),
          ),
          Align(
            alignment: Alignment(-0.1, 0.75),
            child: RaisedButton(
              child: new Text('No'),
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              color: pressAttentionno1 ? Colors.grey : Colors.red,
              onPressed: () =>
                  setState(() => pressAttentionno1 = !pressAttentionno1),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.99),
            child: InkWell(
              onTap: () => Get.to(DropDownDemo()),
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
                  "𝐂𝐨𝐧𝐭𝐢𝐧𝐮𝐞",
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
