import 'package:flutter/material.dart';
import 'package:personal_website/widget/customDrawer.dart';
import 'package:personal_website/widget/iconmenu.dart';
import 'package:personal_website/widget/menubutton.dart';

class Contact extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Color(0xff111111),
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(maxWidth: 1100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  title(context),
                  SizedBox(height: 50),
                  size > 800 ? desktopView() : mobileView(),
                ],
              ),
            ),
          ),
          size > 800
              ? Align(
                  alignment: Alignment.centerRight,
                  child: MenuButton(),
                )
              : Container()
        ],
      ),
    );
  }

  Widget mobileView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'DON\'T BE SHY',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 10),
          Text(
            'Feel free to get in touch with me. I am always open to discussing new projects, creative ideas or opportunities to be part of your visions.',
            style: TextStyle(color: Colors.white, fontSize: 18, height: 1.5),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.mail, color: Colors.amber),
            title: Text(
              'MAIL ME',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'iamjithinjohnson@gmail.com',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.amber,
            ),
            title: Text(
              'CALL ME',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              '+216 21 184 010',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          textfield1('YOUR NAME'),
          SizedBox(height: 30),
          textfield1('YOUR EMAIL'),
          SizedBox(height: 30),
          textfield1('YOUR SUBJECT'),
          SizedBox(height: 30),
          TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: 8,
            maxLength: 1000,
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xff343a40).withOpacity(0.2),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.amber, width: 1.5),
                ),
                hintText: 'YOUR MESSAGE',
                hintStyle: TextStyle(color: Colors.white70)),
          ),
          SizedBox(
            height: 50,
            width: 210,
            child: RaisedButton.icon(
              hoverColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
              icon: Icon(Icons.send, color: Colors.white),
              label: Text(
                'SEND MESSAGE',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Color(0xffffc107),
            ),
          ),
          SizedBox(height: 50)
        ],
      ),
    );
  }

  Row desktopView() {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'DON\'T BE SHY',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(height: 10),
              Text(
                'Feel free to get in touch with me. I am always open to discussing new projects, creative ideas or opportunities to be part of your visions.',
                style:
                    TextStyle(color: Colors.white, fontSize: 18, height: 1.5),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.amber),
                title: Text(
                  'MAIL ME',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'iamjithinjohnson@gmail.com',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.amber,
                ),
                title: Text(
                  'CALL ME',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '+216 21 184 010',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 20),
        Flexible(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  textfield('YOUR NAME'),
                  SizedBox(width: 10),
                  textfield('YOUR EMAIL'),
                  SizedBox(width: 10),
                  textfield('YOUR SUBJECT'),
                ],
              ),
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                maxLength: 1000,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff343a40).withOpacity(0.2),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber, width: 1.5),
                    ),
                    hintText: 'YOUR MESSAGE',
                    hintStyle: TextStyle(color: Colors.white70)),
              ),
              SizedBox(
                height: 50,
                width: 210,
                child: RaisedButton.icon(
                  hoverColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  icon: Icon(Icons.send, color: Colors.white),
                  label: Text(
                    'SEND MESSAGE',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  color: Color(0xffffc107),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Flexible textfield(String hint) {
    return Flexible(
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xff343a40).withOpacity(0.2),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: Colors.amber, width: 1.5),
            ),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white70)),
      ),
    );
  }

  Widget textfield1(String hint) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff343a40).withOpacity(0.2),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(color: Colors.amber, width: 1.5),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white70)),
    );
  }

  Widget title(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth > 800 ? desktopTitle() : mobileTitle();
      },
    );
  }

  Widget mobileTitle() {
    return Container(
      color: Color(0xff343a40),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: RichText(
                text: TextSpan(
                  text: 'GET IN',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 25),
                  children: [
                    TextSpan(
                        text: ' TOUCH',
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.w900,
                            fontSize: 25)),
                  ],
                ),
              ),
            ),
            IconMenu(
              onpressDrawer: () => _scaffoldKey.currentState.openDrawer(),
            ),
          ],
        ),
      ),
    );
  }

  FittedBox desktopTitle() {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: RichText(
                text: TextSpan(
                  text: 'GET IN',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 55),
                  children: [
                    TextSpan(
                        text: ' TOUCH',
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.w900,
                            fontSize: 55)),
                  ],
                ),
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'CONTACT',
              style: TextStyle(
                  fontSize: 120,
                  color: Colors.white.withOpacity(0.05),
                  fontWeight: FontWeight.w900),
            ),
          )
        ],
      ),
    );
  }
}
