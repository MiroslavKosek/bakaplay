import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return GNav(
      backgroundColor: Colors.black,
      color: Theme.of(context).colorScheme.primary,
      haptic: true,
      gap: 8,
      activeColor: Theme.of(context).colorScheme.primary,
      tabBackgroundColor: Colors.grey.shade800,
      padding: const EdgeInsets.all(16),
      tabs: const [
        GButton(
          icon: LineIcons.home,
          text: 'Home',
        ),
        GButton(
          icon: LineIcons.search,
          text: 'Search',
        ),
        GButton(
          icon: LineIcons.user,
          text: 'Profile',
        ),
      ],
    );
  }
}