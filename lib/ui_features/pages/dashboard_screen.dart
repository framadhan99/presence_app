import 'package:flutter/material.dart';
import 'package:presence_app/config/asset_colors.dart';
import 'package:presence_app/ui_features/pages/home/home_page.dart';

class DashboardMainScreen extends StatefulWidget {
  const DashboardMainScreen({super.key});

  @override
  State<DashboardMainScreen> createState() => _DashboardMainScreenState();
}

class _DashboardMainScreenState extends State<DashboardMainScreen> {
  int _index = 0;

  List<Widget> listScreen = [
    const HomePage(),
    Text('Finger Print'),
    Text('Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        backgroundColor: AssetColor.blueDrak,
        selectedItemColor: Colors.white,
        unselectedItemColor: AssetColor.blueLight,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fingerprint,
            ),
            label: 'Fingerprint',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: listScreen[_index],
    );
  }
}
