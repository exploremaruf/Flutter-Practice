import 'package:flutter/material.dart';
import 'package:test_project/settings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.userName});
  final String userName;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$userName',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go to Homepage'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
              child: Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
