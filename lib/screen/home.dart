import 'package:flutter/material.dart';
import 'package:personal_website/screen/aboutme.dart';
import 'package:personal_website/widget/bodyhead.dart';
import 'package:personal_website/widget/customDrawer.dart';
import 'package:personal_website/widget/homee.dart';
import 'package:personal_website/widget/navbar.dart';
import 'package:personal_website/widget/sub1.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Color(0xff111111),
      body: Center(
        child: Container(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //NavBar(),
              // SizedBox(height: 80),
              // BodyHead(),
              // SizedBox(height: 100),
              // Container(
              //   color: Colors.blue[100].withOpacity(0.2),
              //   child: Sub1(),
              // ),

              Homee(
                onpressDrawer: () => _scaffoldKey.currentState.openDrawer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
