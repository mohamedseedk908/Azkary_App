import 'package:azkary_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import '../../../../core/function/navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 2),
        (){
        customNavigate(context,"/NavBarWidget");
        }
    );
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AppAssets.splashScreen,fit: BoxFit.fill,),
      ),
    );
  }
}
