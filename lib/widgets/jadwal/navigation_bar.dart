import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationBar extends StatelessWidget {
  final String selectedTab;
  final Function(String) onTabSelected;

  const NavigationBar({super.key, 
    required this.selectedTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: ['Semua', 'Kuliah', 'Tugas', 'Ujian']
          .map((tab) => GestureDetector(
                onTap: () => onTabSelected(tab),
                child: Text(
                  tab,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: tab == selectedTab ? Colors.blue : Colors.grey,
                  ),
                ),
              ))
          .toList(),
    );
  }
}