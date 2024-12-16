// payment_records_screen.dart
import 'package:flutter/material.dart';

class PaymentRecordsScreen extends StatelessWidget {
  final List<Map<String, String>> paymentRecords = [
    {
      'Name': 'Ameera',
      'Address': 'Kota Samarahan',
      'Appointment date': '2 Jan 2025',
      'Product': 'Skirt',
      'Total Price': 'RM 65'
    },
    {
      'Name': 'Ayu Natasya',
      'Address': 'Kota Samarahan',
      'Appointment date': '13 Dec 2024',
      'Product': 'Baju Kurung',
      'Total Price': 'RM 50'
    },
    {
      'Name': 'Mohd Naufal',
      'Address': 'Kuching',
      'Appointment date': '16 Dec 2024',
      'Product': 'Baju Melayu Lelaki',
      'Total Price': 'RM 40'
    },
    {
      'Name': 'Nur Farisya',
      'Address': 'Kuching',
      'Appointment date': '28 Dec 2024',
      'Product': 'Baju Kurung (alter)',
      'Total Price': 'RM 15'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDFC5B0),
        elevation: 0,
        title: const Text(
          'Payment record',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Color(0xFFDFC5B0),
        child: ListView.builder(
          itemCount: paymentRecords.length,
          itemBuilder: (context, index) {
            final record = paymentRecords[index];
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color(0xFFEAD6C5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: record.entries.map((entry) {
                    return Text(
                      '${entry.key} : ${entry.value}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Serif',
                      ),
                    );
                  }).toList(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
