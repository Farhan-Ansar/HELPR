import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/onborading2_screen.dart';



class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
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
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Terms & Privacy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 26.sp,
                  fontFamily: AppFonts.sfProText,
                  fontWeight: FontWeight.w600,

                ),
              ),
             const Spacer(),
              // SizedBox(height: 100.h,),
              Container(
                width: 70.w,
                height: 70.h,
                decoration: ShapeDecoration(
                  color: AppColors.darkGreyColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'HELPR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 28.sp,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Bring the best services to you',
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
                height: 76.h,
              ),
              Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    activeColor: AppColors.blueButtonColor,
                    value: true, onChanged:(value) {

                  },),
                  SizedBox(
                    width: 279.w,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'By ticking this box i acknowledge that i have agreed to the ',
                            style: TextStyle(
                              color: AppColors.greyTitleColor,
                              fontSize: 15.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Term of Service',
                            style: TextStyle(
                              color: AppColors.blueButtonColor,
                              fontSize: 15.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                          TextSpan(
                            text: ' and reviewed the ',
                            style: TextStyle(
                              color: AppColors.greyTitleColor,
                              fontSize: 15.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy.',
                            style: TextStyle(
                              color: AppColors.blueButtonColor,
                              fontSize: 15.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(

                    activeColor: AppColors.blueButtonColor,
                    value: false, onChanged:(value) {

                  },),
                  SizedBox(
                    width: 279.w,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'I do not want to receive promotional communications from Handyman ',
                            style: TextStyle(
                              color: AppColors.greyTitleColor,
                              fontSize: 15.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
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
                    MaterialPageRoute(builder: (context) => const OnBoarding2Screen()),);
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
              SizedBox(
                height: 20.h,
              ),

              //SizedBox(height: 70.h,),


            ],
          ),
        ),
      ),
    );
  }
}
