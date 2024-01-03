import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/services_provider/provider_add_skillls_screen.dart';



class ProviderSkillScreen extends StatefulWidget {
  const ProviderSkillScreen({Key? key}) : super(key: key);

  @override
  State<ProviderSkillScreen> createState() => _ProviderSkillScreenState();
}

class _ProviderSkillScreenState extends State<ProviderSkillScreen> {
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
                      'My Skills',
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
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset("assets/svg/plus-circles.svg"),
                    SizedBox(width: 5.w,),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AddProviderSkills()),);
                      },
                      child: Text(
                        'Add skill',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.blueButtonColor,
                          fontSize: 12.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  //width: 338,
                  height: 70.h,
                  decoration: ShapeDecoration(
                    color: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/Icon-home.svg"),
                        SizedBox(width: 15.w,),
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
                        const Spacer(),
                        Text(
                          '\$120.00',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color:AppColors.blueButtonColor,
                            fontSize: 22.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,

                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  //width: 338,
                  height: 70.h,
                  decoration: ShapeDecoration(
                    color: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/cleaning.svg"),
                        SizedBox(width: 15.w,),
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
                        const Spacer(),
                        Text(
                          '\$90.00',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color:AppColors.blueButtonColor,
                            fontSize: 22.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,

                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  //width: 338,
                  height: 70.h,
                  decoration: ShapeDecoration(
                    color: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/paint.svg"),
                        SizedBox(width: 15.w,),
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
                        const Spacer(),
                        Text(
                          '\$150.00',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color:AppColors.blueButtonColor,
                            fontSize: 22.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,

                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  //width: 338,
                  height: 70.h,
                  decoration: ShapeDecoration(
                    color: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/laundry.svg"),
                        SizedBox(width: 15.w,),
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
                        const Spacer(),
                        Text(
                          '\$45.00',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color:AppColors.blueButtonColor,
                            fontSize: 22.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,

                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  //width: 338,
                  height: 70.h,
                  decoration: ShapeDecoration(
                    color: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/repair.svg"),
                        SizedBox(width: 15.w,),
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
                        const Spacer(),
                        Text(
                          '\$145.00',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color:AppColors.blueButtonColor,
                            fontSize: 22.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,

                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  //width: 338,
                  height: 70.h,
                  decoration: ShapeDecoration(
                    color: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/van.svg"),
                        SizedBox(width: 15.w,),
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
                        const Spacer(),
                        Text(
                          '\$65.00',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color:AppColors.blueButtonColor,
                            fontSize: 22.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,

                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  //width: 338,
                  height: 70.h,
                  decoration: ShapeDecoration(
                    color: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/plumbing.svg"),
                        SizedBox(width: 15.w,),
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
                        const Spacer(),
                        Text(
                          '\$136.00',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color:AppColors.blueButtonColor,
                            fontSize: 22.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,

                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  //width: 338,
                  height: 70.h,
                  decoration: ShapeDecoration(
                    color: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/labour.svg"),
                        SizedBox(width: 15.w,),
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
                        const Spacer(),
                        Text(
                          '\$68.00',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color:AppColors.blueButtonColor,
                            fontSize: 22.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,

                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),





              ],
            ),
          ),
        ),
      ),
    );
  }
}
