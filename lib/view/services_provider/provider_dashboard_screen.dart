import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/add_task_screen.dart';
import 'package:handyman/view/home_screen.dart';
import 'package:handyman/view/onBoarding_screen.dart';
import 'package:handyman/view/profile_Screen.dart';
import 'package:handyman/view/services_provider/provider_analytics_screen.dart';
import 'package:handyman/view/services_provider/provider_earning_screen.dart';
import 'package:handyman/view/services_provider/provider_get_hired_screen.dart';
import 'package:handyman/view/services_provider/provider_home2_screeen.dart';
import 'package:handyman/view/services_provider/provider_home3_screen.dart';
import 'package:handyman/view/services_provider/provider_performence_screen.dart';
import 'package:handyman/view/services_provider/provider_profile_screen.dart';
import 'package:handyman/view/services_provider/provider_reviews_screen.dart';
import 'package:handyman/view/services_provider/provider_task_details.dart';
import 'package:handyman/view/services_provider/provider_task_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';


class ProviderDashboard extends StatefulWidget {
  const ProviderDashboard({Key? key}) : super(key: key);

  @override
  State<ProviderDashboard> createState() => _ProviderDashboardState();
}

class _ProviderDashboardState extends State<ProviderDashboard> {

  final _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const ProviderHome2Screen(),
      const ProviderTaskScreen(),
      const ProviderGetHired(),
      const ProviderPerformance(),
      const ProviderProfileScreen(),

    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_outlined),
        title: ("Home"),
        activeColorPrimary: AppColors.blueContainerColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.task),
        title: ("Jobs"),
        activeColorPrimary: AppColors.blueContainerColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.search_outlined),
        title: ("Get Hired"),
        activeColorPrimary: AppColors.blueContainerColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.account_balance),
        title: ("Performance"),
        activeColorPrimary: AppColors.blueContainerColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_2_outlined),
        title: ("Profile"),
        activeColorPrimary: AppColors.blueContainerColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //  SystemNavigator.pop();
        return true;
        // Handle the back button press to exit the app
        // You can add a confirmation dialog if needed
        // Return true to allow exiting the app
      },
      child: PersistentTabView
        ( context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style6,
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true,
        decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25),),
        ),
      ),
    );
  }
}
