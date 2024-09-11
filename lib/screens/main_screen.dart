import 'package:bottom_navigation_app/providers/nav_state_provider.dart';
import 'package:bottom_navigation_app/screens/calls_screen.dart';
import 'package:bottom_navigation_app/screens/chats_screen.dart';
import 'package:bottom_navigation_app/screens/updates_screen.dart';
import 'package:bottom_navigation_app/screens/communities_screen.dart';
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

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
        currentIndex = ref.watch(navigationStateProvider);
        _tabController.index = currentIndex;
        return Scaffold(
          body: TabBarView(
            controller: _tabController,
            children: const [
              ChatsScreen(),
              UpdatesScreen(),
              CommunitiesScreen(),
              CallsScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              ref.read(navigationStateProvider.notifier).setIndex(value);
            },
            iconSize: 20.0,
            elevation: 5.0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 15.0,
            unselectedFontSize: 15.0,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.chat_outlined),
                label: 'Chats',
                activeIcon: _buildIconWithBackground(0, Icons.chat),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.add_alert_outlined),
                label: 'Updates',
                activeIcon: _buildIconWithBackground(1, Icons.add_alert),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.people_alt_outlined),
                label: 'Communities',
                activeIcon: _buildIconWithBackground(2, Icons.people),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.call_outlined),
                label: 'Calls',
                activeIcon: _buildIconWithBackground(3, Icons.call),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildIconWithBackground(int index, IconData icon) {
    return Container(
      width: 50.0,
      height: 25.0,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? Theme.of(context).colorScheme.onPrimary
            : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
