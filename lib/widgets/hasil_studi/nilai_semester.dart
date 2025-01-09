import 'package:flutter/material.dart';

class NilaiSemester extends StatefulWidget {
  final String selectedSemester;
  final ValueChanged<String> onSemesterChanged;

  const NilaiSemester({
    super.key,
    required this.selectedSemester,
    required this.onSemesterChanged,
  });

  @override
  _NilaiSemesterState createState() => _NilaiSemesterState();
}

class _NilaiSemesterState extends State<NilaiSemester> {
  final Map<String, List<List<String>>> _semesterData = {
    "Semester 1": [
      ["Matematika", "A", "4", "X"],
      ["Fisika", "B", "3", "X"],
      ["Kimia", "A", "4", "X"],
    ],
    "Semester 2": [
      ["Biologi", "A", "4", "X"],
      ["Geografi", "B", "3", "X"],
      ["Sejarah", "A", "4", "X"],
    ],
    "Semester 3": [
      ["Ekonomi", "A", "4", "X"],
      ["Sosiologi", "B", "3", "X"],
      ["Antropologi", "A", "4", "X"],
    ],
    "Semester 4": [
      ["Psikologi", "A", "4", "X"],
      ["Filsafat", "B", "3", "X"],
      ["Sastra", "A", "4", "X"],
    ],
    "Semester 5": [
      ["Sistem Operasi", "A", "4", "X"],
      ["Statistika/Probabilitas", "B", "3", "X"],
      ["Strategi Sistem", "A", "4", "X"],
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Nilai Semester",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: widget.selectedSemester,
                  items: ["Semester 1", "Semester 2", "Semester 3", "Semester 4", "Semester 5"]
                      .map((semester) => DropdownMenuItem(
                            value: semester,
                            child: Text(semester),
                          ))
                      .toList(),
                  onChanged: (value) {
                    widget.onSemesterChanged(value!);
                  },
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Table(
              columnWidths: const {
                0: FlexColumnWidth(3),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
                3: FlexColumnWidth(1),
              },
              border: TableBorder(
                horizontalInside: BorderSide(color: Colors.grey.withOpacity(0.2)),
              ),
              children: [
                const TableRow(
                  decoration: BoxDecoration(color: Colors.blue),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Mata Kuliah',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Nilai',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Bobot',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'NA',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                ..._semesterData[widget.selectedSemester]!.map((data) {
                  return _buildTableRow(data[0], data[1], data[2], data[3], data == _semesterData[widget.selectedSemester]!.last);
                }).toList(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TableRow _buildTableRow(String mataKuliah, String nilai, String bobot, String na, bool isLast) {
    return TableRow(
      decoration: BoxDecoration(
        border: Border(
          bottom: isLast ? BorderSide(color: Colors.grey.withOpacity(0.2)) : BorderSide.none,
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(mataKuliah),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(nilai),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(bobot),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(na),
        ),
      ],
    );
  }
}