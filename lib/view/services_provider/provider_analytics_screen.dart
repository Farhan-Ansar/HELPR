import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';



class ProviderAnalytics extends StatefulWidget {
  const ProviderAnalytics({Key? key}) : super(key: key);

  @override
  State<ProviderAnalytics> createState() => _ProviderAnalyticsState();
}

class _ProviderAnalyticsState extends State<ProviderAnalytics> {
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
                      'Analytics',
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
                Container(
                 // width: 343,
                  height: 97,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Anticipated Earning',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 17.sp,
                                fontFamily: AppFonts.inter,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              '5,134\$',
                              style: TextStyle(
                                color: AppColors.blueButtonColor,
                                fontSize: 19.sp,
                                fontFamily: AppFonts.inter,
                                fontWeight: FontWeight.w700,

                              ),
                            )
                          ],
                        ),
                        const Divider(),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'You earn more than ',
                                style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 16.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w600,

                                ),
                              ),
                              TextSpan(
                                text: '98%',
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
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'More Detail',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 17.sp,
                    fontFamily: AppFonts.inter,
                    fontWeight: FontWeight.w700,

                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  // width: 343,
                  height: 126,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Anticipated Earning',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 17.sp,
                                fontFamily: AppFonts.inter,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              '5,134\$',
                              style: TextStyle(
                                color: AppColors.blueButtonColor,
                                fontSize: 19.sp,
                                fontFamily: AppFonts.inter,
                                fontWeight: FontWeight.w700,

                              ),
                            )
                          ],
                        ),
                        const Divider(),
                        Text(
                          'Earning from the past 30 days.',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 16.sp,
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 12.h,),
                        Text(
                          '5,134\$',
                          style: TextStyle(
                            color: AppColors.blueButtonColor,
                            fontSize: 22.sp,
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w700,

                          ),
                        )
                      ],
                    ),
                  ),
                ),





              ],
            ),
          ),
        ),
      ),
    );
  }
}
