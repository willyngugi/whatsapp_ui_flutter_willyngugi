import 'package:bottom_navigation_app/screens/all_messages_screen.dart';
import 'package:bottom_navigation_app/screens/favorite_messages_screen.dart';
import 'package:bottom_navigation_app/screens/groups_screen.dart';
import 'package:bottom_navigation_app/screens/unread_messages_screen.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _selectedIndex = 0;
  final List<String> categories = ['All', 'Unread', 'Favorites', 'Groups'];

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
    _tabController.index = _selectedIndex;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: const [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 5),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (ctx, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: Container(
                  height: 40.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  margin: const EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: index == _selectedIndex
                        ? Colors.lightGreen.withOpacity(0.3)
                        : Colors.grey.withOpacity(0.2),
                  ),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color: index == _selectedIndex
                          ? Colors.lightGreen
                          : Colors.white60,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                AllMessagesScreen(),
                UnreadMessagesScreen(),
                FavoriteMessagesScreen(),
                GroupsScreen(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {},
      ),
    );
  }
}
