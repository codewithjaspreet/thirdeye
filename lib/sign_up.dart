import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thirdeye/splash_screen.dart';
import 'package:thirdeye/widgets/textInput.dart';

import '../../widgets/button.dart';

class SignUp extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController instituteController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 22.sp, vertical: 16.h),
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          opacity: 0.9,
                          image: AssetImage(
                            'assets/sign_up.png',
                          ),
                          fit: BoxFit.cover)),
                  height: 297.h,
                  width: 315.w,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign-up',
                      style: TextStyle(
                          color: const Color(
                            0xFF8652FF,
                          ),
                          fontWeight: FontWeight.w500,
                          fontSize: 28.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    textInput(controller: nameController, hint: "Name"),
                    SizedBox(
                      height: 10.h,
                    ),
                    textInput(
                        controller: instituteController, hint: "Email Address"),
                    SizedBox(
                      height: 10.h,
                    ),
                    textInput(controller: idController, hint: "Mobile Number"),
                    SizedBox(
                      height: 10.h,
                    ),
                    textInput(controller: passwordController, hint: "Password"),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [(button(text: "Sign-up"))],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(const SplashScreen());
                    },
                    child: RichText(
                        text: TextSpan(
                            children: const <TextSpan>[
                          TextSpan(
                              text: ' Log In',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 18))
                        ],
                            text: 'Already have an account? ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 16.sp))),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
