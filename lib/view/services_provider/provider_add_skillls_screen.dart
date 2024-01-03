import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handyman/Utils/colors.dart';


class AddProviderSkills extends StatefulWidget {
  const AddProviderSkills({Key? key}) : super(key: key);

  @override
  State<AddProviderSkills> createState() => _AddProviderSkillsState();
}

class _AddProviderSkillsState extends State<AddProviderSkills> {
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
                      'Add Skills',
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
                  height: 40.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/Icon-home.svg"),
                    SizedBox(width: 17.w,),
                    Text(
                      'Generally',
                      style: TextStyle(
                        color: AppColors.profileSubTextColor,
                        fontSize: 18.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 17.w,),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/cleaning.svg"),
                    SizedBox(width: 17.w,),
                    Text(
                      'Cleaning',
                      style: TextStyle(
                        color: AppColors.profileSubTextColor,
                        fontSize: 18.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 17.w,),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/paint.svg"),
                    SizedBox(width: 17.w,),
                    Text(
                      'Paint',
                      style: TextStyle(
                        color: AppColors.profileSubTextColor,
                        fontSize: 18.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 17.w,),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/laundry.svg"),
                    SizedBox(width: 17.w,),
                    Text(
                      'Landuriy',
                      style: TextStyle(
                        color: AppColors.profileSubTextColor,
                        fontSize: 18.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 17.w,),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),

                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/repair.svg"),
                    SizedBox(width: 17.w,),
                    Text(
                      'Repair',
                      style: TextStyle(
                        color: AppColors.profileSubTextColor,
                        fontSize: 18.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 17.w,),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/van.svg"),
                    SizedBox(width: 17.w,),
                    Text(
                      'Van',
                      style: TextStyle(
                        color: AppColors.profileSubTextColor,
                        fontSize: 18.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 17.w,),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),

                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/plumbing.svg"),
                    SizedBox(width: 17.w,),
                    Text(
                      'Plumbing',
                      style: TextStyle(
                        color: AppColors.profileSubTextColor,
                        fontSize: 18.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 17.w,),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),



                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/labour.svg"),
                    SizedBox(width: 17.w,),
                    Text(
                      'Labour',
                      style: TextStyle(
                        color: AppColors.profileSubTextColor,
                        fontSize: 18.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 17.w,),
                    const Icon(Icons.keyboard_arrow_down),
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
