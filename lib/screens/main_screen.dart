import 'package:bottom_navigation_app/providers/nav_state_provider.dart';
import 'package:bottom_navigation_app/screens/home_screen.dart';
import 'package:bottom_navigation_app/screens/search_screen.dart';
import 'package:bottom_navigation_app/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final currentIndex = ref.watch(navigationStateProvider);
        _tabController.index = currentIndex;
        return Scaffold(
          body: TabBarView(
            controller: _tabController,
            children: const [
              HomeScreen(),
              SearchScreen(),
              SettingsScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              ref.read(navigationStateProvider.notifier).setIndex(value);
            },
            iconSize: 20.0,
            elevation: 5.0,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ],
          ),
        );
      },
    );
  }
}
