import 'package:luxury_timepieces/resources/app_assets.dart';

class ProductTileModel {
  final String price;
  final String name;
  final String image;
  ProductTileModel({
    required this.price,
    required this.name,
    required this.image,
  });
}

List productTileList = [
  ProductTileModel(
    price: "49,530",
    name: "Daytona",
    image: AppAssets.kWatch5,
  ),
  ProductTileModel(
    price: "41,600",
    name: "Big Bang",
    image: AppAssets.kWatch2,
  ),
  ProductTileModel(
    price: "47,480",
    name: "Day-Date",
    image: AppAssets.kWatch3,
  ),
  ProductTileModel(
    price: "21,300",
    name: "Chronograph",
    image: AppAssets.kWatch1,
  ),
  ProductTileModel(
    price: "47,480",
    name: "Daytona",
    image: AppAssets.kWatch4,
  ),
  ProductTileModel(
    price: "19,400",
    name: "Chronograph",
    image: AppAssets.kWatch6,
  ),
];
