import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/dashborad_screen.dart';


class OnBoarding2Screen extends StatefulWidget {
  const OnBoarding2Screen({Key? key}) : super(key: key);

  @override
  State<OnBoarding2Screen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoarding2Screen> {
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
              const Spacer(),
              Image.asset("assets/images/onboard.png"),
              SizedBox(height: 40.h,),
              Text(
                'Professional Vendors',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 28.sp,
                  fontFamily: AppFonts.sfProText,
                  fontWeight: FontWeight.w800,

                ),
              ),
              SizedBox(height: 20.h,),
              SizedBox(
                width: 259.w,
                child: Text(
                  'And now, you can create the new password and confirm it',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.greyTitleColor,
                    fontSize: 15.sp,
                    fontFamily:AppFonts.inter,
                    fontWeight: FontWeight.w500,

                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 152.w,
                height: 3.h,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 48.w,
                        height: 3.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFF0E335F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.50),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 52,
                      top: 0,
                      child: Container(
                        width: 48.w,
                        height: 3.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFFEDF1F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.50),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 104,
                      top: 0,
                      child: Container(
                        width: 48.w,
                        height: 3.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFFEDF1F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Dashboard()),);
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
                      "Let's Start",
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
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}
