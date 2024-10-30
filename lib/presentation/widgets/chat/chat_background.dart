import 'dart:ui';

import 'package:animated_social_media_app_ui/utils/static/app_images.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';

class ChatBackground extends StatelessWidget {
  const ChatBackground({
    super.key,
    required this.size, required this.child,
  });

  final Size size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.chatBackground, height: double.infinity,fit: BoxFit.fitHeight,),
        Container(
          width: double.infinity,
          height: size.height,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              margin: EdgeInsets.only(top: size.height * 0.1,),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Container(
                width: double.infinity,
                height: size.height,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  color:AppColors.kChatContainerColor,
                  borderRadius: BorderRadius.circular(45),
                ),
                child: child,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
