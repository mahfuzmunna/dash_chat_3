import 'package:dash_chat_3/dash_chat_3.dart';
import 'package:examples/data.dart';
import 'package:flutter/material.dart';

class TypingUsersSample extends StatefulWidget {
  @override
  State<TypingUsersSample> createState() => TypingUsersSampleState();
}

class TypingUsersSampleState extends State<TypingUsersSample> {
  List<ChatMessage> messages = basicSample;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Typing user example'),
      ),
      body: DashChat3(
        currentUser: user,
        onSend: (ChatMessage m) {
          setState(() {
            messages.insert(0, m);
          });
        },
        typingUsers: <ChatUser>[user3],
        messages: messages,
      ),
    );
  }
}
