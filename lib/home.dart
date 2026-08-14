import 'package:flutter/material.dart';
import 'package:test_project/profile.dart';
import 'package:test_project/settings.dart';

class HomeActivity extends StatelessWidget {
  Mysnackbar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.green),
    );
  }

  // var Myimages = [
  //   {
  //     'img':
  //         'https://imgs.search.brave.com/XEG-_pI37YpdU0NlARKDsL9eA78-yhvHIifXGhZWBCw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMjI4/NDQwNTI0OS9waG90/by90b3JvbnRvLW9u/dGFyaW8tY3Jpc3Rp/YW5vLXJvbmFsZG8t/b2YtcG9ydHVnYWwt/Y2VsZWJyYXRlcy1h/ZnRlci1zY29yaW5n/LWhpcy10ZWFtcy1m/aXJzdC1nb2FsLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1Y/eGlzRGNsaTBFV21B/Xy1XUmlxVUo5UHEw/UzBndU5oM1hrRVlh/U3ljMjJFPQ',
  //   },
  //   {
  //     'img':
  //         'https://imgs.search.brave.com/XEG-_pI37YpdU0NlARKDsL9eA78-yhvHIifXGhZWBCw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMjI4/NDQwNTI0OS9waG90/by90b3JvbnRvLW9u/dGFyaW8tY3Jpc3Rp/YW5vLXJvbmFsZG8t/b2YtcG9ydHVnYWwt/Y2VsZWJyYXRlcy1h/ZnRlci1zY29yaW5n/LWhpcy10ZWFtcy1m/aXJzdC1nb2FsLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1Y/eGlzRGNsaTBFV21B/Xy1XUmlxVUo5UHEw/UzBndU5oM1hrRVlh/U3ljMjJFPQ',
  //   },
  //   {
  //     'img':
  //         'https://imgs.search.brave.com/XEG-_pI37YpdU0NlARKDsL9eA78-yhvHIifXGhZWBCw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMjI4/NDQwNTI0OS9waG90/by90b3JvbnRvLW9u/dGFyaW8tY3Jpc3Rp/YW5vLXJvbmFsZG8t/b2YtcG9ydHVnYWwt/Y2VsZWJyYXRlcy1h/ZnRlci1zY29yaW5n/LWhpcy10ZWFtcy1m/aXJzdC1nb2FsLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1Y/eGlzRGNsaTBFV21B/Xy1XUmlxVUo5UHEw/UzBndU5oM1hrRVlh/U3ljMjJFPQ',
  //   },
  //   {
  //     'img':
  //         'https://imgs.search.brave.com/XEG-_pI37YpdU0NlARKDsL9eA78-yhvHIifXGhZWBCw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMjI4/NDQwNTI0OS9waG90/by90b3JvbnRvLW9u/dGFyaW8tY3Jpc3Rp/YW5vLXJvbmFsZG8t/b2YtcG9ydHVnYWwt/Y2VsZWJyYXRlcy1h/ZnRlci1zY29yaW5n/LWhpcy10ZWFtcy1m/aXJzdC1nb2FsLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1Y/eGlzRGNsaTBFV21B/Xy1XUmlxVUo5UHEw/UzBndU5oM1hrRVlh/U3ljMjJFPQ',
  //   },
  // ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Adorenemous', style: TextStyle(fontSize: 20)),
      //   backgroundColor: Colors.pinkAccent,
      //   foregroundColor: Colors.white,
      //   elevation: 6,
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         // Mysnackbar("All right this is working!", context);
      //         // showAboutDialog(context: context);
      //         showDialog(
      //           context: context,
      //           builder: (context) {
      //             return AlertDialog(
      //               title: Text("Hello!"),
      //               content: Text("How are you??"),
      //               actions: [
      //                 TextButton(
      //                   onPressed: () {
      //                     print("Pressed Okay");
      //                   },
      //                   child: Text("Okay"),
      //                 ),
      //                 TextButton(
      //                   onPressed: () {
      //                     print("pressed Not okay");
      //                     Navigator.pop(context);
      //                   },
      //                   child: Text("Not Okay"),
      //                 ),
      //               ],
      //             );
      //           },
      //         );
      //       },
      //       icon: Icon(Icons.account_circle),
      //     ),
      //   ],
      // ),

      // floatingActionButton: FloatingActionButton(
      //   elevation: 10,
      //   foregroundColor: Colors.white,
      //   backgroundColor: Colors.pink,
      //   child: Icon(Icons.voice_chat),
      //   onPressed: () {
      //     Mysnackbar('This is a floating action button', context);
      //   },
      // ),
      //
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   //this is maybe mandatory
      //   backgroundColor: Colors.pinkAccent,
      //   currentIndex: 0,
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.grey,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.wechat_outlined),
      //       label: 'Messages',
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      //   ],
      // ),
      //
      // drawer: Drawer(
      //   backgroundColor: Colors.pinkAccent,
      //   child: ListView(
      //     padding: EdgeInsets.all(0),
      //     children: [
      //       UserAccountsDrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.pink,
      //           image: DecorationImage(
      //             image: NetworkImage(
      //               "https://avatars.githubusercontent.com/u/144926110?v=4",
      //             ),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         accountName: Text(
      //           "Maruf Hasan",
      //           style: TextStyle(
      //             fontSize: 20,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //           ),
      //         ),
      //         accountEmail: Text(
      //           "maruf@gmail.com",
      //           style: TextStyle(
      //             fontSize: 16,
      //             color: Colors.white,
      //             fontStyle: FontStyle.italic,
      //           ),
      //         ),
      //       ),
      //
      //       ListTile(
      //         title: Text("Home", style: TextStyle(color: Colors.white)),
      //         leading: Icon(Icons.home),
      //         iconColor: Colors.white,
      //         onTap: () {
      //           Mysnackbar("Home", context);
      //         },
      //       ),
      //       ListTile(
      //         title: Text("Search", style: TextStyle(color: Colors.white)),
      //         leading: Icon(Icons.search),
      //         iconColor: Colors.white,
      //         onTap: () {
      //           Mysnackbar("Search", context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      //
      // endDrawer: Drawer(
      //   backgroundColor: Colors.pink.shade100,
      //   child: ListView(
      //     padding: EdgeInsets.all(0),
      //     children: [
      //       UserAccountsDrawerHeader(
      //         decoration: BoxDecoration(color: Colors.pink),
      //         accountName: Text("Maruf Hasan"),
      //         accountEmail: Text("maruf@gmail.com"),
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: NetworkImage(
      //             "https://avatars.githubusercontent.com/u/144926110?v=4",
      //           ),
      //         ),
      //       ),
      //
      //       ListTile(
      //         title: Text("Home"),
      //         leading: Icon(Icons.home),
      //         onTap: () {},
      //       ),
      //     ],
      //   ),
      // ),

      //body
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.all(20),
      //       child: TextField(
      //         style: TextStyle(
      //           fontSize: 20,
      //           color: Colors.blueAccent
      //         ),
      //         decoration: InputDecoration(
      //          hintText: 'Enter your Name',
      //           hintStyle:TextStyle(
      //             fontSize: 20,
      //             fontWeight: FontWeight.w300
      //           ),
      //           enabledBorder: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(10),
      //             borderSide: BorderSide(width: 3,color: Colors.purple.shade100),
      //
      //           ),
      //           focusedBorder: OutlineInputBorder(
      //             borderSide: BorderSide(width: 3,color: Colors.purple),
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //           labelText: 'Name',
      //           prefixIcon: Icon(Icons.man_2_outlined),
      //           suffixIcon: Icon(Icons.woman)
      //         ),
      //
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(20),
      //       child: TextField(
      //         maxLength: 10,
      //
      //         decoration: InputDecoration(
      //           labelText: 'Email',
      //           enabledBorder:
      //             OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(50)
      //             ),
      //           fillColor: Colors.red,
      //           filled: true,
      //           prefixIcon:Icon(Icons.mail)
      //         ),
      //       ),
      //     ),
      //
      //     Padding(
      //       padding: EdgeInsets.all(20),
      //       child: TextField(
      //         enabled: false,
      //         decoration: InputDecoration(
      //           labelText: 'username',
      //           disabledBorder:
      //             OutlineInputBorder(
      //               borderSide: BorderSide(width: 3,color: Colors.grey)
      //             )
      //         ),
      //       ),
      //     ),
      //
      //     Padding(
      //       padding: EdgeInsets.all(20),
      //       child: ElevatedButton(
      //         onPressed: () {},
      //         child: Text('Submit'),
      //         style: ElevatedButton.styleFrom(
      //           backgroundColor: Colors.pink,
      //           foregroundColor: Colors.white,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      // body:ListView.builder(
      //
      //     itemCount: 100,
      //     itemBuilder: (context,index){
      //       return Text('${index+1}',style: TextStyle(
      //         fontSize: 24
      //       ),);
      //     }
      //
      // )

      // body: ListView(
      //   scrollDirection:  Axis.horizontal,
      //   children: [
      //     Text('Hello,'),
      //     Text('Hello,'),
      //     Text('Hello,'),
      //     Text('Hello,'),
      //     Text('Hello,')
      //   ],
      //
      // ),
      // body: ListView.builder(
      //   itemCount: Myimages.length,
      //   itemBuilder: (context, index) {
      //     return Column(
      //       children: [
      //     Container(
      //     padding: EdgeInsets.all(10),
      //     child: Image.network(Myimages[index]['img']!),
      //     ),
      //         Divider()
      //       ],
      //     );
      //   },
      // ),

      // body: ListView.separated(
      //     itemCount: Myimages.length,
      //     itemBuilder: (context,index){
      //       return Image.network(Myimages[index]['img']!);
      //     } ,
      //     separatorBuilder: (context,index){
      //       return Divider(
      //         color: Colors.red,
      //         thickness: 5,
      //       );
      //     }
      // ),
      // body: GridView.builder(
      //   padding: EdgeInsets.all(10),
      //   itemCount: 20,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //   ),
      //   itemBuilder: (context, index) {
      //     return Image.network(
      //       'https://imageio.forbes.com/specials-images/imageserve/645ea1c4fce09061884bd21c/0x0.jpg?format=jpg&crop=2774,2772,x925,y0,safe&height=416&width=416&fit=bounds',
      //     );
      //   },
      // ),
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Profile(userName: 'Soncoy',);
                    },
                  ),
                ).then(((value) =>
                print(value)/**/
                ));
              },
              child: Text('Go to Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
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
