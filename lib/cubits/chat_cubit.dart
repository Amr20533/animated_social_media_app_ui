import 'package:animated_social_media_app_ui/models/message_model.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatCubit extends Cubit<List<Message>> {
  late TextEditingController messageController;
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  final Duration _animationDuration = const Duration(milliseconds: 300);
  final ScrollController scrollController = ScrollController();

  ChatCubit(super.initialState) {
    messageController = TextEditingController();
    Future.delayed(_animationDuration, () {
      _animateMessages();
    });
  }

  List<Message> messages = Message.messages;
  void updateMessage(String text) {
    emit(state);
  }




  void sendMessage(BuildContext context) {
    if (messageController.text.isNotEmpty) {
      final newMessage = Message(text: messageController.text, isMine: true);
      final updatedMessages = List<Message>.from(state)..add(newMessage);

      emit(updatedMessages);
      messageController.clear();

      Future.delayed(const Duration(milliseconds: 50), () {
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
      });

    } else {
      customSnackBar(context);
    }
  }

  void customSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        content: Text("Please Type a message.",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kPrimaryColor, fontSize: 16, fontWeight: FontWeight.w500),),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _animateMessages() {
    for (int i = 0; i < messages.length; i++) {
      Future.delayed(Duration(milliseconds: i * 500), () {
        listKey.currentState?.insertItem(i);
      });
    }
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
    emit([]);
  }


  @override
  Future<void> close() {
    messageController.dispose();
    return super.close();
  }
}