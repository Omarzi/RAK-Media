
import 'package:commissions_app/screens/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding:
              const EdgeInsets.only(top: 50, bottom: 10, left: 10, right: 10),
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff0a7fc5),
                        radius: 55.8,
                        child: CircleAvatar(
                          radius: 54,
                        backgroundImage: AssetImage("assets/images/wsalny_logo.png",
                        ),backgroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CustomContainerProfile(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, 'myAccountScreen');
                      },
                      icon: const Icon(
                          Icons.person_outline,
                          color: Colors.black
                      ),
                      text: "My Account",
                      // textColor: AppColors.blackColorPlayed,
                      iconColor:  Colors.black
                  ),
                  CustomContainerProfile(
                      onTap: () {
                        Navigator.pushNamed(context, 'myOrdersScreen');
                      },
                      icon: const Icon(
                          Icons.shopping_bag_outlined,
                          // color: Color(0xff307a59),
                          color:  Colors.black
                      ),
                      text: "My Orders",
                      // textColor: AppColors.blackColorPlayed,
                      iconColor:  Colors.black
                  ),
                  CustomContainerProfile(
                      onTap: () {
                        Navigator.pushNamed(context, 'settingsScreen');
                      },
                      icon: const Icon(
                          Icons.settings_outlined,
                          color:  Colors.black
                      ),
                      text: "Settings",
                      iconColor:  Colors.black
                    // textColor: AppColors.blackColorPlayed,
                  ),
                  CustomContainerProfile(
                    onTap: () {
                      Navigator.pushNamed(context, 'paymentInfoScreen');
                    },
                    icon: const Icon(
                        Icons.payments_outlined,
                        // color: Color(0xff307a59),
                        color:  Colors.black
                    ),
                    iconColor:  Colors.black,
                    text: "Payments",
                    // textColor: AppColors.blackColorPlayed,
                  ),
                  CustomContainerProfile(
                      onTap: () {
                        // if (state is! LogoutSuccessState) {
                        //   // AuthCubit.get(context).logOut(context: context);
                        //   logoutCubit.logOut(context: context);
                        // }
                        Navigator.pushNamed(context, 'about-us');
                      },
                      icon: const Icon(
                          Iconsax.personalcard,
                          // color: Color(0xff307a59),
                          // color: AppColors.blackColor,
                          color:  Colors.black
                      ),
                      text: "About Us",
                      iconColor: Colors.black
                    // textColor: AppColors.blackColorPlayed,
                  ),
                ],
              ),
            ),
          ),
        );
    }

  }

