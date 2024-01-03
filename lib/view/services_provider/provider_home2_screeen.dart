import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/services_provider/provider_home3_screen.dart';

class ProviderHome2Screen extends StatefulWidget {
  const ProviderHome2Screen({Key? key}) : super(key: key);

  @override
  State<ProviderHome2Screen> createState() => _ProviderHome2ScreenState();
}

class _ProviderHome2ScreenState extends State<ProviderHome2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.h,),
              Text(
                'HI Jordan.',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 22.sp,
                  fontFamily:AppFonts.inter,
                  fontWeight: FontWeight.w700,

                ),
              ),

              SizedBox(height: 20.h,),
              Text(
                'Here’s What’s going on today.',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 22.sp,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 40.h,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProviderHome3Screen()),);
                },
                child: Container(
                  height: 75.h,
                  decoration: ShapeDecoration(
                    color: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 15.w,),
                      Container(
                        width: 47.w,
                        height: 47.h,
                        decoration: const ShapeDecoration(
                          color: AppColors.backGroundColor,
                          shape: OvalBorder(),
                        ),
                        child: SvgPicture.asset("assets/svg/mail.svg",height: 10,),
                      ),
                      SizedBox(width: 25.w,),
                      Text(
                        'No new message!',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Container(

                width: double.infinity,
                height: 75.h,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Same day tasks',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8.h,),
                      Text(
                        'Get tasks that need to be done today.',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 12.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w500,

                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                width: double.infinity,
                height: 91.h,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'No task scheduled today',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8.h,),
                      Text(
                        'Make sure your Availability is up  to date\n so Clients can hire you.',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 12.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}
