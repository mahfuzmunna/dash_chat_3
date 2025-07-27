import 'package:dash_chat_3/dash_chat_3.dart';
import 'package:examples/data.dart';
import 'package:flutter/material.dart';

class AvatarSample extends StatefulWidget {
  @override
  State<AvatarSample> createState() => AvatarSampleState();
}

class AvatarSampleState extends State<AvatarSample> {
  List<ChatMessage> messages = allUsersSample;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users example'),
      ),
      body: DashChat3(
        currentUser: user,
        onSend: (ChatMessage m) {
          setState(() {
            messages.insert(0, m);
          });
        },
        messages: messages,
      ),
    );
  }
}
