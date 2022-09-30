import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddMaterial extends StatelessWidget {
  const AddMaterial({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.sp),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                        SizedBox(
                          width: 12.sp,
                        ),
                        Text(
                          "Sharma Family",
                          style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Messages",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp),
                    ),
                  )
                ],
              ),
            ),
            height: 108.h,
          ),
          SizedBox(
            height: 250.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.chat,
                color: Color(0xFF8652FF),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Add members to Send Messages",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15.sp),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 224.w,
                height: 48.h,
                child: Center(
                  child: Text(
                    "Add a New Member",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xFF8652FF),
                    borderRadius: BorderRadius.all(Radius.circular(20.sp))),
              )
            ],
          )
        ],
      ),
    ));
  }
}
