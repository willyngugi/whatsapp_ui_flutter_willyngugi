import 'package:flutter/material.dart';

class FavoriteMessagesScreen extends StatelessWidget {
  const FavoriteMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Favorite Messages',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
