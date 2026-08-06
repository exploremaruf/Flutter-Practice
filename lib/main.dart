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
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.green),
    );
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
              // Mysnackbar("All right this is working!", context);
              // showAboutDialog(context: context);
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Hello!"),
                    content: Text("How are you??"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          print("Pressed Okay");
                        },
                        child: Text("Okay"),
                      ),
                      TextButton(
                        onPressed: () {
                          print("pressed Not okay");
                          Navigator.pop(context);
                        },
                        child: Text("Not Okay"),
                      ),
                    ],
                  );
                },
              );
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
        type: BottomNavigationBarType.fixed,
        //this is maybe mandatory
        backgroundColor: Colors.pinkAccent,
        currentIndex: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.wechat_outlined),
            label: 'Messages',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),

      drawer: Drawer(
        backgroundColor: Colors.pinkAccent,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://avatars.githubusercontent.com/u/144926110?v=4",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text(
                "Maruf Hasan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text(
                "maruf@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            ListTile(
              title: Text("Home", style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.home),
              iconColor: Colors.white,
              onTap: () {
                Mysnackbar("Home", context);
              },
            ),
            ListTile(
              title: Text("Search", style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.search),
              iconColor: Colors.white,
              onTap: () {
                Mysnackbar("Search", context);
              },
            ),
          ],
        ),
      ),

      endDrawer: Drawer(
        backgroundColor: Colors.pink.shade100,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              accountName: Text("Maruf Hasan"),
              accountEmail: Text("maruf@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/144926110?v=4",
                ),
              ),
            ),

            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
          ],
        ),
      ),

      //body
      body: Container(
        child: Column(
          children: [
            Image.network(
              'https://wallpapercave.com/wp/wp8480114.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Text(
              'Cristiano Ronaldo',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Text(
              'Cristiano Ronaldo dos Santos Aveiro (born February 5, 1985) is a Portuguese professional footballer who plays as a forward for Al-Nassr and captains the Portugal national team',
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
