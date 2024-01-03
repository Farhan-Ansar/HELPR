

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';



class ProviderHome3Screen extends StatefulWidget {
  const ProviderHome3Screen({Key? key}) : super(key: key);

  @override
  State<ProviderHome3Screen> createState() => _ProviderHome3ScreenState();
}

class _ProviderHome3ScreenState extends State<ProviderHome3Screen> {
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
              SizedBox(height: 9.h,),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                      child: const Icon(Icons.arrow_back),),
                  const Spacer(),
                  Text(
                    'Announcement',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 22.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(height: 50.h,),
              Text(
                'Last Week',
                style: TextStyle(
                  color: AppColors.greyTitleColor,
                  fontSize: 18.sp,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20.h,),
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
              ),
              const Divider(),

              SizedBox(height: 30.h,),
              Text(
                'Past Month',
                style: TextStyle(
                  color: AppColors.greyTitleColor,
                  fontSize: 18.sp,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20.h,),
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
                'Make sure your Availability is up  to date\nso Clients can hire you.',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 12.sp,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(),

              SizedBox(height: 16.h,),
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
                'Make sure your Availability is up  to date\nso Clients can hire you.',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 12.sp,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w500,

                ),
              ),


              SizedBox(height: 20.h,),
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
                'Make sure your Availability is up  to date\nso Clients can hire you.',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 12.sp,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w500,

                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
