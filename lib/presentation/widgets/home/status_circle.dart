import 'dart:async';

import 'package:animated_social_media_app_ui/models/status_model.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/home/status_card.dart';
import 'package:flutter/material.dart';

class StatusCircle extends StatefulWidget {
  const StatusCircle({super.key});

  @override
  State<StatusCircle> createState() => _StatusCircleState();
}

class _StatusCircleState extends State<StatusCircle> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<StatusModel> _items = StatusModel.stories;
  final Duration _animationDuration = const Duration(milliseconds: 300);

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
    return Container(
      height: 92,
      margin: EdgeInsets.only(left: 10),
      child: AnimatedList(
        key: _listKey,
        initialItemCount: 0,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index, animation) {
          return _buildItem(index, animation);
        },
      ),
    );
  }

  Widget _buildItem(int index, Animation<double> animation) {
    final status = _items[index];

    return FadeTransition(
      opacity: animation,
      child: StatusCard(status: status, ),
    );
  }
}



