import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/Admin/Admin_login_screen.dart';
import 'package:handyman/view/login_screen.dart';
import 'package:handyman/view/services_provider/provider_sign_in_screen.dart';



class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Spacer(),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),);
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
                    'User',
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
            SizedBox(height: 20.h,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ServiceProviderLogin()),);
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
                    'Service Provider',
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
            SizedBox(height: 20.h,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AdminLogin()),);
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
                    'Admin',
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
            Spacer(),
          ],
        ),
      ),
    );
  }
}
