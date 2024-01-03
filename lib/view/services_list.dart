

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/profile2_screen.dart';



class ServiceListScreen extends StatefulWidget {
  const ServiceListScreen({Key? key}) : super(key: key);

  @override
  State<ServiceListScreen> createState() => _ServiceListScreenState();
}

class _ServiceListScreenState extends State<ServiceListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Row(
                  children: [
                    const Icon(Icons.arrow_back),
                    SizedBox(width: 26.h,),
                    Text(
                      'Select a Tasker',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 22.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: (){
                        _showBottomSheet(context);
                      },
                        child: Image.asset("assets/images/add-item-alt Copy.png"))
                  ],
                ),
                SizedBox(height: 31.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 77.w,
                      height: 44.h,
                      decoration: ShapeDecoration(
                        color: AppColors.blueButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'All',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 15.sp,
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 77.w,
                      height: 44.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Flexible',
                          style: TextStyle(
                            color: AppColors.greyTitleColor,
                            fontSize: 15.sp,
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 77.w,
                      height: 44.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Price',
                          style: TextStyle(
                            color: AppColors.greyTitleColor,
                            fontSize: 15.sp,
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22.h,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context,) => const Profile2Screen()),);
                  },
                  child: Container(
                    height: 230.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 75.w,
                                    height: 80.h,
                                     decoration: ShapeDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage("assets/images/Rectangle.png"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.r),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 15.w,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width:176.w,
                                        child: Text(
                                          'Jordan S,',
                                          style: TextStyle(
                                            color: AppColors.blackColor,
                                            fontSize: 18.sp,
                                            fontFamily: AppFonts.inter,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '\$45/hr',
                                        style: TextStyle(
                                          color: AppColors.blueButtonColor,
                                          fontSize: 15.sp,
                                          fontFamily: AppFonts.inter,
                                          fontWeight: FontWeight.w500,

                                        ),
                                      )
                                    ],
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
                                  ),

                                  SizedBox(height: 10.h,),
                                  Row(
                                    children: [
                                    RatingBar.builder(
                                      itemSize: 20,
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                      const SizedBox(width: 5,),
                                      Text(
                                        '93 reviews',
                                        style: TextStyle(
                                          color: AppColors.greyTitleColor,
                                          fontSize: 13.sp,
                                          fontFamily: AppFonts.inter,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 11.h,),
                                  Text(
                                    '13 Flat pack Assembly tasks',
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 15.sp,
                                      fontFamily: AppFonts.inter,
                                      fontWeight: FontWeight.w500,

                                    ),
                                  ),
                                  SizedBox(height: 8.h,),
                                  Text(
                                    '176 Assembly tasks overall',
                                    style: TextStyle(
                                      color: const Color(0xFF9A9A9A),
                                      fontSize: 13.sp,
                                      fontFamily: AppFonts.inter,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 12.h,),
                                ],
                              ),
                            ],
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Experienced assembling product for Ikea for 10+year.        I will have your furniture assembled ..',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 12.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: '\n',
                                  style: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 12.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: 'See profile ',
                                  style: TextStyle(
                                    color: Color(0xFF0E335F),
                                    fontSize: 12.sp,
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

                SizedBox(height: 18.h,),
                Container(
                  height: 230.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 75.w,
                                  height: 80.h,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage("assets/images/Rectangle.png"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 15.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width:176.w,
                                      child: Text(
                                        'Jordan S,',
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 18.sp,
                                          fontFamily: AppFonts.inter,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '\$45/hr',
                                      style: TextStyle(
                                        color: AppColors.blueButtonColor,
                                        fontSize: 15.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w500,

                                      ),
                                    )
                                  ],
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
                                ),

                                SizedBox(height: 10.h,),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      itemSize: 20,
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const SizedBox(width: 5,),
                                    Text(
                                      '93 reviews',
                                      style: TextStyle(
                                        color: AppColors.greyTitleColor,
                                        fontSize: 13.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 11.h,),
                                Text(
                                  '13 Flat pack Assembly tasks',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                                SizedBox(height: 8.h,),
                                Text(
                                  '176 Assembly tasks overall',
                                  style: TextStyle(
                                    color: const Color(0xFF9A9A9A),
                                    fontSize: 13.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 12.h,),
                              ],
                            ),
                          ],
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Experienced assembling product for Ikea for 10+year.        I will have your furniture assembled ..',
                                style: TextStyle(
                                  color: AppColors.greyTitleColor,
                                  fontSize: 12.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '\n',
                                style: TextStyle(
                                  color: AppColors.greyTitleColor,
                                  fontSize: 12.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'See profile ',
                                style: TextStyle(
                                  color: Color(0xFF0E335F),
                                  fontSize: 12.sp,
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
                SizedBox(height: 18.h,),
                Container(
                  height: 230.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 75.w,
                                  height: 80.h,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage("assets/images/Rectangle.png"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 15.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width:176.w,
                                      child: Text(
                                        'Jordan S,',
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 18.sp,
                                          fontFamily: AppFonts.inter,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '\$45/hr',
                                      style: TextStyle(
                                        color: AppColors.blueButtonColor,
                                        fontSize: 15.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w500,

                                      ),
                                    )
                                  ],
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
                                ),

                                SizedBox(height: 10.h,),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      itemSize: 20,
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const SizedBox(width: 5,),
                                    Text(
                                      '93 reviews',
                                      style: TextStyle(
                                        color: AppColors.greyTitleColor,
                                        fontSize: 13.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 11.h,),
                                Text(
                                  '13 Flat pack Assembly tasks',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                                SizedBox(height: 8.h,),
                                Text(
                                  '176 Assembly tasks overall',
                                  style: TextStyle(
                                    color: const Color(0xFF9A9A9A),
                                    fontSize: 13.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 12.h,),
                              ],
                            ),
                          ],
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Experienced assembling product for Ikea for 10+year.        I will have your furniture assembled ..',
                                style: TextStyle(
                                  color: AppColors.greyTitleColor,
                                  fontSize: 12.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '\n',
                                style: TextStyle(
                                  color: AppColors.greyTitleColor,
                                  fontSize: 12.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'See profile ',
                                style: TextStyle(
                                  color: Color(0xFF0E335F),
                                  fontSize: 12.sp,
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



              ],
            ),
          ),
        ),
      ),
    );
  }


  void _showBottomSheet(BuildContext context) {
    bool isChecked = false;
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        )
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 750.h,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: 0.30,
                      child: Container(
                        width: 32.w,
                        height: 3.h,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFD7D7D7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                   Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reset',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w500,

                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Filters',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 22.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 15.sp,
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w500,

                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h,),
                  const Divider(),
                  SizedBox(height: 10.h,),
                  Text(
                    'Services Needed',
                    style: TextStyle(
                      color: AppColors.blueContainerColor,
                      fontSize: 17.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 14.h,),
                  Row(
                    children: [
                      Text(
                        'Mowing, trimming and edging',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Leaf clean-up',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Weeding and prevention',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Fertilizer application',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Seeding or overseeding',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 40.h,),
                  Text(
                    'Frequency of Services',
                    style: TextStyle(
                      color: AppColors.blueContainerColor,
                      fontSize: 17.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    children: [
                      Text(
                        'One time only',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Once a week',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Every other week',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Once a month',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),

                  SizedBox(height: 40.h,),
                  Text(
                    'Estimated Lawn Size',
                    style: TextStyle(
                      color: AppColors.blueContainerColor,
                      fontSize: 17.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    children: [
                      Text(
                        'Small (less than 1,000 sq ft)',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Medium (1,000 - 5,000 sq ft)',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        ' Large (5,000 - 10,000 sq ft)',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        ' Very large (10,000 - 15,000 sq ft)',
                        style: TextStyle(
                          color:AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily:AppFonts.inter,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),

                  SizedBox(height: 28.h,),

                  Container(
                    height: 56.h,
                    decoration: ShapeDecoration(
                      color: AppColors.blueButtonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Apply',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 15.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w500,

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
      },
    );
  }



}
