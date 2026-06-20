import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      color: Colors.green,

      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  Mysnackbar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adorenemous', style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        elevation: 6,
        actions: [
          IconButton(
            onPressed: () {
              Mysnackbar("alright this is working", context);
            },
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        foregroundColor: Colors.white,

        backgroundColor: Colors.pink,
        child: Icon(Icons.voice_chat),
        onPressed: () {
          Mysnackbar('This is a floating action button', context);
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //this is maybe mandatory
        backgroundColor: Colors.pinkAccent,
        currentIndex: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wechat_outlined),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
