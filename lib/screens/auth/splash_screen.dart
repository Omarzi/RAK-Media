import 'package:commissions_app/core/color_constant.dart';
import 'package:commissions_app/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.primaryColor,
      body: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 5),
          Image.asset(
            'assets/images/logo-app-inside.png',
       color: Colors.white,
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.14,
            ),
            child: LinearPercentIndicator(
              animation: true,
              lineHeight: 7.0,
              animationDuration: 2500,
              percent: 1,
              barRadius: const Radius.circular(50),
              progressColor: Colors.white,
              onAnimationEnd: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
