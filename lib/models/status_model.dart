import 'package:animated_social_media_app_ui/utils/static/app_images.dart';

class StatusModel {
  final String name;
  final String image;

  StatusModel({required this.name, required this.image});

  static List<StatusModel> stories = [
    StatusModel(name: "You", image: AppImages.profile),
    StatusModel(name: "Yussuf", image: "https://images.unsplash.com/photo-1729731321955-6316b2fe17f0?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    StatusModel(name: "Farida", image: "https://images.unsplash.com/photo-1729632604860-a99ebd0002a1?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    StatusModel(name: "Marie", image: "https://images.unsplash.com/photo-1726441205310-69282da4d13c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    StatusModel(name: "Claire", image: "https://images.unsplash.com/photo-1729379892088-86e7f59bc543?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
   ];


}

