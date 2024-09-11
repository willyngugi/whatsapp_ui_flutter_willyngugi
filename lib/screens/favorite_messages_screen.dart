import 'package:flutter/material.dart';

class FavoriteMessagesScreen extends StatelessWidget {
  const FavoriteMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/favimage.png',
          width: 150,
          height: 150,
        ),
        const SizedBox(height: 30.0),
        const Text(
          'Add to Favourites',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Make it easy to find the people and groups that \n matter most across WhatsApp.',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Text(
          'Add to Favorites',
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        )
      ],
    );
  }
}
