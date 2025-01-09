import 'package:flutter/material.dart';
import 'package:siap/widgets/hasil_studi/indeks_prestasi.dart';
import 'package:siap/widgets/hasil_studi/nilai_semester.dart';
import 'package:siap/widgets/hasil_studi/keterangan_studi.dart';

class HasilStudiScreen extends StatefulWidget {
  const HasilStudiScreen({super.key});

  @override
  _HasilStudiScreenState createState() => _HasilStudiScreenState();
}

class _HasilStudiScreenState extends State<HasilStudiScreen> {
  String _selectedSemester = "Semester 5";

  final Map<String, Map<String, String>> _keteranganData = {
    "Semester 1": {"totalSKS": "20", "totalSemester": "1", "ipk": "3.50"},
    "Semester 2": {"totalSKS": "40", "totalSemester": "2", "ipk": "3.40"},
    "Semester 3": {"totalSKS": "60", "totalSemester": "3", "ipk": "3.30"},
    "Semester 4": {"totalSKS": "80", "totalSemester": "4", "ipk": "3.25"},
    "Semester 5": {"totalSKS": "100", "totalSemester": "5", "ipk": "3.21"},
  };

  void _onSemesterChanged(String semester) {
    setState(() {
      _selectedSemester = semester;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hasil Studi',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const IndeksPrestasi(),
              NilaiSemester(
                selectedSemester: _selectedSemester,
                onSemesterChanged: _onSemesterChanged,
              ),
              KeteranganStudi(
                totalSKS: _keteranganData[_selectedSemester]!["totalSKS"]!,
                totalSemester: _keteranganData[_selectedSemester]!["totalSemester"]!,
                ipk: _keteranganData[_selectedSemester]!["ipk"]!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}