import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget button2() {
  return InkWell(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
          color: Color(0xFF8652FF),
          borderRadius: BorderRadius.all(Radius.circular(8.sp))),
      width: 315.w,
      child: Center(
        child: Text(
          "Verify",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      height: 58.13.h,
    ),
  );
}
