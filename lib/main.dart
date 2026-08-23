import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const iosStyle()));
}

class iosStyle extends StatelessWidget {
  const iosStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(width: 100, height: 100, color: Colors.red),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(width: 100, height: 100, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
