import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:thirdeye/safety.dart';
import 'package:thirdeye/widgets/button2.dart';
import 'package:thirdeye/widgets/textInput.dart';

class OtpScreen extends StatelessWidget {
  final title = Get.arguments as String;
  TextEditingController mobileController = TextEditingController();

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
            "Enter the OTP Code we sent to your Mobile Number",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.51.sp, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 30.h,
          ),

          //   await FirebaseAuth.instance.verifyPhoneNumber(
          // phoneNumber: '${mobileController.text}',
          //   verificationCompleted:
          //       (PhoneAuthCredential credential) {},
          //   verificationFailed: (FirebaseAuthException e) {},
          //   codeSent:
          //       (String verificationId, int? resendToken) {},
          //   codeAutoRetrievalTimeout:
          //       (String verificationId) {},
          // );
          Container(
            height: 46.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(45.sp))),
            child: OtpTextField(
              numberOfFields: 6,
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
                        content: Text('Code entered  $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          GestureDetector(
            child: button2(),
            onTap: () async {
              await FirebaseAuth.instance.verifyPhoneNumber(
                phoneNumber: '${title}',
                verificationCompleted: (PhoneAuthCredential credential) {},
                verificationFailed: (FirebaseAuthException e) {},
                codeSent: (String verificationId, int? resendToken) {},
                codeAutoRetrievalTimeout: (String verificationId) {},
              );
              Get.to(Safety());
            },
          ),
        ],
      ),
    ));
  }
}
