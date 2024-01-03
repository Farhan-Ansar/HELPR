import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/account_details_screen.dart';
import 'package:handyman/view/profile2_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 10.h,),
              Text(
                'Profile',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 22.sp,
                  fontFamily:AppFonts.inter,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 50.h,),
              Row(
                children: [
                  SvgPicture.asset("assets/svg/user.svg"),
                  SizedBox(width: 15.w,),
                  Text(
                    'Account info',
                    style: TextStyle(
                      color: AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AccountDetails()),);
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.profileSubTextColor,
                      size: 16,),
                  ),
                ],
              ),
              SizedBox(height: 40.h,),
              Row(
                children: [
                  SvgPicture.asset("assets/svg/user-circle.svg"),
                  SizedBox(width: 15.w,),
                  Text(
                    'Become a Helpr',
                    style: TextStyle(
                      color: AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  InkWell(
                   /* onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context,) => const Profile2Screen()),);
                    },*/
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.profileSubTextColor,
                      size: 16,),
                  ),
                ],
              ),
              SizedBox(height: 40.h,),
              Row(
                children: [
                  SvgPicture.asset("assets/svg/comment.svg"),
                  SizedBox(width: 15.w,),
                  Text(
                    'Closing message',
                    style: TextStyle(
                      color: AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.profileSubTextColor,
                    size: 16,),
                ],
              ),
              SizedBox(height: 40.h,),
              Row(
                children: [
                  SvgPicture.asset("assets/svg/bid.svg"),
                  SizedBox(width: 15.w,),
                  Text(
                    'Payment',
                    style: TextStyle(
                      color: AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.profileSubTextColor,
                    size: 16,),
                ],
              ),
              SizedBox(height: 40.h,),
              Row(
                children: [
                  SvgPicture.asset("assets/svg/exclamation-triangle.svg"),
                  SizedBox(width: 15.w,),
                  Text(
                    'Support',
                    style: TextStyle(
                      color: AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.profileSubTextColor,
                    size: 16,),
                ],
              ),
              SizedBox(height: 40.h,),
              Row(
                children: [
                  SvgPicture.asset("assets/svg/lock-alt.svg"),
                  SizedBox(width: 15.w,),
                  Text(
                    'Change Password',
                    style: TextStyle(
                      color: AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.profileSubTextColor,
                    size: 16,),
                ],
              ),
              SizedBox(height: 40.h,),
              Row(
                children: [
                  SvgPicture.asset("assets/svg/minus-circle.svg"),
                  SizedBox(width: 15.w,),
                  Text(
                    'Logout',
                    style: TextStyle(
                      color: AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.profileSubTextColor,
                    size: 16,),
                ],
              ),
              SizedBox(height: 40.h,),
              Row(
                children: [
                  SvgPicture.asset("assets/svg/plus-circle.svg"),
                  SizedBox(width: 15.w,),
                  Text(
                    'About',
                    style: TextStyle(
                      color: AppColors.profileSubTextColor,
                      fontSize: 18.sp,
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.profileSubTextColor,
                    size: 16,),
                ],
              ),
              SizedBox(height: 40.h,),


            ],
          ),
        ),
      ),
    );
  }
}
