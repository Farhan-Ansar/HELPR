import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/services_provider/provider_task_details.dart';


class ProviderTaskScreen extends StatefulWidget {
  const ProviderTaskScreen({Key? key}) : super(key: key);

  @override
  State<ProviderTaskScreen> createState() => _ProviderTaskScreenState();
}

class _ProviderTaskScreenState extends State<ProviderTaskScreen> {
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
              Tab(child: Text(
                'Current',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w600,

                ),
              ),),
              Tab(child: Text(
                'Past',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w600,

                ),
              ),),

            ],
          ),
          title: Text(
            'My Tasks',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 20.sp,
              fontFamily: AppFonts.inter,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          /*leading: IconButton(
            icon: const Icon(Icons.arrow_back,color: AppColors.blackColor,),
            onPressed: () {
              // Handle back arrow press
              Navigator.pop(context);
            },
          ),*/
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ProviderTaskDetails()),);
                      },
                      child: Container(

                        height: 197.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/provider_rect.png"),
                                  SizedBox(width: 13.w,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jordan S,',
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 18.sp,
                                          fontFamily: AppFonts.inter,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: 13.h,),
                                      Text(
                                        'Lawn Starter Lawn Care',
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 15.sp,
                                          fontFamily: AppFonts.inter,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10.h,),

                              Row(
                                children: [
                                  SizedBox(width: 63.w,),
                                  SvgPicture.asset("assets/svg/notebook.svg"),
                                  SizedBox(width: 14.w,),
                                  Text(
                                    'Tomorrow -12 Nov, 2023',
                                    style: TextStyle(
                                      color: AppColors.greyTitleColor,
                                      fontSize: 15.sp,
                                      fontFamily:AppFonts.inter,
                                      fontWeight: FontWeight.w500,

                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h,),
                              Row(
                                children: [
                                  SizedBox(width: 63.w,),
                                  SvgPicture.asset("assets/svg/clock.svg"),
                                  SizedBox(width: 14.w,),
                                  Text(
                                    '12:00 PM',
                                    style: TextStyle(
                                      color: AppColors.greyTitleColor,
                                      fontSize: 15.sp,
                                      fontFamily:AppFonts.inter,
                                      fontWeight: FontWeight.w500,

                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 8.h,),
                              Row(
                                children: [
                                  SizedBox(width: 63.w,),
                                  SvgPicture.asset("assets/svg/map-marker.svg"),
                                  SizedBox(width: 14.w,),
                                  Text(
                                    'Liverpool',
                                    style: TextStyle(
                                      color: AppColors.greyTitleColor,
                                      fontSize: 15.sp,
                                      fontFamily:AppFonts.inter,
                                      fontWeight: FontWeight.w500,

                                    ),
                                  ),
                                ],
                              ),
                            ],

                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.h,),


                    Container(

                      height: 197.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/Rectangle-dp2.png"),
                                SizedBox(width: 13.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jordan S,',
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 18.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 13.h,),
                                    Text(
                                      'Lawn Starter Lawn Care',
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 15.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10.h,),

                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/notebook.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  'Tomorrow -12 Nov, 2023',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/clock.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  '12:00 PM',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/map-marker.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  'Liverpool',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                    SizedBox(height: 12.h,),


                    Container(

                      height: 197.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/Rectangle-dp.png"),
                                SizedBox(width: 13.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jordan S,',
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 18.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 13.h,),
                                    Text(
                                      'Lawn Starter Lawn Care',
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 15.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10.h,),

                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/notebook.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  'Tomorrow -12 Nov, 2023',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/clock.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  '12:00 PM',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/map-marker.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  'Liverpool',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                    SizedBox(height: 15.h,),









                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Container(

                      height: 197.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/Rectangle-dp3.png"),
                                SizedBox(width: 13.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jordan S,',
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 18.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 13.h,),
                                    Text(
                                      'Lawn Starter Lawn Care',
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 15.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10.h,),

                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/notebook.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  'Tomorrow -12 Nov, 2023',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/clock.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  '12:00 PM',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/map-marker.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  'Liverpool',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                    SizedBox(height: 12.h,),


                    Container(

                      height: 197.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/Rectangle-dp4.png"),
                                SizedBox(width: 13.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jordan S,',
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 18.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 13.h,),
                                    Text(
                                      'Lawn Starter Lawn Care',
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 15.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10.h,),

                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/notebook.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  'Tomorrow -12 Nov, 2023',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/clock.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  '12:00 PM',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/map-marker.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  'Liverpool',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                    SizedBox(height: 12.h,),


                    Container(

                      height: 197.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/Rectangle-dp5.png"),
                                SizedBox(width: 13.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jordan S,',
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 18.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 13.h,),
                                    Text(
                                      'Lawn Starter Lawn Care',
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 15.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10.h,),

                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/notebook.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  'Tomorrow -12 Nov, 2023',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/clock.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  '12:00 PM',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Row(
                              children: [
                                SizedBox(width: 63.w,),
                                SvgPicture.asset("assets/svg/map-marker.svg"),
                                SizedBox(width: 14.w,),
                                Text(
                                  'Liverpool',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                    SizedBox(height: 15.h,),









                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
