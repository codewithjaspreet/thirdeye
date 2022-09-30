import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:thirdeye/sign_up.dart';
import 'package:thirdeye/widgets/custom_row.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            color: Color(0xFF8652FF),
            width: 360.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.sp),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(SignUp());
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  SizedBox(
                    width: 12.sp,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            height: 108.h,
          ),
          greyContainer(),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 15.h,
          ),
          customRow(text: "Smart Notifications", iconData: Icons.chat),
          SizedBox(
            height: 15.h,
          ),
          Divider(
            thickness: 1,
            color: Color(0xFFD9D9D9),
          ),
          SizedBox(
            height: 15.h,
          ),
          customRow(text: "Circle Management", iconData: Icons.chat),
          SizedBox(
            height: 15.h,
          ),
          Divider(
            thickness: 1,
            color: Color(0xFFD9D9D9),
          ),
          SizedBox(
            height: 15.h,
          ),
          customRow(text: "Location Sharing", iconData: Icons.chat),
          SizedBox(
            height: 15.h,
          ),
          greyContainer(),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 15.h,
          ),
          customRow(text: "Account", iconData: Icons.chat),
          SizedBox(
            height: 15.h,
          ),
          Divider(
            thickness: 1,
            color: Color(0xFFD9D9D9),
          ),
          SizedBox(
            height: 15.h,
          ),
          customRow(text: "Drive Detection", iconData: Icons.chat),
          SizedBox(
            height: 15.h,
          ),
          Divider(
            thickness: 1,
            color: Color(0xFFD9D9D9),
          ),
          SizedBox(
            height: 15.h,
          ),
          customRow(text: "Privacy & Security", iconData: Icons.chat),
          SizedBox(
            height: 15.h,
          ),
          Divider(
            thickness: 1,
            color: Color(0xFFD9D9D9),
          ),
          SizedBox(
            height: 15.h,
          ),
          customRow(text: "Support", iconData: Icons.chat),
          SizedBox(
            height: 15.h,
          ),
          Divider(
            thickness: 1,
            color: Color(0xFFD9D9D9),
          ),
          SizedBox(
            height: 15.h,
          ),
          customRow(text: "Log Out", iconData: Icons.chat),
          SizedBox(
            height: 15.h,
          ),
          Divider(
            thickness: 1,
            color: Color(0xFFD9D9D9),
          ),
          SizedBox(
            height: 15.h,
          ),
        ],
      ),
    ));
  }
}

class greyContainer extends StatelessWidget {
  const greyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 30.h,
      child: Padding(
        padding: EdgeInsets.all(8.sp),
        child: Text("Sharma Family Settings"),
      ),
      decoration: BoxDecoration(color: Color(0xffD9D9D9)),
    );
  }
}
