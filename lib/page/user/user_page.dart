import 'package:flutter/material.dart';
import 'user_info_page.dart';
import 'edit_user_info.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  Map<String, String> userInfo = {
    'Name': 'Azmina Nordin',
    'gender': 'Female',
    'Email': 'AzminaNordin@gmail.com',
    'Phone': '123-456-7890',
    'Dob': '4 Nov 2003',
    'Address': 'Villa Nordin billionaire Street',
  };

  // Method to update the user information
  void updateUserInfo(Map<String, String> updatedInfo) {
    setState(() {
      userInfo = updatedInfo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
         backgroundColor: const Color.fromRGBO(217, 183, 165, 1),
      ),
      backgroundColor: const Color.fromRGBO(217, 183, 165, 1),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset(
            'assets/123.png',
           ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the UserInfoPage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserInfoPage(userInfo: userInfo),
                  ),
                );
              },
              child: Text('View User Info'),
            ),
             SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () async {
                // Navigate to EditUserInfoPage and wait for the updated user info
                final updatedInfo = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditUserInfoPage(userInfo: userInfo),
                  ),
                );
                if (updatedInfo != null) {
                  updateUserInfo(updatedInfo); // Update the state with new data
                }
              },
              child: Text('Edit User Info'),
            ),
          ],
        ),
      ),
    );
  }
}
