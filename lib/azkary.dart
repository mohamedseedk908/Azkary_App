import 'package:azkary_app/core/routs/app_router.dart';
import 'package:flutter/material.dart';
class Azkary extends StatelessWidget {
  const Azkary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}


