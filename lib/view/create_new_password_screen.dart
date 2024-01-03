import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/login_screen.dart';


class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
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
                    'Create New Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 26.sp,
                      fontFamily:AppFonts.sfProText,
                      fontWeight: FontWeight.w600,

                    ),
                  )
                ],
              ),

              SizedBox(height: 80.h,),

              SizedBox(
                width: 259.w,
                child: Text(
                  'And now, you can create the new password and confirm it',
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

              Container(
                // width: 343,
                height: 56.h,
                decoration: ShapeDecoration(
                  color:AppColors.whiteColor,
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
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'New Password',
                        hintStyle: TextStyle(
                          color: AppColors.greyTitleColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
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
                        hintText: 'Confirm Password',
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





              const Spacer(),
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
                      'Send',
                      style: TextStyle(
                        color:AppColors.whiteColor,
                        fontSize: 15.sp,
                        fontFamily: AppFonts.inter,
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
