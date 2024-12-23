import 'package:flutter/material.dart';

class EditUserInfoPage extends StatefulWidget {
  final Map<String, String> userInfo;
  EditUserInfoPage({required this.userInfo});

  @override
  _EditUserInfoPageState createState() => _EditUserInfoPageState();
}

class _EditUserInfoPageState extends State<EditUserInfoPage> {
  late Map<String, String> editedUserInfo;

  @override
  void initState() {
    super.initState();
    editedUserInfo = {...widget.userInfo}; // Initialize with current user info
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit User Info'),
         backgroundColor: const Color.fromRGBO(217, 183, 165, 1),
      ),
    backgroundColor: const Color.fromRGBO(217, 183, 165, 1),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: editedUserInfo['Name'],
                decoration: InputDecoration(labelText: 'Name'),
                onChanged: (value) {
                  editedUserInfo['Name'] = value;
                },
              ),
              TextFormField(
                initialValue: editedUserInfo['Gender'],
                decoration: InputDecoration(labelText: 'Gender'),
                onChanged: (value) {
                  editedUserInfo['Gender'] = value;
                },
              ),
              TextFormField(
                initialValue: editedUserInfo['Email'],
                decoration: InputDecoration(labelText: 'Email'),
                onChanged: (value) {
                  editedUserInfo['Email'] = value;
                },
              ),
               TextFormField(
                initialValue: editedUserInfo['Phone'],
                decoration: InputDecoration(labelText: 'Phone'),
                onChanged: (value) {
                  editedUserInfo['Phone'] = value;
                },
              ),
               TextFormField(
                initialValue: editedUserInfo['Dob'],
                decoration: InputDecoration(labelText: 'Dob'),
                onChanged: (value) {
                  editedUserInfo['Dob'] = value;
                },
              ),
               TextFormField(
                initialValue: editedUserInfo['Address'],
                decoration: InputDecoration(labelText: 'Address'),
                onChanged: (value) {
                  editedUserInfo['Address'] = value;
                },
              ),
               SizedBox(height: 20), 
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Return the updated info to the previous page
                    Navigator.pop(context, editedUserInfo);
                  }
                },
                child: Text('Save Changes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
