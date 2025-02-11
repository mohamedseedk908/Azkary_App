import 'package:azkary_app/core/routs/app_router.dart';
import 'package:azkary_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Azkary extends StatelessWidget {
  const Azkary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp.router(
          locale: Locale('ar'), // تعيين اللغة للتطبيق,
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
              scaffoldBackgroundColor: AppColors.primaryColor
          ),
          routerConfig: router,
        );
      },
    );
  }
}


