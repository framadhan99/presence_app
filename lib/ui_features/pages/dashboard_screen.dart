import 'package:flutter/material.dart';
import 'package:presence_app/config/asset_colors.dart';
import 'package:presence_app/ui_features/pages/home/home_page.dart';
import 'package:presence_app/ui_features/pages/profile/profile_screen.dart';

class DashboardMainScreen extends StatefulWidget {
  const DashboardMainScreen({super.key});

  @override
  State<DashboardMainScreen> createState() => _DashboardMainScreenState();
}

class _DashboardMainScreenState extends State<DashboardMainScreen> {
  int _index = 0;

  List<Widget> listScreen = [
    const HomePage(),
    const Text('Finger Print'),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            if (value == 1) {
              showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                  backgroundColor: AssetColor.blueLight,
                  content: Text('TERIMAKSIH SUDAH ABSEN'),
                ),
              );
            } else {
              _index = value;
            }
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
