import 'package:flutter/material.dart';
import 'package:personal_website/screen/aboutme.dart';
import 'package:personal_website/screen/contact.dart';
import 'package:personal_website/screen/home.dart';

class MenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RawMaterialButton(
          hoverColor: Colors.amber,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          elevation: 2.0,
          fillColor: Color(0xff343a40).withOpacity(0.5),
          child: Icon(Icons.home, size: 25.0, color: Colors.white),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        ),
        SizedBox(height: 15),
        RawMaterialButton(
          hoverColor: Colors.amber,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => About()),
            );
          },
          elevation: 2.0,
          fillColor: Color(0xff343a40).withOpacity(0.5),
          child: Icon(Icons.person, size: 25.0, color: Colors.white),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        ),
        SizedBox(height: 15),
        RawMaterialButton(
          hoverColor: Colors.amber,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Contact()),
            );
          },
          elevation: 2.0,
          fillColor: Color(0xff343a40).withOpacity(0.5),
          child: Icon(Icons.contact_mail, size: 25.0, color: Colors.white),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        ),
        SizedBox(height: 15),
        RawMaterialButton(
          hoverColor: Colors.amber,
          onPressed: () {},
          elevation: 2.0,
          fillColor: Color(0xff343a40).withOpacity(0.5),
          child: Icon(Icons.mail, size: 25.0, color: Colors.white),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        ),
        SizedBox(height: 15),
        RawMaterialButton(
          hoverColor: Colors.amber,
          onPressed: () {},
          elevation: 2.0,
          fillColor: Color(0xff343a40).withOpacity(0.5),
          child: Icon(Icons.chat, size: 25.0, color: Colors.white),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        ),
      ],
    );
  }
}
