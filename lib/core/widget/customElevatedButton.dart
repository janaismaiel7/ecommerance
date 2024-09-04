import 'package:ecommerance/core/resources/colorManger.dart';
import 'package:ecommerance/core/resources/styleManger.dart';
import 'package:ecommerance/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customelevatedbutton extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? label;
  final Color? backgroundColor;
  final double? radius;
  final void Function() onTap;
  final TextStyle? textStyle;
  final bool isStadiumBorder;

  const Customelevatedbutton(
      {super.key,
      this.prefixIcon,
      this.textStyle,
      this.isStadiumBorder = true,
      this.backgroundColor,
      this.radius,
      this.suffixIcon,
      required this.label,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: isStadiumBorder
                ? const StadiumBorder()
                : RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.r)),
            backgroundColor: backgroundColor ?? ColorManger.primary,
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 14.h)),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixIcon ?? SizedBox(),
            SizedBox(
              width: 24.w,
            ),
            Text(
              label!,
              style: textStyle ?? getMediumStyle(color: ColorManger.white),
            )
          ],
        ));
  }
}
