// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomContainerProfile extends StatelessWidget {
  final Widget icon;
  final String text;
  // final Color textColor;
  final Color iconColor;
  final void Function() onTap;
  const CustomContainerProfile({
    Key? key,
    this.icon = const SizedBox(),
    required this.text,
    // required this.textColor,
    required this.iconColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color:  Colors.grey[300]!,
                  blurRadius: 4.0,
                  spreadRadius: 2.0,
                  offset: const Offset(5.0, 5.0),
                ),
              ],
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    icon,
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                        text,
                     style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
