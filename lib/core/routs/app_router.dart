import 'package:go_router/go_router.dart';
import '../../feature/onBoarding/presentation/views/on_boarding_screen.dart';
import '../../feature/splash/presentation/views/splash_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: "/OnBoardingScreen",
      builder: (context, state) => OnBoardingScreen(),
    ),
  ],
);
