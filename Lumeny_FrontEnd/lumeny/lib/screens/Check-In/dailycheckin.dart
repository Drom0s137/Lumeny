import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/University-Login/university.dart';
import 'package:quiz_app/screens/Check-In/dailycheck.dart';

class DailyCheckIn extends StatefulWidget {
  @override
  _DailyCheckInState createState() => _DailyCheckInState();
}

class _DailyCheckInState extends State<DailyCheckIn> {
  bool pressAttentionyes = true;
  bool pressAttentionno = true;
  bool pressAttentionyes1 = true;
  bool pressAttentionno1 = true;
  bool pressAttentionyes2 = true;
  bool pressAttentionno2 = true;
  bool pressAttentionyes3 = true;
  bool pressAttentionno3 = true;
  bool pressAttentionyes4 = true;
  bool pressAttentionno4 = true;
  bool pressAttentionyes5 = true;
  bool pressAttentionno5 = true;
  bool pressAttentionyes6 = true;
  bool pressAttentionno6 = true;
  bool button1 = true;
  bool button2 = true;
  bool button3 = true;
  bool button4 = true;
  bool button5 = true;
  bool button6 = true;
  bool button7 = true;
  bool button8 = true;

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
            decoration: new BoxDecoration(color: kSecondaryColor),
          ),
          ListView(
            children: [
              Container(
                height: 25,
              ),
              Align(
                alignment: Alignment(0.2, -0.9),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 120,
                  width: 300,
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
                    "in the last 90 days (and since been cleared)",
                    style: TextStyle(color: kPrimaryColor, fontSize: 14),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 50,
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
                      onPressed: () => setState(
                          () => pressAttentionyes = !pressAttentionyes),
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
                ],
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
              Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: RaisedButton(
                      child: new Text('Yes'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: pressAttentionyes1 ? Colors.grey : Colors.green,
                      onPressed: () => setState(
                          () => pressAttentionyes1 = !pressAttentionyes1),
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
                      color: pressAttentionno1 ? Colors.grey : Colors.red,
                      onPressed: () => setState(
                          () => pressAttentionno1 = !pressAttentionno1),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment(0.2, -0.95),
                child: Container(
                  height: 50,
                  width: 300,
                  child: Text(
                    "Are you currently experiencing any of these symptoms?",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: dailyCheckIn,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.2, -0.65),
                child: Container(
                  height: 50,
                  width: 300,
                  child: Text(
                    "Choose any/all that are new, worsening, and not related to other known causes or conditions you already have.",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: ButtonTheme(
                      minWidth: 10,
                      child: RaisedButton(
                        color: button1 ? Colors.grey : Colors.blue,
                        onPressed: () => setState(() => button1 = !button1),
                      ),
                    ),
                  ),
                  Align(
                    child: Text(
                      'Fever and Colds?',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: ButtonTheme(
                      minWidth: 10,
                      child: RaisedButton(
                        color: button2 ? Colors.grey : Colors.blue,
                        onPressed: () => setState(() => button2 = !button2),
                      ),
                    ),
                  ),
                  Align(
                    child: Text(
                      'Cough or barking cough (croup)',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: ButtonTheme(
                      minWidth: 10,
                      child: RaisedButton(
                        color: button3 ? Colors.grey : Colors.blue,
                        onPressed: () => setState(() => button3 = !button3),
                      ),
                    ),
                  ),
                  Align(
                    child: Text(
                      'Shortness of breath',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: ButtonTheme(
                      minWidth: 10,
                      child: RaisedButton(
                        color: button4 ? Colors.grey : Colors.blue,
                        onPressed: () => setState(() => button4 = !button4),
                      ),
                    ),
                  ),
                  Align(
                    child: Text(
                      'Decrease or loss of taste or smell',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: ButtonTheme(
                      minWidth: 10,
                      child: RaisedButton(
                        color: button5 ? Colors.grey : Colors.blue,
                        onPressed: () => setState(() => button5 = !button5),
                      ),
                    ),
                  ),
                  Align(
                    child: Text(
                      'Muscle aches/joint pain',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: ButtonTheme(
                      minWidth: 10,
                      child: RaisedButton(
                        color: button6 ? Colors.grey : Colors.blue,
                        onPressed: () => setState(() => button6 = !button6),
                      ),
                    ),
                  ),
                  Align(
                    child: Text(
                      'Extreme tiredness',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: ButtonTheme(
                      minWidth: 10,
                      child: RaisedButton(
                        color: button7 ? Colors.grey : Colors.blue,
                        onPressed: () => setState(() => button7 = !button7),
                      ),
                    ),
                  ),
                  Align(
                    child: Text(
                      'None of the above',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment(0.2, -0.9),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 60,
                  width: 300,
                  child: Text(
                    "In the last 10 days, have you been identified as a “close contact” of someone who currently has COVID-19?",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.2, -0.9),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 30,
                  width: 300,
                  child: Text(
                    "If public health has advised you that you do not need to self-isolate, select “No.”",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: RaisedButton(
                      child: new Text('Yes'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: pressAttentionyes3 ? Colors.grey : Colors.green,
                      onPressed: () => setState(
                          () => pressAttentionyes3 = !pressAttentionyes3),
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
                      color: pressAttentionno3 ? Colors.grey : Colors.red,
                      onPressed: () => setState(
                          () => pressAttentionno3 = !pressAttentionno3),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment(0.2, -0.9),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 40,
                  width: 300,
                  child: Text(
                    "In the last 10 days, have you received a COVID Alert exposure notification on your cell phone?",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.2, -0.9),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 30,
                  width: 300,
                  child: Text(
                    "If you already went for a test and got a negative result, select No.",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: RaisedButton(
                      child: new Text('Yes'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: pressAttentionyes4 ? Colors.grey : Colors.green,
                      onPressed: () => setState(
                          () => pressAttentionyes4 = !pressAttentionyes4),
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
                      color: pressAttentionno4 ? Colors.grey : Colors.red,
                      onPressed: () => setState(
                          () => pressAttentionno4 = !pressAttentionno4),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment(0.2, -0.9),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 40,
                  width: 300,
                  child: Text(
                    "Have you been in close physical contact with someone who either: ",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.1, 0.425),
                child: Container(
                  height: 50,
                  width: 300,
                  child: Text(
                    "•  is sick with a new cough, fever, difficulty breathing, or other symptoms associated with COVID-19 in the last 10 days?",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 12,
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
                    "•    returned from outside of Canada in the last 14 days",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 12,
                    ),
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
                    "in the last 90 days (and since been cleared)",
                    style: TextStyle(color: kPrimaryColor, fontSize: 14),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: RaisedButton(
                      child: new Text('Yes'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: pressAttentionyes5 ? Colors.grey : Colors.green,
                      onPressed: () => setState(
                          () => pressAttentionyes5 = !pressAttentionyes5),
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
                      color: pressAttentionno5 ? Colors.grey : Colors.red,
                      onPressed: () => setState(
                          () => pressAttentionno5 = !pressAttentionno5),
                    ),
                  ),
                ],
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
                alignment: Alignment(0.1, 0.7),
                child: Container(
                  height: 60,
                  width: 300,
                  child: Text(
                    "Close physical contact means any of the following while not wearing the appropriate personal protective equipment (PPE):",
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
                  height: 40,
                  width: 300,
                  child: Text(
                    "•    being less than 2 metres away in the same \t room, workspace, or area",
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
                  height: 30,
                  width: 300,
                  child: Text(
                    "•    living in the same home",
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
                  height: 30,
                  width: 300,
                  child: Text(
                    "•    being in the same classroom",
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
                  height: 80,
                  width: 300,
                  child: Text(
                    "If the person with symptoms got a COVID-19 vaccine in the last 48 hours and is experiencing mild fatigue, muscle aches, and/or joint pain that only began after vaccination, select “No.” ",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: RaisedButton(
                      child: new Text('Yes'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: pressAttentionyes6 ? Colors.grey : Colors.green,
                      onPressed: () => setState(
                          () => pressAttentionyes6 = !pressAttentionyes6),
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
                      color: pressAttentionno6 ? Colors.grey : Colors.red,
                      onPressed: () => setState(
                          () => pressAttentionno6 = !pressAttentionno6),
                    ),
                  ),
                ],
              ),
              Container(
                height: 10,
              ),
              Align(
                alignment: Alignment(0, 0.99),
                child: InkWell(
                  onTap: () => Get.to(CheckScreenState()),
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
              Container(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
