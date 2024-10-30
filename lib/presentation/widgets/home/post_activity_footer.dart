import 'dart:ui';

import 'package:animated_social_media_app_ui/utils/static/app_images.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/post_model.dart';

class PostActivityFooter extends StatelessWidget {
  const PostActivityFooter({
    super.key, required this.postModel,
  });
  final PostModel postModel;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, bottom: 12, right: 12),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: 0,
            left: 1,
            right: 0,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(
                height: 47,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 47,
            padding: const EdgeInsets.only(
              bottom: 12,
              top: 11,
              left: 22,
              right: 22,
            ),
            decoration: BoxDecoration(
              color: AppColors.kBlackColor.withOpacity(0.5),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(AppImages.comments),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${postModel.comments}',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(AppImages.heart),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${postModel.likes}',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(AppImages.send),
                    ),
                    const SizedBox(width: 8),
                    SvgPicture.asset(AppImages.save),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}