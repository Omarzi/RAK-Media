import 'package:commissions_app/core/color_constant.dart';
import 'package:commissions_app/screens/auth/signup_screen.dart';
import 'package:commissions_app/screens/layout/layout_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../widget/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    children: [
                      Image.asset("assets/images/logo-app-inside.png",
                          height: 300, width: 300, color: Colors.white,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 240),
                  child: Positioned(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Card(
                            margin: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.08,
                            ),
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Container(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height / 30,
                              ),
                              height: MediaQuery.of(context).size.height / 1.7,
                              width: MediaQuery.of(context).size.width * 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.blackColor),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.095,
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.095,
                                        top:
                                            MediaQuery.of(context).size.height /
                                                20,
                                      ),
                                      child: IntlPhoneField(
                                        decoration: InputDecoration(
                                          labelText: "Phone Number",
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: AppColor.borderColor),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: AppColor.errorkColor),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: AppColor.borderColor),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      )),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.095,
                                      vertical:
                                          MediaQuery.of(context).size.height /
                                              35,
                                    ),
                                    child: CustomTextFormField("password"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40),
                                    child: Row(
                                      children: const [
                                        Text(
                                          'Forget Password',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // Navigator.pop(context);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LayoutScreen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.56,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: AppColor.primaryColor,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'SIGN IN',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColor.whiteColor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50, vertical: 20),
                                    child: Row(
                                      children: [
                                        Text("Don't have an account? "),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => SignupScreen(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Create",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: AppColor.primaryColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
