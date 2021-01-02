import 'dart:html';

import 'package:flutter/material.dart';
import 'package:personal_website/screen/aboutme.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class AboutBox extends StatelessWidget {
  final String number;
  final String name;
  AboutBox({this.name, this.number});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
            constraints: BoxConstraints(maxWidth: 300),
            //width: size > 1000 ? siz : size / 2.4,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0xff343a40).withOpacity(0.5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      number,
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 55,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class Name extends StatelessWidget {
  final String content;
  final String data;
  Name({this.content, this.data});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: RichText(
        text: TextSpan(
          text: content,
          style: TextStyle(color: Colors.white, fontSize: 17),
          children: [
            TextSpan(
              text: data,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}

class Guage extends StatelessWidget {
  final double per;
  final String perstr;
  final String name;
  Guage({@required this.per, @required this.perstr, @required this.name});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Container(
        height: 190,
        width: 190,
        child: Column(
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          perstr,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: SfRadialGauge(
                        animationDuration: 9000,
                        axes: <RadialAxis>[
                          RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            showLabels: false,
                            showTicks: false,
                            startAngle: 270,
                            endAngle: 270,
                            axisLineStyle: AxisLineStyle(
                              //thickness: 1,
                              color: Color(0xff343a40).withOpacity(0.5),
                              //thicknessUnit: GaugeSizeUnit.factor,
                            ),
                            pointers: <GaugePointer>[
                              RangePointer(
                                value: per,
                                width: 10,
                                color: Colors.amber,
                                pointerOffset: 0.1,
                                cornerStyle: CornerStyle.bothCurve,
                                sizeUnit: GaugeSizeUnit.logicalPixel,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExEdu extends StatelessWidget {
  final String desc;
  final String year;
  final String name;
  final IconData icon;

  ExEdu({
    @required this.year,
    @required this.name,
    @required this.desc,
    @required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.white,
                ),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
              ),
              Expanded(
                child: Container(
                  height: 10,
                  width: 1,
                  color: Color(0xff343a40),
                ),
              )
            ],
          ),
          SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Color(0xff343a40),
                  child: Text(year,
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                SizedBox(height: 10),
                Text(
                  name,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  desc,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
