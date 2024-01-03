import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';


class ProviderEarningScreen extends StatefulWidget {
  const ProviderEarningScreen({Key? key}) : super(key: key);

  @override
  State<ProviderEarningScreen> createState() => _ProviderEarningScreenState();
}

class _ProviderEarningScreenState extends State<ProviderEarningScreen> {
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
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: const Icon(Icons.arrow_back)),
                    const Spacer(),
                    Text(
                      'Earnings',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'September',
                      style: TextStyle(
                        color: AppColors.greyTitleColor,
                        fontSize: 18.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,

                      ),
                    ),
                    Text(
                      'Octobar',
                      style: TextStyle(
                        color: AppColors.greyTitleColor,
                        fontSize: 18.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'November',
                      style: TextStyle(
                        color: AppColors.blueButtonColor,
                        fontSize: 16.sp,
                        fontFamily:AppFonts.inter,
                        fontWeight: FontWeight.w600,

                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80.w,
                      height: 4.h,
                      decoration: ShapeDecoration(
                        color: AppColors.blueButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    Container(
                      width: 80.w,
                      height: 4.h,
                      decoration: ShapeDecoration(
                        // color: AppColors.blueButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    Container(
                      width: 80.w,
                      height: 4.h,
                      decoration: ShapeDecoration(
                        // color: AppColors.blueButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 31.h,
                ),

                Row(
                  children: [
                    Container(
                      width: 161.w,
                      height: 89.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2,123.34\$',
                            style: TextStyle(
                              color: AppColors.blueButtonColor,
                              fontSize: 24.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w600,

                            ),
                          ),
                          SizedBox(height: 8.h,),
                          Text(
                            'Total earned',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 16.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w500,

                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 161.w,
                      height: 89.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2,123.34\$',
                            style: TextStyle(
                              color: AppColors.blueButtonColor,
                              fontSize: 24.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w600,

                            ),
                          ),
                          SizedBox(height: 8.h,),
                          Text(
                            'Total earned',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 16.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w500,

                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),

                Row(
                  children: [
                    Container(
                      width: 161.w,
                      height: 89.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2,123.34\$',
                            style: TextStyle(
                              color: AppColors.blueButtonColor,
                              fontSize: 24.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w600,

                            ),
                          ),
                          SizedBox(height: 8.h,),
                          Text(
                            'Total earned',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 16.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w500,

                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 161.w,
                      height: 89.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2,123.34\$',
                            style: TextStyle(
                              color: AppColors.blueButtonColor,
                              fontSize: 24.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w600,

                            ),
                          ),
                          SizedBox(height: 8.h,),
                          Text(
                            'Total earned',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 16.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w500,

                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 27.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Invoice',
                      style: TextStyle(
                        color: AppColors.blueButtonColor,
                        fontSize: 18.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,

                      ),
                    ),
                    Text(
                      'Payout',
                      style: TextStyle(
                        color: AppColors.greyTitleColor,
                        fontSize: 18.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,

                      ),
                    ),
                    Text(
                      'More info',
                      style: TextStyle(
                        color: AppColors.blueButtonColor,
                        fontSize: 14.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w500,

                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80.w,
                      height: 4.h,
                      decoration: ShapeDecoration(
                        color: AppColors.blueButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    Container(
                      width: 80.w,
                      height: 4.h,
                      decoration: ShapeDecoration(
                       // color: AppColors.blueButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    Container(
                      width: 80.w,
                      height: 4.h,
                      decoration: ShapeDecoration(
                       // color: AppColors.blueButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
