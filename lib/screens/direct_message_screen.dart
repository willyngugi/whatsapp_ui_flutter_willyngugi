import 'package:bottom_navigation_app/models/user.dart';
import 'package:flutter/material.dart';

class DirectMessageScreen extends StatelessWidget {
  const DirectMessageScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
    );
  }
}
