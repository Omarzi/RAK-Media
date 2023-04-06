import 'package:commissions_app/core/color_constant.dart';
import 'package:commissions_app/screens/widget/custom_card_vip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VipScreen extends StatelessWidget {
  const VipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width,
              color: AppColor.primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("رتبتك",style: TextStyle(
                          color: AppColor.whiteColor
                        ),),
                        SizedBox(height: 3,),
                        Text("عضو عادي",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: AppColor.whiteColor),),
                        SizedBox(height: 5,),
                        Text("صلاحية عضوية يوميا vip",style: TextStyle(color: AppColor.whiteColor),),
                        SizedBox(height: 10,),
                        Text("المهام اليوميه  3",style: TextStyle(color: AppColor.whiteColor),),
                      ],
                    ),
                    Image.asset("assets/images/vip.png",color: AppColor.whiteColor,height: 100,width: 100,)

                  ],
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(20),
               child: Column(
                 children: [
                   CustomCardVip(Colors.brown.withAlpha(180), 1, 1, 5, 150),
                   CustomCardVip(Colors.cyan.withAlpha(180), 1, 1, 5, 150),
                   CustomCardVip(Colors.green.withAlpha(180), 1, 1, 5, 150),
                   CustomCardVip(Colors.red.withAlpha(180), 1, 1, 5, 150),
                 ],
               ),
             )
          ],
        ),
      ),
    );
  }
}
