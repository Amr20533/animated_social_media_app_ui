
import 'package:animated_social_media_app_ui/presentation/widgets/home/custom_home_header.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/home/posts_list_view.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/home/status_circle.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
            flex:1,
            child: CustomHomeHeader()),
        SizedBox(height: 20,),
        Flexible(child: StatusCircle()),
        SizedBox(height: 30,),
        Expanded(
            flex:5,
            child: PostsListView())

      ],
    );
  }
}







