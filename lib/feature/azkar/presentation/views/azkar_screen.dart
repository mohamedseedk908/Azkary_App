import 'package:azkary_app/core/utils/app_colors.dart';
import 'package:azkary_app/feature/azkar/presentation/widgets/azkar_alsbah.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AzkarScreen extends StatelessWidget {
  final List<Map<String, String>> azkarList = [
    {"title": "أذكار الصباح", "icon": "☀️"},
    {"title": "أذكار المساء", "icon": "🌙"},
    {"title": "أذكار النوم", "icon": "😴"},
    {"title": "أذكار الاستيقاظ", "icon": "⏰"},
    {"title": "أذكار الصلاة", "icon": "🕌"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Center(child: Text("الأذكار",style:
          TextStyle(fontSize: 50.sp),))),
        body: GridView.builder(
          padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.5, // نسبة الطول للعرض
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: azkarList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // فتح صفحة الذكر المحدد
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AzkarDetailsScreen(azkarList[index]["title"]!),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 4,
                color: AppColors.black,
                child: Center(
                  child: Text(
                    "${azkarList[index]["icon"]} ${azkarList[index]["title"]}",
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,color: AppColors.offWhite),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
