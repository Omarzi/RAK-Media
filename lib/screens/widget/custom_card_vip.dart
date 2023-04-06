import 'package:commissions_app/core/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCardVip extends StatelessWidget {
 Color color;
 int number;
 int unit;
 int task;
 int money;
 CustomCardVip(this.color,this.number,this.unit,this.task,this.money);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        children: [

          Container(
            height: MediaQuery.of(context).size.height/6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:color
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("VIP$number",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),),
                      SizedBox(height:5 ,),
                      Text("وحدات سعر $unit",style: TextStyle(color: Colors.white,),),
                      SizedBox(height:5 ,),
                      Text("المهام اليومية$task",style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('${money}USDT',style: TextStyle(color: AppColor.whiteColor),),
                      SizedBox(height: 20,),
                      Card(
                        elevation: 2,
                        child: Container(
                          height: 28,
                          width: 70,
                          child: Center(
                            child: Text("انضم الأن",
                              style: TextStyle(color: color),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
          right: 58,
          top: 20,
          child: Image.asset("assets/images/icon_vip.png",color: Colors.white.withAlpha(30),height: 130,width: 150,)),
        ],
      ),
    );
  }
}
