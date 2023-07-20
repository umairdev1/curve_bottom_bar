import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class DAshboardView extends StatefulWidget {
  const DAshboardView({super.key});

  @override
  State<DAshboardView> createState() => _DAshboardViewState();
}

class _DAshboardViewState extends State<DAshboardView> {
  static const TextStyle textStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w500);
  final List _pages = [
    const Text(
      "Home",
      style: textStyle,
    ),
    const Text(
      "Wish List",
      style: textStyle,
    ),
    const Text(
      "Profile",
      style: textStyle,
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade100,
        items: const <Widget>[
          Icon(Icons.home_rounded, size: 30),
          Icon(Icons.favorite_rounded, size: 30),
          Icon(Icons.person_rounded, size: 30),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: Center(
        child: _pages.elementAt(selectedIndex),
      ),
    );
  }
}
