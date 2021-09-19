import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screens/University-Login/accountcreation.dart';

class DropDownDemo extends StatefulWidget {
  @override
  _DropDownDemoState createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "𝙐𝙣𝙞𝙫𝙚𝙧𝙨𝙞𝙩𝙮 𝙍𝙚𝙜𝙞𝙨𝙩𝙖𝙧𝙞𝙤𝙣",
          style: TextStyle(
              color: kSecondaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 26),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(color: kTextField),
          ),

          Align(
            alignment: Alignment(0, -0.9),
            child: Container(
              padding: const EdgeInsets.all(0.0),
              child: DropdownButton<String>(
                value: _chosenValue,
                //elevation: 5,
                style: TextStyle(color: kPrimaryColor, fontSize: 20),
                items: <String>[
                  '𝐖𝐚𝐭𝐞𝐫𝐥𝐨𝐨',
                  '𝐖𝐞𝐬𝐭𝐞𝐫𝐧',
                  '𝐌𝐜𝐌𝐚𝐬𝐭𝐞𝐫',
                  '𝐘𝐨𝐫𝐤',
                  '𝐓𝐨𝐫𝐨𝐧𝐭𝐨',
                  '𝐐𝐮𝐞𝐞𝐧𝐬',
                  '𝐁𝐫𝐨𝐜𝐤',
                  '𝐎𝐭𝐭𝐚𝐰𝐚',
                  '𝐎𝐧𝐭𝐚𝐫𝐢𝐨 𝐓𝐞𝐜𝐡',
                  '𝐑𝐲𝐞𝐫𝐬𝐨𝐧'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                dropdownColor: kTextField,
                icon: Icon(
                  Icons.book,
                  color: kPrimaryColor,
                ),
                hint: Text(
                  "𝐒𝐞𝐥𝐞𝐜𝐭 𝐘𝐨𝐮𝐫 𝐔𝐧𝐢𝐯𝐞𝐫𝐬𝐢𝐭𝐲   ",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _chosenValue = value;
                  });
                },
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment(0, -0.40),
          //   child: InkWell(
          //     child: Container(
          //       child: Text(
          //         "𝐃𝐨𝐧’𝐭 𝐬𝐞𝐞 𝐌𝐲 𝐔𝐧𝐢𝐯𝐞𝐫𝐬𝐢𝐭𝐲?",
          //         style: Theme.of(context).textTheme.headline6.copyWith(
          //               color: Colors.blue[800],
          //               fontWeight: FontWeight.bold,
          //               decoration: TextDecoration.underline,
          //             ),
          //       ),
          //     ),
          //   ),
          // ),
          Align(
            alignment: Alignment(0, 0.9),
            child: InkWell(
              onTap: () => Get.to(AccountCreation()),
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
                  "                            𝐂𝐨𝐧𝐭𝐢𝐧𝐮𝐞",
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
