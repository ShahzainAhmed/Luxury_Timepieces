import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxury_timepieces/resources/app_assets.dart';
import 'package:luxury_timepieces/resources/app_colors.dart';
import 'package:luxury_timepieces/resources/app_typography.dart';

class Tile extends StatelessWidget {
  final VoidCallback onTap;
  // final TileModel smallTileModel;
  const Tile({
    super.key,
    // required this.smallTileModel,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150.h,
        width: 150.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.kBlackColor.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "\$",
                          style: AppTypography.kExtraLight20
                              .copyWith(color: AppColors.kGreyColor),
                        ),
                        TextSpan(
                          text: "450",
                          style: AppTypography.kBold20
                              .copyWith(color: AppColors.kGreyColor),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Text("Chronograph", style: AppTypography.kLight12),
                ),
                SizedBox(height: 10.h)
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 80,
              child: Image.asset(AppAssets.kWatch1, height: 180.h),
            ),
          ],
        ),
      ),
    );
  }
}
