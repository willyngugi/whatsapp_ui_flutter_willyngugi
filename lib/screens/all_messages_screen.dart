import 'package:bottom_navigation_app/screens/direct_message_screen.dart';
import 'package:bottom_navigation_app/widgets/chat_item.dart';
import 'package:flutter/material.dart';

import '../models/message.dart';

class AllMessagesScreen extends StatelessWidget {
  const AllMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (ctx, index) => ChatItem(message: chats[index]),
    );
  }
}
