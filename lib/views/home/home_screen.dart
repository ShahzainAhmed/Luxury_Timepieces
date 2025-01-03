import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_timepieces/models/tile_model.dart';
import 'package:luxury_timepieces/resources/app_colors.dart';
import 'package:luxury_timepieces/resources/app_typography.dart';
import 'package:luxury_timepieces/routes/app_routes.dart';
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
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 300),
                  child: Text(
                    "Find your watch on",
                    style: AppTypography.kBold28
                        .copyWith(color: AppColors.kGreyColor),
                  ),
                ),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 400),
                  child: Text(
                    "The Largest Marketplace for \nLuxury Watches",
                    style: AppTypography.kLight16
                        .copyWith(color: AppColors.kGreyColor.withOpacity(0.7)),
                  ),
                ),
                SizedBox(height: 120.h),
                GridView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: productTileList.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // mainAxisExtent: 300,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.w,
                    mainAxisSpacing: 120.h,
                  ),
                  itemBuilder: (context, index) {
                    return FadeInUp(
                      controller: (controller) => controller = controller,
                      delay: const Duration(milliseconds: 500),
                      child: ProductTile(
                        productTileModel: productTileList[index],
                        onTap: () {
                          Get.toNamed(
                            AppRoutes.detailScreen,
                            arguments: productTileList[index],
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
