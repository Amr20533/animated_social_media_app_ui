import 'dart:ui';

import 'package:animated_social_media_app_ui/cubits/main_cubit.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/main/custom_nav_bar.dart';
import 'package:animated_social_media_app_ui/utils/static/app_images.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => MainCubit(),
      child: BlocConsumer<MainCubit, int>(
          listener: (context, states) {},
          builder: (context, states){
            final cubit = context.read<MainCubit>();

            return Scaffold(
              // extendBody: true,
              body: PageView.builder(
                controller: PageController(initialPage: states),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cubit.screens.length,
                itemBuilder: (context, index) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: cubit.screens[states],
                  );
                },
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              floatingActionButton: FloatingActionButton(
                onPressed: (){},
                shape: const CircleBorder(),
                child: GestureDetector(
                    onTap: (){

                    },
                    child: Stack(
                      children: [
                        // SizedBox(
                        //   width: 68,height: 68,
                        //   child: BackdropFilter(
                        //     filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        //     child: Container(
                        //       width: 68,
                        //       height: 68,
                        //       decoration: BoxDecoration(
                        //         shape: BoxShape.circle,
                        //         color: Colors.white.withOpacity(0.2),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Container(
                          width: 68,height: 68,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child:  Stack(
                            children: [
                              Container(
                                width: 68,
                                height: 68,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.2),
                                ),
                              ),
                              Container(
                                width: 68,height: 68,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: AppColors.kFloatingButtonGradient
                                ),
                                child: SvgPicture.asset(AppImages.add),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                ),

              ),

              bottomNavigationBar: const CustomBottomNavBar(),
            );
          }),
    );

  }
}
