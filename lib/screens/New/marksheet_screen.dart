import 'package:flutter/material.dart';

class Student {
  final String schoolName;
  final String studentName;
  final String className;
  final String rollNumber;

  Student({
    required this.schoolName,
    required this.studentName,
    required this.className,
    required this.rollNumber,
  });
}

class MarksheetScreen extends StatelessWidget {
  final Student student;

  const MarksheetScreen({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marksheet - ${student.studentName}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(12),
                color: Colors.red[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      student.schoolName,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Nadipur, Pokhara-3',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Phone: 9876543210    Email: balmandirhss.com',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Table(
                border: TableBorder.all(),
                children: [
                  buildRow(
                    [
                      'SN',
                      'Subject',
                      'Full Marks',
                      'Pass Marks',
                      'Subject Grade'
                    ],
                    isHeader: true,
                  ),
                  buildRow(['1', 'Mathematics', '100', '45', 'A']),
                  buildRow(['2', 'Science', '100', '45', 'A']),
                  buildRow(['3', 'Computer', '100', '45', 'A']),
                  buildRow(['4', 'English', '100', '45', 'A']),
                  buildRow(['5', 'E.P.H', '100', '45', 'A']),
                  buildRow(['6', 'Social Studies', '100', '45', 'A']),
                  buildRow(['7', 'Nepali', '100', '45', 'A']),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rank: 1', style: TextStyle(fontSize: 16)),
                Text('Grade: A', style: TextStyle(fontSize: 16)),
                Text('Overall Percentage: 98.67%',
                    style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignatureBox(label: "Class Teacher"),
                SizedBox(height: 20),
                SignatureBox(label: "Principal"),
                SizedBox(height: 20),
                SignatureBox(label: "Parents"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SignatureBox extends StatelessWidget {
  final String label;

  const SignatureBox({required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

TableRow buildRow(List<String> cells, {bool isHeader = true}) => TableRow(
      children: cells.map((cell) {
        final style = TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: 18,
        );

        return Padding(
          padding: const EdgeInsets.all(10),
          child: Center(child: Text(cell, style: style)),
        );
      }).toList(),
    );
