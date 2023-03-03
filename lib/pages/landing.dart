import 'package:flutter/material.dart';
import 'package:inwome/theme.dart';
import 'home_page.dart';
import 'psikolog.dart';
import 'artikel.dart';
import 'pesan.dart';
import 'profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

enum ImageSourceType { gallery }

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  void _handleURLButtonPress(BuildContext context, var type) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Profile(type)));
  }

  int _page = 0;
  final screens = [
    HomePage(),
    Psikolog(),
    Artikel(),
    Pesan(),
    Profile(ImageSourceType.gallery),
  ];
  // List<Widget> _container = [
  //   HomePage(),
  //   Psikolog(),
  //   Artikel(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.white,
            color: neutral_50,
            activeColor: Colors.white,
            tabBackgroundColor: primary_main,
            gap: 8,
            // onTabChange: (index) {},
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              GButton(
                icon: Icons.supervised_user_circle_outlined,
                text: 'Psikolog',
              ),
              GButton(
                icon: Icons.article_outlined,
                text: 'Artikel',
              ),
              GButton(
                icon: Icons.chat_outlined,
                text: 'Pesan',
              ),
              GButton(
                icon: Icons.account_circle_outlined,
                text: 'Profile',
              ),
            ],
            selectedIndex: _page,
            onTabChange: (index) {
              setState(() {
                _page = index;
              });
            },
          ),
        ),
      ),
      body: IndexedStack(
        index: _page,
        children: screens,
      ),
    );
  }
}
