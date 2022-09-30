import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class button extends StatelessWidget {
  const button({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 142.w,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          height: 42.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.sp)),
            color: Color(0XFF8652FF),
          ),
        )
      ],
    );
  }
}
