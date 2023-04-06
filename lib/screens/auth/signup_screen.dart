import 'package:commissions_app/screens/layout/layout_screen.dart';
import 'package:commissions_app/screens/widget/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../core/color_constant.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                    color:AppColor.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),

                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2,
                  child: Column(children: [
                    Image.asset("assets/images/logo-app-inside.png",height: 300,width: 300,color: AppColor.whiteColor),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 240),
                  child: Positioned(
                    // top: MediaQuery.of(context).size.height / 4.2,
                    // right: MediaQuery.of(context).size.width * 0.001,
                    // left: MediaQuery.of(context).size.width * 0.01,
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
                              height: MediaQuery.of(context).size.height / 1.5,
                              width: MediaQuery.of(context).size.width * 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                   Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.blackColor,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                      MediaQuery.of(context).size.width *
                                          0.095,
                                      vertical:
                                      MediaQuery.of(context).size.height /
                                          35,
                                    ),
                                    child: CustomTextFormField("User Name"),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.095,
                                      right: MediaQuery.of(context).size.width *
                                          0.095,
                                    ),
                                    child: IntlPhoneField(
                                      decoration:   InputDecoration(
                                        labelText: "Phone Number",
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:  BorderSide(
                                            width: 1,
                                            color: AppColor.borderColor,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(15),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide:  BorderSide(
                                            width: 1,
                                            color: AppColor.errorkColor,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(15),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:  BorderSide(
                                            width: 1,
                                            color: AppColor.borderColor,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(15),
                                        ),
                                      ),
                                    )
                                  ),
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
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                      MediaQuery.of(context).size.width *
                                          0.095,
                                    ),
                                    child: CustomTextFormField("Confirm password"),
                                  ),
                                  SizedBox(height: 20,),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
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
                                        color:AppColor.primaryColor,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Create',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 10),
                  child: InkWell(
                    onTap: (){Navigator.pop(context);},
                    child: CircleAvatar(
                      child: Center(
                        child: Icon(Icons.arrow_back,color: AppColor.primaryColor),
                      ),
                      radius: 25,
                      backgroundColor: Colors.white,),
                  ),
                )

              ],
            ),

          ],
        ),
      ),
    ) ;
  }
}