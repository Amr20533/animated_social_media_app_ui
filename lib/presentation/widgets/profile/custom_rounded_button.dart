import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    super.key,
    required this.text,
    this.textColor = Colors.white,
    this.width = 120,
    this.height = 40,
    required this.color,
    this.shadowColor = AppColors.kPrimaryColor,
  });
  final double width, height;
  final String text;
  final Color textColor, color, shadowColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow:AppColors.customBoxShadow(shadowColor),
        ),
        child: Text(text, style: Theme.of(context).textTheme.titleSmall!.copyWith(color: textColor, fontWeight: FontWeight.w400, fontSize: 13),)
    );
  }
}
