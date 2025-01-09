import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UjianSection extends StatelessWidget {
  const UjianSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ujian',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        Center(
          child: Column(
            children: [
              Image.asset(
                'lib/assets/images/pusing.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 8),
              Text(
                'Belum bisa memulai ujian karena sedang dalam pengembangan',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}