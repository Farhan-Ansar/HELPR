import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';


class Profile2Screen extends StatefulWidget {
  const Profile2Screen({Key? key}) : super(key: key);

  @override
  State<Profile2Screen> createState() => _Profile2ScreenState();
}

class _Profile2ScreenState extends State<Profile2Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backGroundColor,
      extendBody: false,


      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h,),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.arrow_back,color: AppColors.blackColor,),
                          ),
                          SizedBox(width: 26.w,),
                          Text(
                            'Electrician Profile',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 22.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 26.h,),
                      Container(
                        height: 386.h,
                        decoration: ShapeDecoration(
                          color: AppColors.whiteColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.r),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x0A000000),
                              blurRadius: 48,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Image.asset("assets/images/electrician.png"),
                              SizedBox(height: 13.h,),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Carnegie Mondover',
                                        style: TextStyle(
                                          color: Color(0xFF2E3434),
                                          fontSize: 20.sp,
                                          fontFamily: AppFonts.inter,
                                          fontWeight: FontWeight.w600,

                                          letterSpacing: 1,
                                        ),
                                      ),
                                      SizedBox(height: 5.h,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const Icon(Icons.location_on,color: Colors.grey,),
                                          Text(
                                            'Cortland, New York',
                                            style: TextStyle(
                                              color: Color(0xFF8E9998),
                                              fontSize: 14.sp,
                                              fontFamily: AppFonts.inter,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 8.h,),
                                      Row(
                                        children: [
                                          RatingBar.builder(
                                            itemSize: 18,
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          SizedBox(width: 10.w,),
                                          Image.asset("assets/images/Reviews.png"),
                                        ],
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Image.asset("assets/images/heart.png"),
                                  SizedBox(width: 15.w,),

                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h,),
                      Text(
                        'About Me',
                        style: TextStyle(
                          color: const Color(0xFF2E3434),
                          fontSize: 16.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      SizedBox(
                        // width: 386,
                        child: Text(
                          'Pellentesque venenatis, turpis nec mattis lacinia, mauris risus faucibus lectus, eget scelerisque velit urna id nibh. Ut molestie est a mauris faucibus fermentum.',
                          style: TextStyle(
                            color: const Color(0xFF848C8C),
                            fontSize: 12.sp,
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h,),
                      Text(
                        'Work Area',
                        style: TextStyle(
                          color: const Color(0xFF2E3434),
                          fontSize: 16.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Container(
                        height: 180.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x0A000000),
                              blurRadius: 48,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset("assets/images/map.png"),
                            )


                          ],
                        ),
                      ),
                      SizedBox(height: 10.h,),

                    ],
                  )
              ),
            ),
           /* Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width:double.infinity,
                height: 80.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            color: AppColors.greyTitleColor,
                            fontSize: 12.sp,
                            fontFamily: AppFonts.sfProText,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(height: 5.h,),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '\$35',
                                style: TextStyle(
                                  color: Color(0xFF0E335F),
                                  fontSize: 22.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                              TextSpan(
                                text: '/hour',
                                style: TextStyle(
                                  color: Color(0xFF999B9D),
                                  fontSize: 12.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 20.w,),
                    Container(
                      width: 250.w,
                      height: 48.h,
                      decoration: ShapeDecoration(
                        color: AppColors.blueButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'HIRE NOW',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 12.sp,
                            fontFamily:AppFonts.inter,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),*/

          ],
        )
      ),
    );
  }
}
