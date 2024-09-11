import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calls'),
          actions: const [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 20),
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.more_vert),
            SizedBox(width: 10),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Favorites',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ClipOval(
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Icon(
                        Icons.heart_broken,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Text(
                    'Add favorite',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 17.0,
                        ),
                  )
                ],
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'To start calling contacts who have whatsapp, tap call icon \n at the bottom of your screen',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.call),
          onPressed: () {},
        ));
  }
}
