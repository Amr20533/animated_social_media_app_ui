import 'package:animated_social_media_app_ui/models/status_model.dart';
import 'package:animated_social_media_app_ui/utils/static/app_images.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
    required this.status,
  });

  final StatusModel status;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: 70,
      height: 92,
      margin: EdgeInsets.only(right: size.width * 0.04),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 68,
            height: 68,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: AppColors.kPrimaryColor),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: status.name == 'You' ?  AssetImage(status.image) : NetworkImage(status.image),
              child: status.name == 'You' ? SvgPicture.asset(AppImages.add, color: Colors.white) : const SizedBox(),
            ),
          ),
          Text(
            status.name,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
