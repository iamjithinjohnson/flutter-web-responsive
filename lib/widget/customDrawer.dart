import 'package:flutter/material.dart';
import 'package:personal_website/screen/aboutme.dart';
import 'package:personal_website/screen/contact.dart';
import 'package:personal_website/screen/home.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            title: Text(
              'About',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),
          ListTile(
            title: Text(
              'Contact Us',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contact()),
              );
            },
          ),
          ListTile(
            title: Text(
              'Porfolio',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            leading: Icon(
              Icons.filter,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),
          ListTile(
            title: Text(
              'Blog',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            leading: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),
        ],
      ),
      color: Color(0xff111111),
    );
  }
}
