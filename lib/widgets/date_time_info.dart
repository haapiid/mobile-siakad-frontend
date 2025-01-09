import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeInfo extends StatelessWidget {
  final Color textColor; // Properti untuk menyimpan warna teks

  const DateTimeInfo({
    super.key,
    this.textColor = Colors.white, // Memberikan warna default
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dateFormatter = DateFormat('EEEE, dd MMMM yyyy');
    final timeFormatter = DateFormat('HH:mm');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          timeFormatter.format(now),
          style: TextStyle(
              fontSize: 16, color: textColor), // Menggunakan textColor
        ),
        Text(
          dateFormatter.format(now),
          style: TextStyle(
              fontSize: 12, color: textColor), // Menggunakan textColor
        ),
      ],
    );
  }
}
