import 'package:flutter/material.dart';
import 'package:siap/screens/home_screen.dart';
import 'package:siap/screens/berita_screen.dart';
import 'package:siap/screens/hasil_studi_screen.dart';
import 'package:siap/screens/jadwal_screen.dart';
import 'package:siap/screens/profile_screen.dart';
import 'package:siap/widgets/home/bottom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const BeritaScreen(),
    const HasilStudiScreen(),
    const JadwalScreen(),
    const ProfileScreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}