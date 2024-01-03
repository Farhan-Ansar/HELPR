import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/account_details_screen.dart';
import 'package:handyman/view/profile2_screen.dart';
import 'package:handyman/view/services_provider/provider_profile_details_screen.dart';

class ProviderProfileScreen extends StatefulWidget {
  const ProviderProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProviderProfileScreen> createState() => _ProviderProfileScreenState();
}

class _ProviderProfileScreenState extends State<ProviderProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
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
                          MaterialPageRoute(builder: (context) => const ProviderProfileAccountDetails()),);
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
                      'Helpr Profile',
                      style: TextStyle(
                        color: AppColors.profileSubTextColor,
                        fontSize: 18.sp,
                        fontFamily:AppFonts.inter,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 15.w,),
                    const InkWell(
                      /*onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context,) => const Profile2Screen()),);
                      },*/
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.profileSubTextColor,
                        size: 16,),
                    ),
                  ],
                ),
                SizedBox(height: 40.h,),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/calendar-day.svg"),
                    SizedBox(width: 15.w,),
                    Text(
                      'Sync calendar',
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
                    SvgPicture.asset("assets/svg/bull-horn.svg"),
                    SizedBox(width: 15.w,),
                    Text(
                      'Promote yourself',
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
                      'Password',
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
      ),
    );
  }
}
