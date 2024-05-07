import "package:flutter/material.dart";
import "package:zutto_app/components/bottom_nav.dart";
import "package:zutto_app/pages/mesaage_page.dart";
import "package:zutto_app/pages/notification.dart";
import "package:zutto_app/pages/posts_page.dart";
import "package:zutto_app/pages/profile_page.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedindex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    const Postspage(),
    const MessagePage(),
    const NotificationPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      // appBar: AppBar(
      //   actions: const [Icon(Icons.search, weight: 20,)],
      //   title: const Text("Zutto", 
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   automaticallyImplyLeading: false,
      // ),
      
      body: _pages[_selectedindex],
    );
  }
}