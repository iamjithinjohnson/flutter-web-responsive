import 'package:flutter/material.dart';

class IconMenu extends StatelessWidget {
  final Function onpressDrawer;
  IconMenu({@required this.onpressDrawer});

  @override
  Widget build(BuildContext context) {
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
}
