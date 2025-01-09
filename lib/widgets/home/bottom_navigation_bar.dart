import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 8,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: HeroIcon(HeroIcons.home, style: HeroIconStyle.outline),
              activeIcon: HeroIcon(HeroIcons.home, style: HeroIconStyle.solid),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: HeroIcon(HeroIcons.newspaper, style: HeroIconStyle.outline),
              activeIcon: HeroIcon(HeroIcons.newspaper, style: HeroIconStyle.solid),
              label: 'Berita',
            ),
            BottomNavigationBarItem(
              icon: HeroIcon(HeroIcons.chartBar, style: HeroIconStyle.outline),
              activeIcon: HeroIcon(HeroIcons.chartBar, style: HeroIconStyle.solid),
              label: 'Hasil Studi',
            ),
            BottomNavigationBarItem(
              icon: HeroIcon(HeroIcons.calendar, style: HeroIconStyle.outline),
              activeIcon: HeroIcon(HeroIcons.calendar, style: HeroIconStyle.solid),
              label: 'Jadwal',
            ),
            BottomNavigationBarItem(
              icon: HeroIcon(HeroIcons.user, style: HeroIconStyle.outline),
              activeIcon: HeroIcon(HeroIcons.user, style: HeroIconStyle.solid),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}