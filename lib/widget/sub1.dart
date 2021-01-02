import 'package:flutter/material.dart';

class Sub1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return desktopView();
        } else {
          return mobileView(context);
        }
      },
    );
  }

  Container mobileView(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(20),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Javascript'),
                  SizedBox(height: 20),
                  Text(
                      'hai iam very skilled javascript programmer 5 year experience \n sadas ')
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(20),
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('C++'),
                SizedBox(height: 20),
                Text(
                    'hai iam very skilled javascript programmer 5 year experience ')
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(20),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Flutter'),
                  SizedBox(height: 20),
                  Text(
                      'hai iam very skilled javascript programmer 5 year experience ')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row desktopView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Javascript'),
                  SizedBox(height: 20),
                  Text(
                      'hai iam very skilled javascript programmer 5 year experience \n sadas ')
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('C++'),
                  SizedBox(height: 20),
                  Text(
                      'hai iam very skilled javascript programmer 5 year experience ')
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Flutter'),
                  SizedBox(height: 20),
                  Text(
                      'hai iam very skilled javascript programmer 5 year experience ')
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
