import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
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
      // appBar: AppBar(
      //   title: Text('Adorenemous', style: TextStyle(fontSize: 20)),
      //   backgroundColor: Colors.orange.shade50,
      //   foregroundColor: Colors.black,
      //   elevation: 6,
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         Mysnackbar("alright this is working", context);
      //       },
      //       icon: Icon(Icons.account_circle),
      //     ),
      //   ],
      // ),
      //
      // floatingActionButton: FloatingActionButton(
      //   elevation: 10,
      //   foregroundColor: Colors.white,
      //
      //   backgroundColor: Colors.deepOrange,
      //   child: Icon(Icons.voice_chat),
      //   onPressed: () {
      //     Mysnackbar('This is a floating action button', context);
      //   },
      // ),
      //
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed, //this is maybe mandatory
      //   backgroundColor: Colors.orange.shade50,
      //   currentIndex: 0,
      //   selectedItemColor: Colors.black,
      //   unselectedItemColor: Colors.black54,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.wechat_outlined),
      //       label: 'Messages',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
      //
      // drawer: Drawer(
      //     backgroundColor: Colors.orange.shade50,
      //   child: ListView(
      //     padding: EdgeInsets.all(0),
      //     children: [
      //       DrawerHeader(child:Text("This is Header")),
      //       ListTile(
      //         title: Text("Home"),
      //       )
      //     ],
      //   ),
      // ),
      body:Container(
        height: 100,
        width: 100,
        color: Colors.yellow,
      )
    );
  }
}
