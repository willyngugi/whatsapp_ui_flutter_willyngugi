import 'package:flutter/material.dart';

class UnreadMessagesScreen extends StatelessWidget {
  const UnreadMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Unread Messages',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
