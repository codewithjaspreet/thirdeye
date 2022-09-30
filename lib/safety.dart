import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thirdeye/settings.dart';

class Safety extends StatelessWidget {
  const Safety({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.sp, horizontal: 8.sp),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.sp))),
                            width: 35.w,
                            height: 35.h,
                            child: Center(
                              child: Icon(Icons.settings,
                                  color: Color(0xFF8652FF)),
                            ),
                          ),
                          SizedBox(
                            width: 12.sp,
                          ),
                          Container(
                            width: 249.w,
                            height: 34.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.sp))),
                          ),
                          SizedBox(
                            width: 12.sp,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.sp))),
                            width: 35.w,
                            height: 35.h,
                            child: Center(
                              child: Icon(Icons.settings,
                                  color: Color(0xFF8652FF)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        "Safety Services",
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 12.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.warning_amber_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 16.sp,
                              ),
                              Text(
                                "Trigger Help Alert",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFFF5F5F5).withOpacity(0.3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(22.sp))),
                          width: 300.w,
                          height: 120.h,
                        ),
                      ],
                    ),
                  ],
                ),
                height: 300.h,
                color: Color(0xFF8652FF),
              ),
              SizedBox(
                height: 12.sp,
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Positioned(
                        child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60.h,
                          ),
                          Text(
                            "Weekly Driver Report",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp),
                          ),
                          SizedBox(
                            height: 12.sp,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      report_container(
                                        color: Color(0xFF62CEF9),
                                        title: 'Total km',
                                        subTtile: '0',
                                      )
                                    ],
                                  ),
                                  width: 100.w,
                                  height: 94.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF62CEF9),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.sp))),
                                ),
                                SizedBox(
                                  width: 12.sp,
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      report_container(
                                        color: Color(0xFF4AC989),
                                        title: 'Top Speed',
                                        subTtile: '0',
                                      )
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xff4AC989),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.sp))),
                                  width: 100.w,
                                  height: 94.h,
                                ),
                                SizedBox(
                                  width: 10.sp,
                                ),
                                report_container(
                                  color: Color(0xFFA28EEC),
                                  title: 'Total Drives',
                                  subTtile: '0',
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      width: 350.w,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.sp)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 20,
                            ),
                          ]),
                      height: 244.h,
                    )),
                  ),
                  Positioned(
                    left: 160.sp,
                    top: 0,
                    child: Container(
                      width: 56.w,
                      height: 58.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Rectangle 1037.png"),
                              fit: BoxFit.contain),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.sp))),
                    ),
                  ),
                  Positioned(
                      top: 210.h,
                      left: 25.w,
                      child: Container(
                        width: 313.w,
                        height: 30.h,
                        child: Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Center(child: Text("Sharma Family Settings")),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xffD9D9D9),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.sp))),
                      ))
                ],
              ),
              Container(
                width: 330.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.sp, vertical: 8.sp),
                      child: Text(
                        "Emergency Contacts",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                      child: Text(
                        "0 contacts added",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                height: 74.h,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.all(Radius.circular(12.sp))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class report_container extends StatelessWidget {
  const report_container({
    super.key,
    required this.color,
    required this.title,
    required this.subTtile,
  });

  final Color color;
  final String title;
  final String subTtile;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 12.sp,
          ),
          Text(
            subTtile,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(10.sp))),
      width: 100.w,
      height: 94.h,
    );
  }
}
