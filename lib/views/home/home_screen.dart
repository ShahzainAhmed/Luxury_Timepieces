import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxury_timepieces/models/tile_model.dart';
import 'package:luxury_timepieces/resources/app_colors.dart';
import 'package:luxury_timepieces/resources/app_typography.dart';
import 'package:luxury_timepieces/views/home/widgets/tiles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: AppColors.kBackgroundColor,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: EdgeInsets.only(
                right: 20.w,
              ),
              child: const Icon(CupertinoIcons.search,
                  color: AppColors.kBlackColor),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find your watch on",
                  style: AppTypography.kBold28
                      .copyWith(color: AppColors.kGreyColor),
                ),
                Text(
                  "The Largest Marketplace for \nLuxury Watches",
                  style: AppTypography.kLight16
                      .copyWith(color: AppColors.kGreyColor.withOpacity(0.7)),
                ),
                SizedBox(height: 120.h),
                GridView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: tileModelList.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.w,
                    mainAxisSpacing: 120.h,
                  ),
                  itemBuilder: (context, index) {
                    return Tile(
                      tileModel: tileModelList[index],
                      onTap: () {},
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
