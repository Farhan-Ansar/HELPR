import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handyman/Utils/colors.dart';


class AdminServicesListDetails extends StatefulWidget {
  const AdminServicesListDetails({Key? key}) : super(key: key);

  @override
  State<AdminServicesListDetails> createState() => _AdminServicesListDetailsState();
}

class _AdminServicesListDetailsState extends State<AdminServicesListDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        backgroundColor:AppColors.backGroundColor,
        elevation: 0,
        title: Text(
          'Registration Detail',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 20.sp,
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            children: [
              Container(
                height: 518.h,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    children: [
                      Image.asset("assets/images/Rectangle-ad3.png"),
                      SizedBox(height: 20.h,),
                      Text(
                        'Jordon.Kyle',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.blueButtonColor,
                          fontSize: 22.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 35.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              color: Color(0xFF2F3138),
                              fontSize: 16.sp,
                              fontFamily:AppFonts.inter,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            'Jordon.Kyle',
                            style: TextStyle(
                              color: Color(0xFF718092),
                              fontSize: 16.sp,
                              fontFamily:AppFonts.inter,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 35.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              color: Color(0xFF2F3138),
                              fontSize: 16.sp,
                              fontFamily:AppFonts.inter,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            'mana.jandran@gmail.com',
                            style: TextStyle(
                              color: Color(0xFF718092),
                              fontSize: 16.sp,
                              fontFamily:AppFonts.inter,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 35.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Contact',
                            style: TextStyle(
                              color: Color(0xFF2F3138),
                              fontSize: 16.sp,
                              fontFamily:AppFonts.inter,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            '+6755454444343',
                            style: TextStyle(
                              color: Color(0xFF718092),
                              fontSize: 16.sp,
                              fontFamily:AppFonts.inter,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 35.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Postcode',
                            style: TextStyle(
                              color: Color(0xFF2F3138),
                              fontSize: 16.sp,
                              fontFamily:AppFonts.inter,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            'LT4590',
                            style: TextStyle(
                              color: Color(0xFF718092),
                              fontSize: 16.sp,
                              fontFamily:AppFonts.inter,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 35.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Country',
                            style: TextStyle(
                              color: Color(0xFF2F3138),
                              fontSize: 18.sp,
                              fontFamily:AppFonts.inter,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            'GB',
                            style: TextStyle(
                              color: Color(0xFF718092),
                              fontSize: 16.sp,
                              fontFamily:AppFonts.inter,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 35.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap:(){
                              showDialog(
                                context: context,
                                builder: (ctx) =>  AlertDialog(
                                  actions: [
                                   Padding(
                                     padding:  const EdgeInsets.all(8.0),
                                     child: Column(
                                       children: [
                                         Align(
                                           alignment: Alignment.topRight,
                                             child: IconButton(onPressed: (){
                                               Navigator.pop(context);
                                             }, icon: const Icon(Icons.close))),
                                         SvgPicture.asset("assets/svg/not-approved.svg"),
                                         SizedBox(height: 25.h,),
                                         Text(
                                           'Regrettably',
                                           textAlign: TextAlign.center,
                                           style: TextStyle(
                                             color: AppColors.blackColor,
                                             fontSize: 17.sp,
                                             fontFamily: AppFonts.inter,
                                             fontWeight: FontWeight.w700,
                                           ),
                                         ),
                                         SizedBox(height: 10.h,),
                                         Text(
                                           'your request has been\n declined.\n',
                                           textAlign: TextAlign.center,
                                           style: TextStyle(
                                             color: const Color(0xFF8F9BB3),
                                             fontSize: 15.sp,
                                             fontFamily: AppFonts.inter,
                                             fontWeight: FontWeight.w500,

                                           ),
                                         )
                                       ],
                                     ),
                                   ),
                                  ],

                                ),
                              );
                            },
                            child: Container(
                              width: 120.w,
                              height: 39.h,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF86363),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Decline',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20.w,),
                          InkWell(
                            onTap:(){
                              showDialog(
                                context: context,
                                builder: (ctx) =>  AlertDialog(
                                  actions: [
                                    Padding(
                                      padding:  const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: IconButton(onPressed: (){
                                                Navigator.pop(context);
                                              }, icon: const Icon(Icons.close))),
                                          SizedBox(height: 25.h,),
                                          Image.asset("assets/images/stamp.png"),
                                          SizedBox(height: 25.h,),
                                          Text(
                                            'Successful Approved',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: AppColors.blackColor,
                                              fontSize: 17.sp,
                                              fontFamily: AppFonts.inter,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(height: 10.h,),
                                          Text(
                                            'Your Registration has been \n approved now you can \n login into the app.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: const Color(0xFF8F9BB3),
                                              fontSize: 15.sp,
                                              fontFamily: AppFonts.inter,
                                              fontWeight: FontWeight.w500,

                                            ),
                                          ),
                                          SizedBox(height: 50.h,),
                                        ],
                                      ),
                                    ),
                                  ],

                                ),
                              );
                            },
                            child: Container(
                              width: 120.w,
                              height: 39.h,
                              decoration: ShapeDecoration(
                                color: Color(0xFF29BB63),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Approved',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
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



