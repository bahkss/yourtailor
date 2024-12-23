import 'package:flutter/material.dart';

class EditAdminInfoPage extends StatefulWidget {
  final Map<String, String> adminInfo;
  EditAdminInfoPage({required this.adminInfo});

  @override
  _EditAdminInfoPageState createState() => _EditAdminInfoPageState();
}

class _EditAdminInfoPageState extends State<EditAdminInfoPage> {
  late Map<String, String> editedAdminInfo;

  @override
  void initState() {
    super.initState();
    editedAdminInfo = {...widget.adminInfo}; // Initialize with current admin info
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Admin Info'),
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
                initialValue: editedAdminInfo['Admin Name'],
                decoration: InputDecoration(labelText: 'Admin Name'),
                onChanged: (value) {
                  editedAdminInfo['Admin Name'] = value;
                },
              ),
             TextFormField(
                initialValue: editedAdminInfo['Gender'],
                decoration: InputDecoration(labelText: 'Gender'),
                onChanged: (value) {
                  editedAdminInfo['Gender'] = value;
                },
              ),
              TextFormField(
                initialValue: editedAdminInfo['Email'],
                decoration: InputDecoration(labelText: 'Email'),
                onChanged: (value) {
                 editedAdminInfo['Email'] = value;
                },
              ),
               TextFormField(
                initialValue: editedAdminInfo['Phone'],
                decoration: InputDecoration(labelText: 'Phone'),
                onChanged: (value) {
                  editedAdminInfo['Phone'] = value;
                },
              ),
               TextFormField(
                initialValue: editedAdminInfo['Dob'],
                decoration: InputDecoration(labelText: 'Dob'),
                onChanged: (value) {
                  editedAdminInfo['Dob'] = value;
                },
              ),
               TextFormField(
                initialValue: editedAdminInfo['Address'],
                decoration: InputDecoration(labelText: 'Address'),
                onChanged: (value) {
                  editedAdminInfo['Address'] = value;
                },
              ),
               SizedBox(height: 20), 
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Return the updated info to the previous page
                    Navigator.pop(context, editedAdminInfo);
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
