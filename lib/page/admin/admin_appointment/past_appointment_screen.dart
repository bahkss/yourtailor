// upcoming_appointments_screen.dart
import 'package:flutter/material.dart';

class PastAppointmentScreen extends StatelessWidget {
  final List<Map<String, String>> PastAppointments = [
    {
      'Date': '14/12/2024',
      'Time': '2pm',
      'Customer’s Name': 'Ayu Natasya',
      'Service’s': 'Baju Kurung'
    },
    {
      'Date': '14/12/2024',
      'Time': '5pm',
      'Customer’s Name': 'Aina Abdullah',
      'Service’s': 'Baju Kurung'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDFC5B0),
        elevation: 0,
        title: const Text(
          'Past Appointment Record',
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
          itemCount: PastAppointments.length,
          itemBuilder: (context, index) {
            final appointment = PastAppointments[index];
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
                  children: appointment.entries.map((entry) {
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
