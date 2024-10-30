import 'package:animated_social_media_app_ui/presentation/widgets/chat/custom_circular_button.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/profile/gallery_card.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/profile/profile_image_body.dart';
import 'package:animated_social_media_app_ui/utils/static/app_images.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Stack(
          children: [
            Image.asset(AppImages.wallpaper, height: size.height * 0.31,fit: BoxFit.cover,),
            ProfileImageBody(size: size),
            Positioned(
              top: size.height * 0.057,
              child: Container(
                width: size.width,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCircularButton(onTap: (){}, icon: AppImages.arrowBack, color: Colors.white,),
                    CustomCircularButton(onTap: (){}, icon: AppImages.message, color: Colors.white,),
                  ],
                ),
              ),
            ),
            const GalleryCard(),
          ],
        )
    );
    }
}






