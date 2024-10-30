import 'package:animated_social_media_app_ui/presentation/widgets/profile/gallery_down_part.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/profile/gallery_upper_part.dart';
import 'package:flutter/material.dart';

class GalleryCard extends StatefulWidget {
  const GalleryCard({
    super.key,
  });

  @override
  State<GalleryCard> createState() => GalleryCardState();
}

class GalleryCardState extends State<GalleryCard> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: double.infinity,
            height: size.height,
            margin: EdgeInsets.only(top: size.height * 0.529),
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(45),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.529,
          left: 0,right: 0,
          child: Container(
            width: double.infinity,
            height: size.height - (size.height * 0.529),
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(45),
            ),
            child: const Column(
              children: [
                Expanded(child: GalleryUpperPart(),),
                SizedBox(height: 10,),
                Expanded(child: GalleryDownPart(),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}