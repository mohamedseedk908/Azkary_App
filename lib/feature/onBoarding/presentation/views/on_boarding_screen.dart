import 'package:azkary_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../azkar/presentation/views/azkar_screen.dart';
import '../../../brightness/presentation/views/brightntion_screen.dart';
import '../../../favorit/presentation/views/favorit_screen.dart';
import '../../../home/presentation/views/home_screen.dart';
import '../../../settings/presentation/views/setings_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    CalendarScreen(),
    AzkarScreen(),
    FavoritScreen(),
    BrightntionScreen(),
    SetingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تطبيق الأذكار")),
      body: _screens[_selectedIndex], // عرض الصفحة المختارة
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.offWhite,
        unselectedItemColor: AppColors.lightGrey,
        selectedFontSize: 20,
        iconSize: 30,unselectedFontSize: 20,
        backgroundColor: AppColors.black,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _selectedIndex = index; // تحديث الصفحة عند النقر
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement),
            label: "أذكار",
            tooltip: "أذكار",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "المفضلة ",
            tooltip: "المفضلة",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.brightness_7),
            label: " التنبيهات",
            tooltip: "التنبيهات",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "الإعدادات ",
            tooltip: "الإعدادات",
          ),
        ],
      ),
    );
  }
}
