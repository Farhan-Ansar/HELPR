import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';


class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
                    'Account Detail',
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
              SizedBox(height: 40.h,),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Jordon.Kyle',
                  style: TextStyle(
                    color: AppColors.profileSubTextColor,
                    fontSize: 18.sp,
                    fontFamily: AppFonts.inter,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
              SizedBox(height: 30.h,),
              Row(
                children: [
                  SizedBox(width: 16.w,),
                  Text(
                    'Name',
                    style: TextStyle(
                      color:AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 100.w,),
                  Text(
                    'Jordon.Kyle',
                    style: TextStyle(
                      color: Color(0xFF718092),
                      fontSize: 16.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h,),
              Row(
                children: [
                  SizedBox(width: 16.w,),
                  Text(
                    'Email',
                    style: TextStyle(
                      color:AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 35.w,),
                  Text(
                    'mana.jandran@gmail.com',
                    style: TextStyle(
                      color: Color(0xFF718092),
                      fontSize: 16.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h,),
              Row(
                children: [
                  SizedBox(width: 16.w,),
                  Text(
                    'Contact',
                    style: TextStyle(
                      color:AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 35.w,),
                  Text(
                    '+6755454444343',
                    style: TextStyle(
                      color: Color(0xFF718092),
                      fontSize: 16.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h,),
              Row(
                children: [
                  SizedBox(width: 16.w,),
                  Text(
                    'Postcode',
                    style: TextStyle(
                      color:AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 35.w,),
                  Text(
                    'LT4590',
                    style: TextStyle(
                      color: Color(0xFF718092),
                      fontSize: 16.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h,),
              Row(
                children: [
                  SizedBox(width: 16.w,),
                  Text(
                    'Country',
                    style: TextStyle(
                      color:AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 35.w,),
                  Text(
                    'GB',
                    style: TextStyle(
                      color: Color(0xFF718092),
                      fontSize: 16.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}
