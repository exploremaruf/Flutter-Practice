import 'package:flutter/material.dart';
import 'package:test_project/home.dart';
import 'package:test_project/profile.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(title: Text('Settings'), backgroundColor: Colors.green),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeActivity()),
                      (Route) => false,
                );
              },
              child: Text('Go to Home'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushAndRemoveUntil(
            //       context,
            //       MaterialPageRoute(builder: (context) => Profile()),
            //           (Route) => false,
            //     );
            //   },
            //   child: Text('Go To profile page'),
            // ),
          ],
        ),
      ),
    );
  }
}
