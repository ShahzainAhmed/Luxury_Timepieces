import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_timepieces/resources/app_colors.dart';
import 'package:luxury_timepieces/routes/app_pages.dart';
import 'package:luxury_timepieces/routes/app_routes.dart';
import 'package:luxury_timepieces/views/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: AppRoutes.onboarding,
        getPages: AppPages.allPages,
        theme: ThemeData(
          appBarTheme:
              const AppBarTheme(backgroundColor: AppColors.kBackgroundColor),
        ),
        home: const OnboardingScreen(),
      ),
    );
  }
}
