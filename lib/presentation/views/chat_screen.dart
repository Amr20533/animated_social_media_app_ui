import 'package:animated_social_media_app_ui/cubits/chat_cubit.dart';
import 'package:animated_social_media_app_ui/models/message_model.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/chat/chat_background.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/chat/chat_bubble.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/chat/chat_footer.dart';
import 'package:animated_social_media_app_ui/presentation/widgets/chat/chat_header_info.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return BlocProvider(
        create: (context) => ChatCubit([]),
      child: BlocConsumer<ChatCubit, List<Message>>(
          listener: (context, states) {
            // for (int i = 0; i < states.length; i++) {
            //   states.currentState?.insertItem(i);
            // }
           },
            builder: (context, states) {
            return Scaffold(
              body: ChatBackground(
                size: size,
                child: Column(
                  children: [
                    const ChatHeaderInfo(),
                    const SizedBox(height: 20,),
                    Divider(height: 1, endIndent: 10, color: AppColors.kDividerTextColor,),
                    const SizedBox(height: 10,),
                    Expanded(
                      flex: 8,
                      child:BlocConsumer<ChatCubit, List<Message>>(
                      listener: (context, states) {
                      },
                      builder: (context, states) {
                        final cubit = context.read<ChatCubit>();

                        return AnimatedList(
                          key: cubit.listKey,
                          padding: EdgeInsets.zero,
                          controller: cubit.scrollController,
                          initialItemCount: 0,
                          itemBuilder: (context, index, animation) {
                            return _buildAnimatedBubble(cubit.messages[index], animation);
                          },
                        );
                      }
                    )
                  ),
                    const SizedBox(height: 20,),
                    const Expanded(
                      flex: 1,
                      child: ChatFooter(),
                    )
                  ],
                ),
              ),

            );

         },
       )
    );



  }

  Widget _buildAnimatedBubble(Message message, Animation<double> animation) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.5, end: 1.0).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        ),
      ),
      child: FadeTransition(
        opacity: animation,
          child: ChatBubble(message: message),
      ),
    );
  }
}





