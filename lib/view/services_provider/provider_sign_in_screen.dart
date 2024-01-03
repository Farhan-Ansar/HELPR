import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/services_provider/provider_dashboard_screen.dart';



class ServiceProviderLogin extends StatefulWidget {
  const ServiceProviderLogin({Key? key}) : super(key: key);

  @override
  State<ServiceProviderLogin> createState() => _ServiceProviderLoginState();
}

class _ServiceProviderLoginState extends State<ServiceProviderLogin> {
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
              const Spacer(flex: 1),
              // SizedBox(height: 100.h,),
              Container(
                width: 70.w,
                height: 70.h,
                decoration: ShapeDecoration(
                  color: AppColors.darkGreyColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'HELPR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 28.sp,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Bring the best services to you',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.greyTitleColor,
                  fontSize: 15.sp,
                  fontFamily: AppFonts.inter,
                  fontWeight: FontWeight.w500,
                  height: 0.09,
                ),
              ),
              SizedBox(
                height: 76.h,
              ),
              Container(
                // width: 343,
                height: 56.h,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w,top: 5.h),
                  child: TextFormField(
                    style: TextStyle( // Set the text color here
                      color: AppColors.blackColor, // Change to the desired text color
                      fontSize: 15.sp,
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email or Phone Number',
                      hintStyle: TextStyle(
                        color: AppColors.greyTitleColor,
                        fontSize: 15.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                // width: 343,
                height: 56.h,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w,top: 5.h),
                  child: TextFormField(
                    style: TextStyle( // Set the text color here
                      color: AppColors.blackColor, // Change to the desired text color
                      fontSize: 15.sp,
                      fontFamily:AppFonts.inter,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: AppColors.greyTitleColor,
                          fontSize: 15.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: Icon(Icons.visibility_off_outlined)),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              InkWell(
                /*onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgetPasswordScreen()),);
                },*/
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: AppColors.blueButtonColor,
                      fontSize: 15.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProviderDashboard()),);
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
                      'Sign In',
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
                height: 30.h,
              ),
              Container(
                //width: 300.w,
                height: 56.h,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/google.png"),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Connect with Google',
                      style: TextStyle(
                        color: AppColors.greyTitleColor,
                        fontSize: 15.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              //SizedBox(height: 70.h,),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'You dont have an account?',
                      style: TextStyle(
                        color: AppColors.greyTitleColor,
                        fontSize: 15.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: ' Sign Up',
                      style: TextStyle(

                        color: Colors.blue, // Change the color to your preference
                        fontSize: 15.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
