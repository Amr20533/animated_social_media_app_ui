import 'package:animated_social_media_app_ui/presentation/widgets/chat/custom_circular_button.dart';
import 'package:animated_social_media_app_ui/utils/static/app_images.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, size.height * 0.057, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCircularButton(onTap: (){},
              color: AppColors.kChatContainerColor,
              icon: AppImages.camera2),
          Text('Explore', style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20, fontWeight: FontWeight.w600),),
          CustomCircularButton(
              onTap: (){

          },
              color: AppColors.kChatContainerColor,
              icon: AppImages.notification2),
        ],
      ),
    );
  }
}
