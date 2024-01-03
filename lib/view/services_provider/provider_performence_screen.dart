import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/services_provider/Provider_skills_screen.dart';
import 'package:handyman/view/services_provider/provider_analytics_screen.dart';
import 'package:handyman/view/services_provider/provider_earning_screen.dart';
import 'package:handyman/view/services_provider/provider_reviews_screen.dart';

class ProviderPerformance extends StatefulWidget {
  const ProviderPerformance({Key? key}) : super(key: key);

  @override
  State<ProviderPerformance> createState() => _ProviderPerformanceState();
}

class _ProviderPerformanceState extends State<ProviderPerformance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 9.h,
                ),
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      'Performance',
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
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProviderEarningScreen()),);
                  },
                  child: Container(
                    height: 141.h,
                    decoration: ShapeDecoration(
                      color: AppColors.whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'November earnings',
                                style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 17.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'See Detail',
                                style: TextStyle(
                                  color: AppColors.blueButtonColor,
                                  fontSize: 11.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                          const Divider(),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Total earned ',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: '2,123.34\$',
                                  style: TextStyle(
                                    color: AppColors.blueButtonColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Task count ',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: '45',
                                  style: TextStyle(
                                    color: AppColors.blueButtonColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProviderReviews()),);
                  },
                  child: Container(
                    height: 141.h,
                    decoration: ShapeDecoration(
                      color: AppColors.whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Reviews',
                                style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 17.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'See Reviews',
                                style: TextStyle(
                                  color: AppColors.blueButtonColor,
                                  fontSize: 11.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                          const Divider(),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '5/5',
                                style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 16.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 22,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '( ',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: '248 reviews )',
                                  style: TextStyle(
                                    color: const Color(0xFF0E335F),
                                    fontSize: 16.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 14.h,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProviderAnalytics()),);
                  },
                  child: Container(
                    height: 196.h,
                    decoration: ShapeDecoration(
                      color: AppColors.whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Analytics',
                                style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 17.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'See analytics',
                                style: TextStyle(
                                  color: AppColors.blueButtonColor,
                                  fontSize: 11.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                          const Divider(),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Moving, trimming & edging, Fertilizing\nand overfeeding.',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 13.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Average search position ',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: '6th',
                                  style: TextStyle(
                                    color: AppColors.blueButtonColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,

                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.h,),

                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'You have shown more than ',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,

                                  ),
                                ),
                                TextSpan(
                                  text: '95%',
                                  style: TextStyle(
                                    color: AppColors.blueButtonColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,

                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),


                SizedBox(
                  height: 14.h,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProviderSkillScreen()),);
                  },
                  child: Container(
                    height: 196.h,
                    decoration: ShapeDecoration(
                      color: AppColors.whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Skills & rates',
                                style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 17.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'See skills',
                                style: TextStyle(
                                  color: AppColors.blueButtonColor,
                                  fontSize: 11.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                          const Divider(),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Moving, trimming & edging, Fertilizing\nand overfeeding.',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 13.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Average search position ',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: '6th',
                                  style: TextStyle(
                                    color: AppColors.blueButtonColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,

                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.h,),

                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'You have shown more than ',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,

                                  ),
                                ),
                                TextSpan(
                                  text: '95%',
                                  style: TextStyle(
                                    color: AppColors.blueButtonColor,
                                    fontSize: 16.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,

                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
