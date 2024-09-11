import 'package:bottom_navigation_app/models/message.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    required this.message,
    this.border,
  });

  final Message message;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(message.sender.name),
      subtitle: Text(
        message.text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
            ),
      ),
      leading: ClipOval(
        child: Image.asset(
          message.sender.imageUrl,
          height: 40,
          width: 40,
          fit: BoxFit.cover,
        ),
      ),
      trailing: Column(
        children: [
          Text(
            message.time,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          message.unread
              ? Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
