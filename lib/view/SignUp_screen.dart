import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/login_screen.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.h,),
              Row(
                children: [
                  const Icon(Icons.arrow_back),
                  SizedBox(width: 25.w,),
                  Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 26.sp,
                      fontFamily: AppFonts.sfProText,
                      fontWeight: FontWeight.w600,

                    ),
                  )
                ],
              ),
              const Spacer(flex: 1),
              // SizedBox(height: 100.h,),

              Text(
                'Please write your information below',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.greyTitleColor,
                  fontSize: 15.sp,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w500,
                  height: 0.09,
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              Container(
                // width: 343,
                height: 56.h,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w,top: 5.h),
                  child: TextFormField(
                    style: TextStyle( // Set the text color here
                      color: AppColors.blackColor, // Change to the desired text color
                      fontSize: 15.sp,
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'First Name',
                      hintStyle: TextStyle(
                        color: AppColors.greyTitleColor,
                        fontSize: 15.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                // width: 343,
                height: 56.h,
                decoration: ShapeDecoration(
                  color:  AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w,top: 5.h),
                  child: TextFormField(
                    style: TextStyle( // Set the text color here
                      color: AppColors.blackColor, // Change to the desired text color
                      fontSize: 15.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Last Name',
                      hintStyle: TextStyle(
                        color: AppColors.greyTitleColor,
                        fontSize: 15.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                // width: 343,
                height: 56.h,
                decoration: ShapeDecoration(
                  color:  AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w,top: 5.h),
                  child: TextFormField(
                    style: TextStyle( // Set the text color here
                      color: AppColors.blackColor, // Change to the desired text color
                      fontSize: 15.sp,
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: AppColors.greyTitleColor,
                        fontSize: 15.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                // width: 343,
                height: 56.h,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w,top: 5.h),
                  child: TextFormField(
                    style: TextStyle( // Set the text color here
                      color: AppColors.blackColor, // Change to the desired text color
                      fontSize: 15.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: AppColors.greyTitleColor,
                          fontSize: 15.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: const Icon(Icons.visibility_off_outlined)),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),

              Container(
                height: 56.h,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w,top: 5.h),
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      // Handle phone number changes
                    },
                    onInputValidated: (bool value) {
                      // Handle validation
                    },
                    selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.DIALOG,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,

                    selectorTextStyle: const TextStyle(color: AppColors.greyTitleColor),
                    initialValue: PhoneNumber(isoCode: 'US'),
                    textFieldController: TextEditingController(),
                    formatInput: false,

                    keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
                    inputDecoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone no',
                      hintStyle: TextStyle(
                        color: AppColors.greyTitleColor,
                        fontSize: 15.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                // width: 343,
                height: 56.h,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w,top: 5.h),
                  child: TextFormField(
                    style: TextStyle( // Set the text color here
                      color:AppColors.blackColor, // Change to the desired text color
                      fontSize: 15.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Post Code',
                        hintStyle: TextStyle(
                          color: AppColors.greyTitleColor,
                          fontSize: 15.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                  ),
                ),
              ),

              SizedBox(
                height: 40.h,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),);
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
                      'Sign Up',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 15.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

              const Spacer(),
              //SizedBox(height: 70.h,),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'You have an account?',
                      style: TextStyle(
                        color: AppColors.greyTitleColor,
                        fontSize: 15.sp,
                        fontFamily:AppFonts.inter,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: ' Sign In',
                      style: TextStyle(

                        color: AppColors.blueButtonColor, // Change the color to your preference
                        fontSize: 15.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
