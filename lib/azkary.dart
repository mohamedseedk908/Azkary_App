import 'package:azkary_app/core/routs/app_router.dart';
import 'package:azkary_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
class Azkary extends StatelessWidget {
  const Azkary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryColor
      ),
      routerConfig: router,
      locale: Locale('ar'), // تعيين اللغة للتطبيق
    );

  }
}


