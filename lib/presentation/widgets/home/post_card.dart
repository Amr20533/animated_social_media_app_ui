import 'package:animated_social_media_app_ui/models/post_model.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/home/post_activity_footer.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key, required this.postModel,
  });
  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 352,
      margin: const EdgeInsets.fromLTRB(10,0,10,20),
      decoration: BoxDecoration(
        color: AppColors.kChatContainerColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child:Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColors.kPrimaryColor,
                  backgroundImage: AssetImage(postModel.userProfile),
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(postModel.name, style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w700, fontSize: 17, color: AppColors.kBlackColor),),
                    Text(postModel.uid, style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w300, fontSize: 15, color: AppColors.kLightTextColor),)

                  ],
                ),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 12, bottom: 12, right: 12),
                height: 268,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage(postModel.postImage)),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(postModel.postImage, fit: BoxFit.cover)),
                // child:  PostActivityFooter(postModel: postModel,),
              ),
              PostActivityFooter(postModel: postModel,),
            ],
          )

        ],
      ),
    );
  }
}