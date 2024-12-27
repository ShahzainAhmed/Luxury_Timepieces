import 'package:luxury_timepieces/resources/app_assets.dart';

class TileModel {
  final String price;
  final String name;
  final String image;
  TileModel({
    required this.price,
    required this.name,
    required this.image,
  });
}

List tileModelList = [
  TileModel(
    price: "49,530",
    name: "Daytona",
    image: AppAssets.kWatch5,
  ),
  TileModel(
    price: "41,600",
    name: "Big Bang",
    image: AppAssets.kWatch2,
  ),
  TileModel(
    price: "47,480",
    name: "Day-Date",
    image: AppAssets.kWatch3,
  ),
  TileModel(
    price: "21,300",
    name: "Chronograph",
    image: AppAssets.kWatch1,
  ),
  TileModel(
    price: "47,480",
    name: "Daytona",
    image: AppAssets.kWatch4,
  ),
  TileModel(
    price: "19,400",
    name: "Chronograph",
    image: AppAssets.kWatch6,
  ),
];
