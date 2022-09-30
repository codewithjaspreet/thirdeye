import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thirdeye/widgets/button2.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "OTP Verification",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25.85.sp),
          ),
          SizedBox(
            height: 25.h,
          ),
          Container(
            width: 248.w,
            height: 169.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/rafiki.png"),
                    fit: BoxFit.contain)),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "Enter the OTP Code we sent to your \nMail",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.51.sp, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            height: 46.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(45.sp))),
            child: OtpTextField(
              numberOfFields: 5,
              borderRadius: BorderRadius.all(Radius.circular(45.sp)),

              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          button2(),
        ],
      ),
    ));
  }
}
