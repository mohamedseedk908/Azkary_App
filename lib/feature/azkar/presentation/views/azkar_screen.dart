import 'package:azkary_app/core/utils/app_colors.dart';
import 'package:azkary_app/feature/azkar/presentation/views/adhdhkar_almasa.dart';
import 'package:azkary_app/feature/azkar/presentation/views/adhdhkar_alnawm.dart';
import 'package:azkary_app/feature/azkar/presentation/views/adhdhkar_alsabah.dart';
import 'package:azkary_app/feature/azkar/presentation/views/adhdhkar_baed_alsalaa.dart';
import 'package:azkary_app/feature/azkar/presentation/views/adhkar_aliastiqaz.dart';
import 'package:azkary_app/feature/azkar/presentation/views/adhkar_alsala.dart';

import 'package:flutter/material.dart';

class AzkarScreen extends StatelessWidget {
  final List azkarList = [
    AdhdhkarAlmasa(),
    AdhdhkarAlnawm(),
    AdhdhkarAlsabah(),
    AdhkarAliastiqaz(),
    AdhkarAlsala(),
    AdhdhkarBaedAlsalaa(),
  ];
  final List<Map<String, String>> icon = [
    {"title": "أذكار الصباح", "icon": "☀️"},
    {"title": "أذكار المساء", "icon": "🌙"},
    {"title": "أذكار النوم", "icon": "😴"},
    {"title": "أذكار الاستيقاظ", "icon": "⏰"},
    {"title": "أذكار الصلاة", "icon": "🕌"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "الأذكار",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
        ),
        itemCount: azkarList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => (azkarList[index]!)));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              color: Colors.black,
              child: Center(
                child: Text(
                  "${icon[index]["icon"]} ${icon[index]["title"]}",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: AppColors.offWhite),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}




