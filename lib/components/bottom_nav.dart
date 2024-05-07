// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNav extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 9.0, horizontal: 30),
      child: GNav(
          padding: const EdgeInsets.all(10),
          color: Colors.grey,
          activeColor: const Color.fromARGB(255, 17, 0, 252),
          tabActiveBorder: Border.all(color: Colors.white),
          // tabBackgroundColor: Color.fromARGB(255, 18, 126, 168),
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              // text: 'Feed',
            ),
            GButton(
              icon: Icons.message,
              // text: 'Search',
            ),
            GButton(
              icon: Icons.notifications,
              // text: 'Message',
            ),
            GButton(
              icon: Icons.people,
              // text: 'Profile',
            ),
          ]),
    );
  }
}
