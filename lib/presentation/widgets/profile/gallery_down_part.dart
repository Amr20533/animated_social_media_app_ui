import 'package:animated_social_media_app_ui/utils/static/app_images.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';

class GalleryDownPart extends StatefulWidget {
  const GalleryDownPart({
    super.key,
  });

  @override
  State<GalleryDownPart> createState() => _GalleryDownPartState();
}

class _GalleryDownPartState extends State<GalleryDownPart> {
  double _opacity = 0.0;
  double _secondOpacity = 0.0;
  double _thirdOpacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        _opacity = 1.0;
      });
    });
    Future.delayed(const Duration(seconds: 8), () {
      setState(() {
        _secondOpacity = 1.0;
      });
    });
    Future.delayed(const Duration(seconds: 12), () {
      setState(() {
        _thirdOpacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: AnimatedOpacity(
              opacity: _thirdOpacity,
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.kSecondaryGalleryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  ),
                  image: const DecorationImage(
                    image: AssetImage(AppImages.gallery4),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.kSecondaryGalleryColor,
                  image: const DecorationImage(
                    image: AssetImage(AppImages.gallery5),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: AnimatedOpacity(
              opacity: _secondOpacity,
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.kSecondaryGalleryColor,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(40),
                  ),
                  image: const DecorationImage(
                    image: AssetImage(AppImages.gallery6),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
