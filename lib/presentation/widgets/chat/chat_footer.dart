import 'package:animated_social_media_app_ui/cubits/chat_cubit.dart';
import 'package:animated_social_media_app_ui/models/message_model.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/chat/custom_circular_button.dart';
import 'package:animated_social_media_app_ui/utils/static/app_images.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatFooter extends StatelessWidget {
  const ChatFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<ChatCubit, List<Message>>(
        listener: (context, states) {
    },
    builder: (context, states) {
      final cubit = context.read<ChatCubit>();

      return SizedBox(
        height: 44,
        child: Row(
          children: [
            CustomCircularButton(
              onTap: (){},
              icon: AppImages.camera,
            ),
            const Spacer(flex: 1,),

            Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      Expanded(child: TextField(
                        controller: cubit.messageController,
                        cursorColor: AppColors.kPrimaryColor,
                        onChanged: (value) => cubit.updateMessage(value),
                        decoration: InputDecoration(
                            hintText: 'Type a message..',
                            hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.kLightTextColor),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.only(left: 15)
                        ),
                      )),
                      CustomCircularButton(
                        onTap: (){
                          cubit.sendMessage(context);
                        },
                        icon: AppImages.send,
                      )
                    ],
                  ),
                )
            ),
          ],
        ),
      );

    }
    );
  }
}
