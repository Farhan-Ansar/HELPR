import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/onborading2_screen.dart';
import 'package:handyman/view/user_get_hired_screen.dart';


class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 27.h,
              ),
              Text(
                'Electrical Help',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 22.sp,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w700,

                ),
              ),
              SizedBox(
                height: 22.h,
              ),

              Text(
                'What is the Task Location ?',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 17.sp,
                  fontFamily:AppFonts.inter,
                  fontWeight: FontWeight.w600,


                ),
              ),


              SizedBox(
                height: 33.h,
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Street address',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 17.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                     // width: 311,
                      height: 50.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.w,),
                        child: TextFormField(
                          style: TextStyle( // Set the text color here
                            color: AppColors.blackColor, // Change to the desired text color
                            fontSize: 15.sp,
                            fontFamily:AppFonts.inter,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,


                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Optional unit',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 17.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      // width: 311,
                      height: 50.h,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.w,),
                        child: TextFormField(
                          style: TextStyle( // Set the text color here
                            color: AppColors.blackColor, // Change to the desired text color
                            fontSize: 15.sp,
                            fontFamily:AppFonts.inter,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,


                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),
              // SizedBox(height: 100.h,),




              InkWell(
                onTap: (){
                 Navigator.push(context,
                   MaterialPageRoute(builder: (context) => const UserGetHired()),);
                },
                child: Container(
                  // width: 343,
                  height: 56.h,
                  decoration: ShapeDecoration(
                    color: AppColors.blueButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 15.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              //SizedBox(height: 70.h,),


            ],
          ),
        ),
      ),
    );
  }
}
