import 'package:azkary_app/feature/azkar/presentation/views/azkar_screen.dart';
import 'package:azkary_app/feature/favorit/presentation/views/favorit_screen.dart';
import 'package:azkary_app/feature/home/presentation/views/home_screen.dart';
import 'package:azkary_app/feature/settings/presentation/views/setings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
PersistentTabController _controller = PersistentTabController();
class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});


  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {

  @override
  Widget build(BuildContext context) {
    return  PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: Colors.grey.shade900,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      navBarHeight: 70.h,
    );
  }
}

List<Widget> _buildScreens() {
  return [
    CalendarScreen(),
    AzkarScreen(),
    FavoritScreen(),
    SetingsScreen(),
  ];
}


List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.home),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.self_improvement ,),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.favorite),
    ), PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.settings),
    ),
  ];

}