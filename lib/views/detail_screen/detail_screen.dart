import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_timepieces/models/tile_model.dart';
import 'package:luxury_timepieces/resources/app_assets.dart';
import 'package:luxury_timepieces/resources/app_colors.dart';
import 'package:luxury_timepieces/resources/app_typography.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late ProductTileModel productTileModel;

  @override
  void initState() {
    productTileModel = Get.arguments;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.arrow_back_ios_new),
        //     onPressed: () => Get.back(),
        //   )
        // ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                productTileModel.image,
                height: Get.height * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              productTileModel.brand,
              style:
                  AppTypography.kBold32.copyWith(color: AppColors.kGreyColor),
            ),
            Text(
              productTileModel.description,
              style:
                  AppTypography.kMedium12.copyWith(color: AppColors.kGreyColor),
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
