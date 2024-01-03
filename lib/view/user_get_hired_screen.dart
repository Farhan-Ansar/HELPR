import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/profile2_screen.dart';
import 'package:handyman/view/services_provider/provider_profile_details_screen.dart';

class UserGetHired extends StatefulWidget {
  const UserGetHired({Key? key}) : super(key: key);

  @override
  State<UserGetHired> createState() => _UserGetHiredState();
}

class _UserGetHiredState extends State<UserGetHired> {
  DateTime time = DateTime.now();
  bool showNextContainer = false;
  int index = 1;
  Color borderColor = AppColors.whiteColor;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.backGroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backGroundColor,
          elevation: 0,
          bottom: const TabBar(
            labelColor: AppColors.blueContainerColor,
            dividerColor: AppColors.blueContainerColor,
            unselectedLabelColor: AppColors.greyTitleColor,
            indicatorColor: AppColors.blueContainerColor,
            tabs: [
              Tab(
                child: Text(
                  'Calendar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Map',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            'Get Hired',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            buildFirstTab(),
            buildSecondTab(),
          ],
        ),
      ),
    );
  }

  Widget buildFirstTab() {
    return !showNextContainer
        ? Column(
      children: [
        SizedBox(height: 23.h),
        Text(
          'STEP 1/2',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 15.h),
        SizedBox(
          width: 243.w,
          child: Text(
            'When would you like us to come?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color:AppColors.blackColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 400.h,
          child: CupertinoDatePicker(
            initialDateTime: time,
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (DateTime newTime) {
              setState(() {
                time = newTime;
              });
            },
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            setState(() {
              showNextContainer = !showNextContainer;
            });
          },
          child: Container(
            width: 227.w,
            height: 56.h,
            decoration: ShapeDecoration(
              color: AppColors.blueButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                'Next',
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 50.h),
        // Default container
      ],
    )
        : Column(
      children: [
        SizedBox(height: 23.h),
        Text(
          'STEP 2/2',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 15.h),
        SizedBox(
          width: 243.w,
          child: Text(
            "And what's time?",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 100.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 123.w,
              height: 56.h,
              decoration: ShapeDecoration(
                color: AppColors.whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Center(
                child: Text(
                  'AM',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.greyTitleColor,
                    fontSize: 15.sp,
                    fontFamily: AppFonts.inter,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 17.w,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Change the border color on tap
                  borderColor = AppColors.blueContainerColor;
                });
              },
              child: Container(
                width: 123.w,
                height: 56.h,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                    // Set the border color dynamically
                    side: BorderSide(color: borderColor, width: 2.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    'PM',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.blueContainerColor,
                      fontSize: 15.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 70.h,),
        Image.asset("assets/images/Group3.png"),
        SizedBox(height: 70.h,),

        InkWell(
          onTap: () {
            setState(() {
              showNextContainer = !showNextContainer;
            });
          },
          child: Container(
            width: 227,
            height: 56,
            decoration: ShapeDecoration(
              color: AppColors.blueButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 50),
        // Default container
      ],
    );
  }

  Widget buildSecondTab() {
    return Column(
      children: [
        SizedBox(height: 50.h),
        Text(
          'Choose Location?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(),
        Image.asset("assets/images/Map-image.png"),
        const Spacer(),
        Container(
          width: 227.w,
          height: 56.h,
          decoration: ShapeDecoration(
            color: AppColors.blueButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Center(
            child: Text(
              'Add',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(height: 50.h),
      ],
    );
  }
}


