import 'package:animated_social_media_app_ui/presentation/views/chat_screen.dart';
import 'package:animated_social_media_app_ui/presentation/views/home_view.dart';
import 'package:animated_social_media_app_ui/presentation/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubit extends Cubit<int> {
  int selectedNav = 0;

  MainCubit() : super(0);

  void selectIndex(int index) {
    selectedNav = index;
    emit(selectedNav);
  }

  List<Widget> screens = [
    const HomeView(),
    ChatScreen(),
    const ProfileScreen(),
    Center(child: Container(),),
  ];
}