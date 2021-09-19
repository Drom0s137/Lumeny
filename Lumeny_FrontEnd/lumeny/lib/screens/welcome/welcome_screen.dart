import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/welcome/loginscreen.dart';
import 'package:quiz_app/screens/welcome/registerscreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(color: kTextField),
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
                      "𝙇𝙪𝙢𝙚𝙣𝙮",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 42),
                    ),
                  ),

                  Spacer(flex: 1),
                  Center(
                    child: Text(
                      "𝐂𝐡𝐞𝐜𝐤 𝐢𝐧 𝐌𝐚𝐝𝐞 𝐋𝐢𝐠𝐡𝐭",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                  Spacer(flex: 1),
                  InkWell(
                    onTap: () => Get.to(LoginScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding), // 15
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "𝐋𝐨𝐠𝐢𝐧",
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  InkWell(
                    onTap: () => Get.to(RegisterScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding), // 15
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "𝐑𝐞𝐠𝐢𝐬𝐭𝐞𝐫",
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
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
