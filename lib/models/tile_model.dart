import 'package:luxury_timepieces/resources/app_assets.dart';

class ProductTileModel {
  final String price;
  final String name;
  final String image;
  final String description;
  final String brand;
  ProductTileModel({
    required this.price,
    required this.name,
    required this.image,
    required this.description,
    required this.brand,
  });
}

List productTileList = [
  ProductTileModel(
    brand: "Rolex",
    price: "49,530",
    name: "Daytona",
    image: AppAssets.kWatch5,
    description:
        "The Rolex Cosmograph Daytona, introduced in 1963, was designed to meet the demands of professional racing drivers. With its highly reliable chronograph and bezel with tachymetric scale, it allows drivers to perfectly measure average speeds up to 400 kilometers or miles per hour, as they choose. An icon eternally joined in name and function to the high-performance world of motor sport.",
  ),
  ProductTileModel(
    brand: "Hublot",
    price: "41,600",
    name: "Big Bang",
    image: AppAssets.kWatch2,
    description:
        "The Big Bang collection embodies the core values of Hublot: innovation, avant-garde and a pioneering spirit. The avant-garde of materials and the fusion of styles is more present than ever in the Big Bang collection. The Big Bang collection is the perfect fusion of tradition and innovation.",
  ),
  ProductTileModel(
    brand: "Rolex",
    price: "47,480",
    name: "Day-Date",
    image: AppAssets.kWatch3,
    description:
        "The Rolex Day-Date made its debut in 1956. Available only in 18 ct gold or platinum, it was the first wristwatch to display the date and day of the week spelt out in full in a window on the dial. With the President bracelet, originally created specially for it, the Day-Date continues to be the watch par excellence of influential people.",
  ),
  ProductTileModel(
    brand: "Tag Heuer",
    price: "21,300",
    name: "Chronograph",
    image: AppAssets.kWatch1,
    description:
        "The Oyster Perpetual Cosmograph Daytona is the ultimate tool watch for those with a passion for driving and speed. Introduced in 1963, the Cosmograph Daytona was designed to meet the demands of professional racing drivers. It is an icon forever joined in name and function to the high-performance world of motor sport.",
  ),
  ProductTileModel(
    brand: "Rolex",
    price: "47,480",
    name: "Daytona",
    image: AppAssets.kWatch4,
    description:
        "The Rolex Cosmograph Daytona, introduced in 1963, was designed to meet the demands of professional racing drivers. With its highly reliable chronograph and bezel with tachymetric scale, it allows drivers to perfectly measure average speeds up to 400 kilometers or miles per hour, as they choose. An icon eternally joined in name and function to the high-performance world of motor sport.",
  ),
  ProductTileModel(
    brand: "Tag Heuer",
    price: "19,400",
    name: "Chronograph",
    image: AppAssets.kWatch6,
    description:
        "The Oyster Perpetual Cosmograph Daytona is the ultimate tool watch for those with a passion for driving and speed. Introduced in 1963, the Cosmograph Daytona was designed to meet the demands of professional racing drivers. It is an icon forever joined in name and function to the high-performance world of motor sport.",
  ),
];
