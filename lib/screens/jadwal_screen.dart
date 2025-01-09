import 'package:flutter/material.dart';
import 'package:siap/widgets/jadwal/navigation_bar.dart' as custom;
import 'package:siap/widgets/jadwal/kuliah_section.dart';
import 'package:siap/widgets/jadwal/tugas_section.dart';
import 'package:siap/widgets/jadwal/ujian_section.dart';

class JadwalScreen extends StatefulWidget {
  const JadwalScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _JadwalScreenState createState() => _JadwalScreenState();
}

class _JadwalScreenState extends State<JadwalScreen> {
  String selectedTab = 'Kuliah';
  String selectedDate = 'Senin 13';

  final Map<String, List<Map<String, String>>> scheduleData = {
    'Senin 13': [
      {
        'time': '8.20',
        'subject': 'Sistem Informasi',
        'location': 'Ruangan B.3.1',
        'lecturer': 'Denny Vasanando S.'
      },
      {
        'time': '10.00',
        'subject': 'Matematika',
        'location': 'Ruangan A.1.1',
        'lecturer': 'Budi Santoso'
      },
      {
        'time': '13.00',
        'subject': 'Fisika',
        'location': 'Ruangan C.2.2',
        'lecturer': 'Agus Supriyanto'
      },
    ],
    'Selasa 14': [
      {
        'time': '9.00',
        'subject': 'Kimia',
        'location': 'Ruangan D.4.1',
        'lecturer': 'Siti Aminah'
      },
      {
        'time': '11.00',
        'subject': 'Biologi',
        'location': 'Ruangan E.5.3',
        'lecturer': 'Rina Wulandari'
      },
      {
        'time': '14.00',
        'subject': 'Bahasa Inggris',
        'location': 'Ruangan F.6.2',
        'lecturer': 'John Doe'
      },
    ],
    'Rabu\n15': [
      {
        'time': '8.00',
        'subject': 'Sejarah',
        'location': 'Ruangan G.7.1',
        'lecturer': 'Ahmad Fauzi'
      },
      {
        'time': '10.00',
        'subject': 'Geografi',
        'location': 'Ruangan H.8.2',
        'lecturer': 'Nurul Hidayah'
      },
      {
        'time': '13.00',
        'subject': 'Ekonomi',
        'location': 'Ruangan I.9.3',
        'lecturer': 'Dewi Sartika'
      },
    ],
    'Kamis 16': [
      {
        'time': '9.00',
        'subject': 'Sosiologi',
        'location': 'Ruangan J.10.1',
        'lecturer': 'Andi Wijaya'
      },
      {
        'time': '11.00',
        'subject': 'Antropologi',
        'location': 'Ruangan K.11.2',
        'lecturer': 'Sri Rahayu'
      },
      {
        'time': '14.00',
        'subject': 'Psikologi',
        'location': 'Ruangan L.12.3',
        'lecturer': 'Hendra Gunawan'
      },
    ],
    'Jumat 17': [
      {
        'time': '8.00',
        'subject': 'Filsafat',
        'location': 'Ruangan M.13.1',
        'lecturer': 'Yusuf Maulana'
      },
      {
        'time': '10.00',
        'subject': 'Agama',
        'location': 'Ruangan N.14.2',
        'lecturer': 'Ustadz Rahmat'
      },
      {
        'time': '13.00',
        'subject': 'Pendidikan Jasmani',
        'location': 'Ruangan O.15.3',
        'lecturer': 'Dian Purnama'
      },
    ],
  };

  void onTabSelected(String tab) {
    setState(() {
      selectedTab = tab;
    });
  }

  void onDateSelected(String date) {
    setState(() {
      selectedDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jadwal',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              custom.NavigationBar(
                selectedTab: selectedTab,
                onTabSelected: onTabSelected,
              ),
              const SizedBox(height: 16),
              if (selectedTab == 'Kuliah' || selectedTab == 'Semua')
                KuliahSection(
                  selectedDate: selectedDate,
                  onDateSelected: onDateSelected,
                  scheduleData: scheduleData,
                ),
              if (selectedTab == 'Tugas' || selectedTab == 'Semua')
                const TugasSection(),
              if (selectedTab == 'Ujian' || selectedTab == 'Semua')
                const UjianSection(),
            ],
          ),
        ),
      ),
    );
  }
}