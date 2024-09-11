import 'package:bottom_navigation_app/models/message.dart';
import 'package:bottom_navigation_app/widgets/chat_item.dart';
import 'package:flutter/material.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groupChats.length,
      itemBuilder: (ctx, index) => InkWell(
          onTap: () {
            /* Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) =>
                    DirectMessageScreen(user: groupChats[index].sender),
              ),
            );*/
          },
          child: ChatItem(message: groupChats[index])),
    );
  }
}
