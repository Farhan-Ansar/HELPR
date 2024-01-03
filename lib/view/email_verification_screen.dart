import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/create_new_password_screen.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';


class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 5.h,),
              Row(
                children: [
                  const Icon(Icons.arrow_back),
                  SizedBox(width: 25.w,),
                  Text(
                    'Email Verification',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:AppColors.blackColor,
                      fontSize: 26.sp,
                      fontFamily: AppFonts.sfProText,
                      fontWeight: FontWeight.w600,

                    ),
                  )
                ],
              ),

              SizedBox(height: 80.h,),

              SizedBox(
                width: 259.w,
                child: Text(
                  'We sent the OTP code to your email, please check it and enter below',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.greyTitleColor,
                    fontSize: 15.sp,
                    fontFamily: AppFonts.inter,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, top: 5.h),
                child: PinInputTextField(
                  pinLength: 4, // Specify the length of your OTP
                  decoration: BoxLooseDecoration(
                    bgColorBuilder: const FixedColorBuilder(AppColors.whiteColor),
                    textStyle: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 15.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w500,
                    ),
                    strokeColorBuilder: PinListenColorBuilder(
                    Colors.white,Colors.white
                  ),

                  ),
                  onSubmit: (pin) {
                    // Handle the submitted OTP
                    print('Submitted OTP: $pin');
                  },
                ),
              ),







              const Spacer(),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CreateNewPasswordScreen()),);
                },
                child: Container(
                  // width: 343,
                  height: 56.h,
                  decoration: ShapeDecoration(
                    color: AppColors.blueButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Send',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 15.sp,
                        fontFamily:AppFonts.inter,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}






