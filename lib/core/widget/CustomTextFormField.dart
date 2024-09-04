import 'package:ecommerance/core/resources/colorManger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customtextformfield extends StatelessWidget {
  String? label;
  String hintText;
  String Function(String?)? validator;
  TextEditingController controller = TextEditingController();
  TextInputType keyboardType;
  bool obscureText;
  Customtextformfield(
      {required this.hintText,
      required this.validator,
      required this.controller,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0.w),
        child: TextFormField(
          style: TextStyle(color: ColorManger.primary),
          decoration: InputDecoration(
              fillColor: ColorManger.white,
              filled: true, //may remain transparent or default if false
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(color: ColorManger.white, width: 2.w)),

              //same design when writing
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(color: ColorManger.white, width: 2.w)),

              //user not typing
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(color: Colors.red, width: 2.w)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(color: Colors.red, width: 2.w)),
              label: Text(
                label ?? '',
                style: TextStyle(color: ColorManger.white),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 18.sp,
                color: ColorManger.greyColor,
              )),
          validator: validator,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
        ));
  }
}
