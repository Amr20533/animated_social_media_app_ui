import 'package:animated_social_media_app_ui/utils/static/app_images.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';

class GalleryUpperPart extends StatefulWidget {
  const GalleryUpperPart({
    super.key,
  });

  @override
  State<GalleryUpperPart> createState() => _GalleryUpperPartState();
}

class _GalleryUpperPartState extends State<GalleryUpperPart> {

  double _opacity = 0.0;
  double _secondOpacity = 0.0;
  double _thirdOpacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _opacity = 1.0;
      });
    });
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        _secondOpacity = 1.0;
      });
    });
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        _thirdOpacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        Expanded(child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: double.infinity,
            height: size.height,
            decoration: BoxDecoration(
              color: AppColors.kPrimaryGalleryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
              ),
              image: const DecorationImage(
                image: AssetImage(AppImages.gallery1),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        ) ,
        const SizedBox(width: 10,),
        Expanded(
          child: Column(
            children: [
              Expanded(child: AnimatedOpacity(
                opacity: _thirdOpacity,
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
                child: Container(
                  width: double.infinity,
                  height: size.height,
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryGalleryColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(40),
                    ),
                    image: const DecorationImage(
                      image: AssetImage(AppImages.gallery2),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ),
              const SizedBox(height: 10,),
              Expanded(child: AnimatedOpacity(
                opacity: _secondOpacity,
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
                child: Container(
                  width: double.infinity,
                  height: size.height,
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryGalleryColor,
                    image: const DecorationImage(
                      image: AssetImage(AppImages.gallery3),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),),
            ],
          ),
        )
      ],
    );
  }
}
