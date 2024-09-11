import 'package:flutter/material.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Communities'),
          actions: const [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 20),
            Icon(Icons.more_vert),
            SizedBox(width: 10),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/community.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 30.0),
            const Text(
              'Stay connected with a community',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'communities bring members together in topic-based\n groups, '
              'and make it easy to get admin announcements. '
              '\nAny community you\'re added to will appear here.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              'See example communities >',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                child: Text(
                  'Start your community',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ));
  }
}
