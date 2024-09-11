import 'package:flutter/material.dart';

import '../models/message.dart';
import '../widgets/chat_item.dart';
import 'direct_message_screen.dart';

class UnreadMessagesScreen extends StatelessWidget {
  const UnreadMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final unreadChats = chats.where((message) => message.unread).toList();

    return ListView.builder(
      itemCount: unreadChats.length,
      itemBuilder: (ctx, index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) =>
                  DirectMessageScreen(user: unreadChats[index].sender),
            ),
          );
        },
        child: ChatItem(message: unreadChats[index]),
      ),
    );
  }
}
