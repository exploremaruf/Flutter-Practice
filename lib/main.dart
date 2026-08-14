import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(iosStyle());
}

class iosStyle extends StatelessWidget {
  const iosStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Luna'),
        trailing: Icon(CupertinoIcons.fullscreen_exit),
        leading: Icon(CupertinoIcons.back),

      ),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton.filled(child: Text('Hello'), onPressed: () {}),
            CupertinoActivityIndicator(
              radius: 24,
            ),
            CupertinoSwitch(value:false , onChanged:(value) {

            },)
          ],
        ),
      ),
    );
  }
}
