import 'package:animated_social_media_app_ui/models/message_model.dart';
import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBubble extends StatelessWidget {
  final Message message;

  const ChatBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 294,
        ),
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        decoration: BoxDecoration(
          color: message.isMine ? AppColors.kPrimaryColor : Colors.white,
          borderRadius: message.isMine ? const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomLeft: Radius.circular(30),) : const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomRight: Radius.circular(30),),

        ),
        child: Text(
          message.text,
          style: GoogleFonts.roboto(
            color: message.isMine ? Colors.white : Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 15
          ),
        ),
      ),
    );
  }
}
