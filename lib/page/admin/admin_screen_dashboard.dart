import 'package:flutter/material.dart';
import 'package:yourtailor/page/admin/admin_appointment/admin_appointment_screen.dart';


class AdminHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDFC5B0),
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.design_services, color: Colors.black87),
            SizedBox(width: 10),
            Text(
              'YourTailor',
              style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
            IconButton(
    icon: Icon(Icons.more_vert, color: Colors.black87),
    onPressed: () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => AdminProfile(name: name, role: role, email: email, gender: gender, address: address, phoneNumber: phoneNumber, dob: dob), // Replace AdminProfile with your adminprofile screen class name
      //   ),
      // );
    },
  ),
        ],
      ),
      body: Container(
        color: Color(0xFFD2A08D),
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Working on a new piece today?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Create a new order', style: TextStyle(fontSize: 14)),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildServiceButton(context, Icons.update, 'Update service'),
                _buildServiceButton(context, Icons.calendar_today, 'Appointment Record'),
              ],
            ),

            SizedBox(height: 16),
            Text(
              'Your active orders',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text('view all (10)', style: TextStyle(fontSize: 12)),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildOrderItem('Due: 13 Dec', 'Baju Kurung (cotton)', 'Ayu Natasya', 'RM 50', 'assets/cotton.jpg'),
                  _buildOrderItem('Due: 16 Dec', 'Baju Melayu Lelaki (silk)', 'Mohd Naufal', 'RM 40', 'assets/silk.jpg'),
                  _buildOrderItem('Due: 28 Dec', 'Baju Kurung - alter', 'Nur Farisya', 'RM 15', 'assets/alter.jpg'),
                  _buildOrderItem('Due: 2 Jan', 'Skirt (silk)', 'Amiera', 'RM 65', 'assets/skirt.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'Add Service'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

Widget _buildServiceButton(BuildContext context, IconData icon, String label) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {
          if (label == 'Appointment Record') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AppointmentRecordScreen()),
            );
          } else {
            print('$label button pressed');
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(50, 50),
        ),
        child: Icon(icon, color: Colors.black87, size: 24),
      ),
      SizedBox(height: 4),
      Text(label, style: TextStyle(fontSize: 10)),
    ],
  );
}


  Widget _buildOrderItem(String dueDate, String title, String customer, String price, String imagePath) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            width: 20, // Reduced width for clarity
            height: 20, // Reduced height for clarity
            fit: BoxFit.cover,
          ),
        ),
        title: Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text('$dueDate\n$customer', style: TextStyle(fontSize: 12)),
        ),
        trailing: Text(price, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87)),
      ),
    );
  }
}
