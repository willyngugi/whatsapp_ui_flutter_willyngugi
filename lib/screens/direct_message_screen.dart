import 'package:bottom_navigation_app/models/message.dart';
import 'package:bottom_navigation_app/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/message_bubble.dart';

class DirectMessageScreen extends StatelessWidget {
  const DirectMessageScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final chatList = getList('chat${user.name}');
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20.0,
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                user.imageUrl,
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.normal),
                ),
                const Text('last seen today at 5.04',
                    style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal))
              ],
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.video_call_outlined,
            size: 30.0,
          ),
          SizedBox(width: 20),
          Icon(Icons.call_outlined),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/whatsappbg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView.builder(
                itemCount: chatList.length,
                itemBuilder: (ctx, index) => MessageBubble(
                  message: chatList[index],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Message',
                      prefixIcon: Icon(
                        Icons.emoji_emotions_rounded,
                        size: 30.0,
                      ),
                      suffixIcon: Icon(
                        Icons.camera_alt,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                ClipOval(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Theme.of(context).colorScheme.primary,
                    child: const Icon(Icons.mic),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
