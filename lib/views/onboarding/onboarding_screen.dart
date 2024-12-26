import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:luxury_timepieces/resources/app_assets.dart';
import 'package:luxury_timepieces/resources/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.44,
            width: Get.width,
            child: Image.asset(AppAssets.kOnboarding, fit: BoxFit.cover),
          ),
          Image.asset(
            AppAssets.kLogo,
            width: Get.width * 0.55,
            height: Get.width * 0.55,
          )
        ],
      ),
    );
  }
}
