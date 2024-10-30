import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCircularButton extends StatelessWidget {
  const CustomCircularButton({
    super.key, required this.onTap, required this.icon,this.color = AppColors.kPrimaryColor,
  });
  final VoidCallback onTap;
  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 22,
        backgroundColor: color,
        child: SvgPicture.asset(icon),
      ),);
  }
}