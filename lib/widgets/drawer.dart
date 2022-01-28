import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

// ignore: prefer_const_declarations
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent.fraj2-1.fna.fbcdn.net/v/t1.6435-9/184636077_1416076915442824_2997522279263012478_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=174925&_nc_ohc=b9NOE8bUNs8AX_BODrX&_nc_ht=scontent.fraj2-1.fna&oh=00_AT9IxvdmZjNQjOLBlP5rd2YnUqCXDbbCod_U5RhUhjpSgw&oe=62000DE3";
    return Drawer(
      child: Container(
        color: Color(0xffFEB100),
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Harsh Butani"),
                accountEmail: Text("harshbutani24@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text(
                "E-Mail",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
