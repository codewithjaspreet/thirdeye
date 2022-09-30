import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customRow({iconData, text}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.sp),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(iconData),
        SizedBox(
          width: 12.sp,
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15.sp),
        ),
      ],
    ),
  );
}
