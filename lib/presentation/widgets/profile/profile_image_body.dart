import 'package:animated_social_media_app_ui/presentation/widgets/profile/following_followers_bar.dart';
import 'package:animated_social_media_app_ui/utils/static/app_images.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';

class ProfileImageBody extends StatelessWidget {
  const ProfileImageBody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height,
          margin: EdgeInsets.only(top: size.height * 0.21),
          decoration: const BoxDecoration(
            color: AppColors.kChatContainerColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              FollowingFollowersBar(size: size)
            ],
          ),
        ),
        Positioned(
          top: size.height * 0.158,
          right: 0,left: 0,
          child: CircleAvatar(
            radius: 100.77 / 2,
            backgroundColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(size.width * 0.015),
              child: const CircleAvatar(
                radius: 100.77 / 2,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(AppImages.profile),
              ),
            ),
          ),
        ),

      ],
    );
  }
}

