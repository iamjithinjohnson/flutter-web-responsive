import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:personal_website/screen/aboutme.dart';
import 'package:personal_website/widget/iconmenu.dart';
import 'package:personal_website/widget/menubutton.dart';

class Homee extends StatelessWidget {
  final Function onpressDrawer;
  Homee({@required this.onpressDrawer});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constaints) {
      if (constaints.maxWidth > 1000) {
        return desktopView(context);
      } else if (constaints.maxWidth > 500) {
        return semiMobileview(context);
      } else {
        return mobileView(context);
      }
    });
  }

  Padding mobileView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: IconMenu(onpressDrawer: onpressDrawer),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HI THERE !',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                      text: 'I\'M',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: ' JITHIN K JOHNSON',
                            style: TextStyle(
                                color: Color(0xffffc107),
                                fontSize: 25,
                                fontWeight: FontWeight.bold))
                      ]),
                ),
                SizedBox(height: 15),
                Text(
                  'I\'m a Web Designer & Developer based in Tunisia with 5+ years experience, I\'m Highly experienced in designing & developing custom web & mobile apps with multiple technologies.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      height: 2,
                      letterSpacing: 1),
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  width: 210,
                  child: raisedButtonMoreAbout(context),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding semiMobileview(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          IconMenu(onpressDrawer: onpressDrawer),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                maxRadius: 120,
                backgroundImage: AssetImage('/images/jkj.jpeg'),
              ),
              SizedBox(height: 15),
              RichText(
                text: TextSpan(
                    text: 'I\'M',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: ' JITHIN K JOHNSON',
                          style: TextStyle(
                              color: Color(0xffffc107),
                              fontSize: 35,
                              fontWeight: FontWeight.bold))
                    ]),
              ),
              SizedBox(height: 15),
              Text(
                'I\'m a Web Designer & Developer based in Tunisia with 5+ years experience, I\'m Highly experienced in designing & developing custom web & mobile apps with multiple technologies.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    height: 2,
                    letterSpacing: 1),
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 50,
                width: 210,
                child: raisedButtonMoreAbout(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container iconmenu() {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Color(0xff343a40).withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: IconButton(
          icon: Icon(
            Icons.menu,
            //size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            onpressDrawer();
          }),
    );
  }

  Stack desktopView(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipPath(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.amber,
          ),
          clipper: MyCustomClipper(),
        ),
        Container(
          constraints: BoxConstraints(maxWidth: 1350),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 40),
              Material(
                color: Color(0xff343a40),
                elevation: 10,
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  '/images/jkj.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              // CircleAvatar(
              //   maxRadius: 200,
              //   backgroundImage: AssetImage('/images/jkj.jpeg'),
              // ),
              SizedBox(width: 60),

              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HI THERE !',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(height: 15),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: RichText(
                        text: TextSpan(
                            text: 'I\'M',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: ' JITHIN K JOHNSON',
                                  style: TextStyle(
                                      color: Color(0xffffc107),
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold))
                            ]),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'I\'m a Web Designer & Developer based in Tunisia with 5+ years experience, I\'m Highly experienced in designing & developing custom web & mobile apps with multiple technologies.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          height: 2,
                          letterSpacing: 1),
                    ),
                    SizedBox(height: 40),
                    SizedBox(
                      height: 50,
                      width: 210,
                      child: raisedButtonMoreAbout(context),
                    )
                  ],
                ),
              ),
              SizedBox(width: 120),
              MenuButton()
            ],
          ),
        ),
      ],
    );
  }

  RaisedButton raisedButtonMoreAbout(BuildContext context) {
    return RaisedButton.icon(
      hoverColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
      icon: Icon(Icons.mail, color: Colors.white),
      label: Text(
        'MORE ABOUT ME',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => About()),
        );
      },
      color: Color(0xffffc107),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(size.width / 6, 0)
      ..lineTo(size.width / 12, size.height / 2)
      ..lineTo(size.width / 4, size.height)
      ..lineTo(0, size.height)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
