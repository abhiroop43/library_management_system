import 'package:flutter/material.dart';
import 'package:library_management_system/categories/categories_screen.dart';
import 'package:library_management_system/home/home_screen.dart';
import 'package:library_management_system/library/library_screen.dart';
import 'package:library_management_system/notifications/notification_screen.dart';
import 'package:library_management_system/profile/profile_screen.dart';
import 'package:library_management_system/scan/scan_new_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome,', style: TextStyle(fontSize: 14)),
            Text('Abhiroop', style: TextStyle(fontSize: 24)),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
            icon: Badge(
              label: const Text('2'),
              child: Icon(Icons.notifications),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.list),
            icon: Icon(Icons.list_outlined),
            label: 'Categories',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.add_circle),
            icon: Icon(Icons.add_circle_outline),
            label: 'New',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.library_books),
            icon: Icon(Icons.library_books_outlined),
            label: 'Library',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),

      body: <Widget>[
        HomeScreen(),
        CategoriesScreen(),
        ScanNewScreen(),
        LibraryScreen(),
        ProfileScreen(),
      ][currentPageIndex],
    );
  }
}
