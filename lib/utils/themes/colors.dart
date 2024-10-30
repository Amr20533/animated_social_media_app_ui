import 'package:flutter/material.dart';

class AppColors{
  static const Color kPrimaryColor = Color(0xFF5790DF);
  static const Color kChatContainerColor = Color(0xFFE6EEFA);
  static const Color kDarkBlueColor = Color(0xFF093D89);
  static const Color kLightTextColor = Color(0xFF6C7A9C);
  static Color kDividerTextColor = const Color(0xFF000000).withOpacity(0.15);
  static const Color kBlackColor =  Color(0xFF000000);
  static Color kBottomNavColor =  kPrimaryColor.withOpacity(0.60);
  static Color kPrimaryShadowColor =  kPrimaryColor.withOpacity(0.5);
  static Color kSecondaryShadowColor =  kBlackColor.withOpacity(0.25);
  static Color kPrimaryGalleryColor =  const Color(0xFFA599CA).withOpacity(0.60);
  static Color kSecondaryGalleryColor =  const Color(0xFFC4C4C4).withOpacity(0.60);

  static LinearGradient kNavBarGradient =  LinearGradient(
    colors: [
      kBlackColor.withOpacity(0),
      kBlackColor.withOpacity(0.1),
      kBlackColor.withOpacity(0),
    ],
    stops: const [0.0, 0.66, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static LinearGradient kFloatingButtonGradient =  LinearGradient(
    colors: [
      kBlackColor.withOpacity(.15),
      kBlackColor.withOpacity(0),
    ],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );


  static List<BoxShadow> customBoxShadow(Color color) => [
    BoxShadow(
    color: color,
    offset: const Offset(0, 10),
    blurRadius: 20,
    ),
  ];
}