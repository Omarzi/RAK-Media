import 'package:commissions_app/core/color_constant.dart';
import 'package:commissions_app/screens/layout/home/home_screen.dart';
import 'package:commissions_app/screens/layout/profile/profile.dart';
import 'package:commissions_app/screens/layout/register/register_screen.dart';
import 'package:commissions_app/screens/layout/task_room_screen/task_room_screen.dart';
import 'package:commissions_app/screens/layout/vip/vip_screen.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
   int currentScreen=0;

  List<Widget> tabs=[
    // const SignupScreen(),
    // LoginScreen(),
    HomeScreen(),
    TaskRoomScreen(),
    const VipScreen(),
    // const SignupScreen(),
    RegisterScreen(),
    // LoginScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       body: tabs[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: (index){
         setState(() {
           currentScreen=index;
         });
        },
        items: [
          const BottomNavigationBarItem(icon: (Icon(Icons.home)),label: "منزل"),
          const BottomNavigationBarItem(icon: (Icon(Icons.description_outlined)),label: "قاعة المهام"),
          BottomNavigationBarItem(icon: Image.asset("assets/images/icon_vip.png",),label: "vip"),
          const BottomNavigationBarItem(icon: (Icon(Icons.border_color_outlined)),label: "سجل"),
          const BottomNavigationBarItem(icon: (Icon(Icons.person)),label: "أنا"),



        ],
      ),
    );
  }
}
