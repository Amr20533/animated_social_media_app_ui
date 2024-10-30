import 'package:animated_social_media_app_ui/cubits/main_cubit.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/main/nav_bar_icon.dart';
import 'package:animated_social_media_app_ui/utils/static/app_images.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, int>(
    listener: (context, states) {},
    builder: (context, states){
      final cubit = context.read<MainCubit>();
    return BottomAppBar(
      notchMargin: 12,
      shape: const CircularNotchedRectangle(),
      // height: 90,
      padding: EdgeInsets.zero,
      color: AppColors.kBottomNavColor,
      child: Container(
        width: 68,
        height: 68,
        decoration: BoxDecoration(
            gradient: AppColors.kNavBarGradient
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              NavBarIcon(
                onTap: (){
                  cubit.selectIndex(0);
                },
                isSelected: cubit.selectedNav == 0,
                icon: AppImages.home,
              ),
              const Spacer(flex: 1,),
              NavBarIcon(
                onTap: (){
                  cubit.selectIndex(1);

                },
                isSelected: cubit.selectedNav == 1,
                icon: AppImages.chat,
              ),
              const Spacer(flex: 3,),
              NavBarIcon(
                onTap: (){
                  cubit.selectIndex(2);

                },
                isSelected: cubit.selectedNav == 2,
                icon: AppImages.user,
              ),
              const Spacer(flex: 1,),
              NavBarIcon(
                onTap: (){
                  cubit.selectIndex(3);
                },
                isSelected: cubit.selectedNav == 3,
                icon: AppImages.send,
              ),
            ],),
        ),
      ),);
    }
  );
  }
}
