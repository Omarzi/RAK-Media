import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/color_constant.dart';

class CustomTextFormField extends StatelessWidget {
 String text;
   CustomTextFormField(this.text);
  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: text,
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(
              width: 1,
              color: AppColor.borderColor
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
    );
  }
}
