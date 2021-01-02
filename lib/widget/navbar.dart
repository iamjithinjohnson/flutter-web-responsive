import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 1000) {
        return desktop_navbar();
      } else {
        return mobile_navbar();
      }
    });
  }

  Container mobile_navbar() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            Text(
              'Jithin K Johnson',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Home', style: textstyle()),
                SizedBox(width: 20),
                Text('Services', style: textstyle()),
                SizedBox(width: 20),
                Text('About', style: textstyle()),
                SizedBox(width: 20),
                Text('Home', style: textstyle()),
              ],
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container desktop_navbar() {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 150, right: 30, top: 20, bottom: 20),
        child: Row(
          children: [
            Text(
              'Jithin K Johnson',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text('Home', style: textstyle()),
            SizedBox(width: 20),
            Text('Services', style: textstyle()),
            SizedBox(width: 20),
            Text('About', style: textstyle()),
            SizedBox(width: 20),
            Text('Home', style: textstyle()),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  TextStyle textstyle() {
    return TextStyle(
      fontSize: 20,
      color: Colors.grey,
      fontWeight: FontWeight.w500,
    );
  }
}
