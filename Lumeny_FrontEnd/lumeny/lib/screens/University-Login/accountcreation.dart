import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/University-Login/pfpcreation.dart';

class AccountCreation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(color: kSecondaryColor),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 1), //2/6
                  Center(
                    child: Text(
                      "𝘼𝙘𝙘𝙤𝙪𝙣𝙩 𝘾𝙧𝙚𝙖𝙩𝙞𝙤𝙣",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: BigTitle),
                    ),
                  ),
                  Spacer(flex: 4),
                  Text(
                    "𝐒𝐭𝐮𝐝𝐞𝐧𝐭 𝐄𝐦𝐚𝐢𝐥",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: textTitles),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kTextField,
                      hintText: 'Enter Your Student Email',
                      hintStyle: TextStyle(color: kHintStyle),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    "𝐒𝐭𝐮𝐝𝐞𝐧𝐭 𝐍𝐮𝐦𝐛𝐞𝐫",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: textTitles),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kTextField,
                      hintText: 'Enter Your Password',
                      hintStyle: TextStyle(color: kHintStyle),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                    obscureText: true,
                  ),

                  Spacer(
                    flex: 4,
                  ),
                  InkWell(
                    onTap: () => Get.to(PFPCreation()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding), // 15
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
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
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
