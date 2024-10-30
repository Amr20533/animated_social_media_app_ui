import 'package:animated_social_media_app_ui/utils/static/app_images.dart';

class PostModel {
  final String userProfile;
  final String name;
  final String uid;
  final String postImage;
  final int comments;
  final int likes;
  PostModel({required this.userProfile, required this.name, required this.uid, required this.postImage, required this.comments, required this.likes});


  static List<PostModel> posts = [
    PostModel(
        userProfile: AppImages.story_2,
        name: "Claire Dangais",
        uid: "@ClaireD15",
        postImage: AppImages.post_1,
        comments: 10,
        likes: 122),
    PostModel(
        userProfile: AppImages.story_1,
        name: "Farida Smith",
        uid: "@SmithFa",
        postImage: AppImages.post_2,
        comments: 20,
        likes: 453),
  ];


}

