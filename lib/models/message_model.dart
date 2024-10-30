class Message {
  final String text;
  final bool isMine;

  Message({required this.text, required this.isMine});

  static List<Message> messages = [
    Message(text: "Hi Catherine ! How are you?", isMine: false),
    Message(text: "I’m good and you?", isMine: true),
    Message(text: "I’m doing good. What are you doing ?", isMine: false),
    Message(text: "I’m working on my app design.", isMine: true),
    Message(text: "Let’s get lunch! How about sushi ?", isMine: false),
    Message(text: "That sounds great! ", isMine: true),
  ];

}

