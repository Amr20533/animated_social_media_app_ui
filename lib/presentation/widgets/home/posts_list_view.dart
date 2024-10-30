import 'dart:async';

import 'package:animated_social_media_app_ui/models/post_model.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/home/post_card.dart';
import 'package:flutter/material.dart';

class PostsListView extends StatefulWidget {
  const PostsListView({
    super.key,
  });

  @override
  State<PostsListView> createState() => _PostsListViewState();
}

class _PostsListViewState extends State<PostsListView> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<PostModel> _items = PostModel.posts;
  final Duration _animationDuration = const Duration(seconds: 6);

  @override
  void initState() {
    super.initState();
    Future.delayed(_animationDuration, () {
      _addItemsWithDelay();
    });
  }

  void _addItemsWithDelay() {
    for (int i = 0; i < _items.length; i++) {
      Timer(Duration(milliseconds: i * 1200), () {
        _listKey.currentState?.insertItem(i);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: _listKey,
      padding: EdgeInsets.zero,
      initialItemCount: 0,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index, animation) {
        return _buildItem(index, animation);
      },
    );
  }
  Widget _buildItem(int index, Animation<double> animation) {
    final post = _items[index];

    return FadeTransition(
      opacity: animation,
        child: PostCard(postModel: post),
    );
  }

}
