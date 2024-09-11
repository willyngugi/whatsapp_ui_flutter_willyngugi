import 'package:bottom_navigation_app/models/message.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    bool isMe = message.sender.id == currentUser.id;
    return Container(
      decoration: BoxDecoration(
        color: isMe ? Colors.green : const Color(0xFF232D36),
        borderRadius: isMe
            ? const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                topRight: Radius.circular(0.0),
              )
            : const BorderRadius.only(
                topLeft: Radius.circular(0.0),
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      margin: isMe
          ? const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 100.0)
          : const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.text,
            style: isMe
                ? Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    )
                : Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                message.time,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.8),
                    ),
              ),
              const SizedBox(width: 10.0),
              isMe
                  ? const Icon(
                      Icons.check_sharp,
                      size: 15.0,
                    )
                  : const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
