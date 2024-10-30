import 'package:animated_social_media_app_ui/presentation/widgets/profile/custom_rounded_button.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/profile/typing_text.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/profile/underline_selectors.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';

class FollowingFollowersBar extends StatelessWidget {
  const FollowingFollowersBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10),
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.13),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 49,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('1k', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kBlackColor, fontWeight: FontWeight.w700, fontSize: 15),),
                    Text('Followers', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.kBlackColor, fontWeight: FontWeight.w400, fontSize: 13),)
                  ],
                ),
              ),
              SizedBox(
                height: 49,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('342', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kBlackColor, fontWeight: FontWeight.w700, fontSize: 15),),
                    Text('Following', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.kBlackColor, fontWeight: FontWeight.w400, fontSize: 13),)
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.015, bottom: size.height * 0.012),
            child: Text('@Catherine13', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kBlackColor, fontWeight: FontWeight.bold, fontSize: 15),),
          ),
          TypingText(
            text: 'My name is Catherine. I like dancing in the rain and travelling all around the world.',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: AppColors.kLightTextColor,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.7,
            ),
          ),
          const SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomRoundedButton(text: 'Follow',color: AppColors.kPrimaryColor,shadowColor: AppColors.kPrimaryShadowColor, ),
              CustomRoundedButton(text: 'Message',color: Colors.white,textColor: Colors.black, shadowColor: AppColors.kSecondaryShadowColor,),
            ],
          ),
          const UnderlineSelectors(),


        ],
      ),
    );
  }
}
