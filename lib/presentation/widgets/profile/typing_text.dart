import 'dart:async';

import 'package:flutter/material.dart';

class TypingText extends StatefulWidget {
  final String text;
  final TextStyle style;

  const TypingText({super.key, required this.text, required this.style});

  @override
  TypingTextState createState() => TypingTextState();
}

class TypingTextState extends State<TypingText> {
  late String _displayedText;
  late int _currentIndex;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _displayedText = '';
    _currentIndex = 0;
    _startTyping();
  }

  void _startTyping() {
    _timer = Timer.periodic(const Duration(milliseconds: 20), (timer) {
      if (_currentIndex < widget.text.length) {
        setState(() {
          _displayedText += widget.text[_currentIndex];
          _currentIndex++;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Text(
        _displayedText,
        style: widget.style,
        textAlign: TextAlign.center,
      ),
    );
  }
}

