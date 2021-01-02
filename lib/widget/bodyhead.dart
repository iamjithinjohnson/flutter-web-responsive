import 'package:flutter/material.dart';

class BodyHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return desktopView();
        } else {
          return mobileView();
        }
      },
    );
  }

  Container mobileView() {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            maxRadius: 200,
            backgroundImage: AssetImage('/images/jkj.jpeg'),
          ),
          SizedBox(height: 20),
          Text('About', style: TextStyle(fontSize: 50)),
          SizedBox(height: 20),
          Text('hai iam jithin k johnson', style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }

  Container desktopView() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text('About', style: TextStyle(fontSize: 50)),
              SizedBox(height: 20),
              Text('hai iam jithin k johnson', style: TextStyle(fontSize: 20)),
            ],
          ),
          CircleAvatar(
            maxRadius: 200,
            backgroundImage: AssetImage('/images/jkj.jpeg'),
          )
        ],
      ),
    );
  }
}
