import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxury_timepieces/resources/app_colors.dart';
import 'package:luxury_timepieces/resources/app_typography.dart';
import 'package:luxury_timepieces/views/home/widgets/tiles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find your watch on",
                style:
                    AppTypography.kBold28.copyWith(color: AppColors.kGreyColor),
              ),
              Text(
                "The Largest Marketplace for \nLuxury Watches",
                style: AppTypography.kLight16
                    .copyWith(color: AppColors.kGreyColor.withOpacity(0.7)),
              ),
              SizedBox(height: 110.h),
              Tile(onTap: () {}),
            ],
          ),
        ));
  }
}
