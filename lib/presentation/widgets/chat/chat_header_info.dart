import 'package:animated_social_media_app_ui/presentation/widgets/chat/custom_circular_button.dart';
import 'package:animated_social_media_app_ui/utils/static/app_images.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';

class ChatHeaderInfo extends StatelessWidget {
  const ChatHeaderInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColors.kPrimaryColor,
                  backgroundImage: AssetImage(AppImages.chatUser),
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Benjamin Moore',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: AppColors.kBlackColor,
                      ),
                    ),
                    Text(
                      'Last seen 11:44 AM',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: AppColors.kLightTextColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          CustomCircularButton(
            onTap: () {},
            icon: AppImages.close,
          ),
        ],
      ),
    );
  }
}
