import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/view/Admin/Admin_login_screen.dart';
import 'package:handyman/view/SignUp_screen.dart';
import 'package:handyman/view/account_details_screen.dart';
import 'package:handyman/view/add_task_screen.dart';
import 'package:handyman/view/create_new_password_screen.dart';
import 'package:handyman/view/dashborad_screen.dart';
import 'package:handyman/view/email_verification_screen.dart';
import 'package:handyman/view/forget_password_screen.dart';
import 'package:handyman/view/home_screen.dart';
import 'package:handyman/view/login_screen.dart';
import 'package:handyman/view/onBoarding_screen.dart';
import 'package:handyman/view/onborading2_screen.dart';
import 'package:handyman/view/profile2_screen.dart';
import 'package:handyman/view/profile_Screen.dart';
import 'package:handyman/view/services_list.dart';
import 'package:handyman/view/services_provider/provider_sign_in_screen.dart';
import 'package:handyman/view/start_screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find yutilsour UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Helpr',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const StartScreen(),
    );
  }
}