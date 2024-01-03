import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/Admin/Admin_services_list_screen.dart';


class AdminServicesList extends StatefulWidget {
  const AdminServicesList({Key? key}) : super(key: key);

  @override
  State<AdminServicesList> createState() => _AdminServicesListState();
}

class _AdminServicesListState extends State<AdminServicesList> {
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
                'New Registration',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w600,

                ),
              ),),
              Tab(child: Text(
                'Approved Sellers',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w600,

                ),
              ),),

            ],
          ),
          title: Text(
            'Select a Helpr',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 18.sp,
              fontFamily: AppFonts.inter,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back,color: AppColors.blackColor,),
            onPressed: () {
              // Handle back arrow press
              Navigator.pop(context);
            },
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>const AdminServicesListDetails()),);
                      },
                      child: Container(
                        height: 149.h,
                        decoration: ShapeDecoration(
                          color: AppColors.whiteColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/Rectangle-ad1.png"),
                                  SizedBox(width: 13.w,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5.h,),
                                      Text(
                                        'Jordan S,',
                                        style: TextStyle(
                                          color:AppColors.blackColor,
                                          fontSize: 16.sp,
                                          fontFamily:AppFonts.inter,
                                          fontWeight: FontWeight.w700,

                                        ),
                                      ),
                                      SizedBox(height: 10.h,),
                                      Text(
                                        'Lorem ipsum lorem ipsum',
                                        style: TextStyle(
                                          color: Color(0xFF718092),
                                          fontSize: 14.sp,
                                          fontFamily: AppFonts.inter,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),


                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  Container(
                                    width: 90.w,
                                    height: 39.h,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF86363),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.r),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Decline',
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 12.sp,
                                          fontFamily: AppFonts.inter,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.w,),
                                  Container(
                                    width: 90.w,
                                    height: 39.h,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF29BB63),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.r),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Approved',
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 12.sp,
                                          fontFamily: AppFonts.inter,
                                          fontWeight: FontWeight.w700,
                                        ),
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
                    SizedBox(height: 10.h,),
                    Container(
                      height: 149.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/Rectangle-ad2.png"),
                                SizedBox(width: 13.w,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5.h,),
                                    Text(
                                      'Jordan S,',
                                      style: TextStyle(
                                        color:AppColors.blackColor,
                                        fontSize: 16.sp,
                                        fontFamily:AppFonts.inter,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
                                    Text(
                                      'Lorem ipsum lorem ipsum',
                                      style: TextStyle(
                                        color: Color(0xFF718092),
                                        fontSize: 14.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),


                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Container(
                                  width: 90.w,
                                  height: 39.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF86363),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Decline',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 12.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15.w,),
                                Container(
                                  width: 90.w,
                                  height: 39.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF29BB63),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Approved',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 12.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      height: 149.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/Rectangle-ad3.png"),
                                SizedBox(width: 13.w,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5.h,),
                                    Text(
                                      'Jordan S,',
                                      style: TextStyle(
                                        color:AppColors.blackColor,
                                        fontSize: 16.sp,
                                        fontFamily:AppFonts.inter,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
                                    Text(
                                      'Lorem ipsum lorem ipsum',
                                      style: TextStyle(
                                        color: Color(0xFF718092),
                                        fontSize: 14.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),


                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Container(
                                  width: 90.w,
                                  height: 39.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF86363),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Decline',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 12.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15.w,),
                                Container(
                                  width: 90.w,
                                  height: 39.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF29BB63),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Approved',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 12.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      height: 149.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/Rectangle-ad4.png"),
                                SizedBox(width: 13.w,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5.h,),
                                    Text(
                                      'Jordan S,',
                                      style: TextStyle(
                                        color:AppColors.blackColor,
                                        fontSize: 16.sp,
                                        fontFamily:AppFonts.inter,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
                                    Text(
                                      'Lorem ipsum lorem ipsum',
                                      style: TextStyle(
                                        color: Color(0xFF718092),
                                        fontSize: 14.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),


                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Container(
                                  width: 90.w,
                                  height: 39.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF86363),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Decline',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 12.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15.w,),
                                Container(
                                  width: 90.w,
                                  height: 39.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF29BB63),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Approved',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 12.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      height: 149.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/Rectangle-ad2.png"),
                                SizedBox(width: 13.w,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5.h,),
                                    Text(
                                      'Jordan S,',
                                      style: TextStyle(
                                        color:AppColors.blackColor,
                                        fontSize: 16.sp,
                                        fontFamily:AppFonts.inter,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
                                    Text(
                                      'Lorem ipsum lorem ipsum',
                                      style: TextStyle(
                                        color: Color(0xFF718092),
                                        fontSize: 14.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),


                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Container(
                                  width: 90.w,
                                  height: 39.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF86363),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Decline',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 12.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15.w,),
                                Container(
                                  width: 90.w,
                                  height: 39.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF29BB63),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Approved',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 12.sp,
                                        fontFamily: AppFonts.inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    //SizedBox(height: 10.h,),




                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      height: 95.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/Rectangle-ad1.png"),
                            SizedBox(width: 13.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Jordan S,',
                                  style: TextStyle(
                                    color:AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Text(
                                  'Lorem ipsum lorem ipsum',
                                  style: TextStyle(
                                    color: Color(0xFF718092),
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      height: 95.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/Rectangle-ad2.png"),
                            SizedBox(width: 13.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Mechiel,',
                                  style: TextStyle(
                                    color:AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Text(
                                  'Lorem ipsum lorem ipsum',
                                  style: TextStyle(
                                    color: Color(0xFF718092),
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      height: 95.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/Rectangle-ad3.png"),
                            SizedBox(width: 13.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Jahson,',
                                  style: TextStyle(
                                    color:AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Text(
                                  'Lorem ipsum lorem ipsum',
                                  style: TextStyle(
                                    color: Color(0xFF718092),
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      height: 95.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/Rectangle-ad4.png"),
                            SizedBox(width: 13.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Jordan S,',
                                  style: TextStyle(
                                    color:AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Text(
                                  'Lorem ipsum lorem ipsum',
                                  style: TextStyle(
                                    color: Color(0xFF718092),
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      height: 95.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/Rectangle-ad2.png"),
                            SizedBox(width: 13.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Jordan S,',
                                  style: TextStyle(
                                    color:AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Text(
                                  'Lorem ipsum lorem ipsum',
                                  style: TextStyle(
                                    color: Color(0xFF718092),
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      height: 95.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/Rectangle-ad3.png"),
                            SizedBox(width: 13.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Jordan S,',
                                  style: TextStyle(
                                    color:AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Text(
                                  'Lorem ipsum lorem ipsum',
                                  style: TextStyle(
                                    color: Color(0xFF718092),
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      height: 95.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/Rectangle-ad4.png"),
                            SizedBox(width: 13.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Jordan S,',
                                  style: TextStyle(
                                    color:AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Text(
                                  'Lorem ipsum lorem ipsum',
                                  style: TextStyle(
                                    color: Color(0xFF718092),
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      height: 95.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/Rectangle-ad1.png"),
                            SizedBox(width: 13.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Jordan S,',
                                  style: TextStyle(
                                    color:AppColors.blackColor,
                                    fontSize: 16.sp,
                                    fontFamily:AppFonts.inter,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Text(
                                  'Lorem ipsum lorem ipsum',
                                  style: TextStyle(
                                    color: Color(0xFF718092),
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),



                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
