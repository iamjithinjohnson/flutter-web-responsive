import 'package:flutter/material.dart';
import 'package:personal_website/widget/aboutme_widgets.dart';
import 'package:personal_website/widget/customDrawer.dart';
import 'package:personal_website/widget/iconmenu.dart';
import 'package:personal_website/widget/menubutton.dart';

class About extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;

    ScrollController scrollController = ScrollController();
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Color(0xff111111),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Scrollbar(
            controller: scrollController,
            isAlwaysShown: true,
            radius: Radius.circular(50),
            child: ListView(
              controller: scrollController,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    title(context),
                    SizedBox(height: 90),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 250),
                        child: Text(
                          'Personal Info',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 45),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    personalInfo(context),
                    SizedBox(height: 110),
                    Container(
                      color: Color(0xff343a40).withOpacity(0.5),
                      height: 1,
                      width: MediaQuery.of(context).size.width / 1.8,
                    ),
                    SizedBox(height: 80),
                    Text(
                      'MY SKILLS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 60),
                    skills_guage(context),
                    SizedBox(height: 110),
                    Container(
                      color: Color(0xff343a40).withOpacity(0.5),
                      height: 1,
                      width: MediaQuery.of(context).size.width / 1.8,
                    ),
                    SizedBox(height: 80),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'EXPERIENCE & EDUCATION',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    experience(context),
                    SizedBox(height: 40),
                  ],
                ),
              ],
            ),
          ),
          size < 800
              ? Padding(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconMenu(
                      onpressDrawer: () =>
                          _scaffoldKey.currentState.openDrawer(),
                    ),
                  ),
                )
              : Align(
                  alignment: Alignment.centerRight,
                  child: MenuButton(),
                ),
        ],
      ),
    );
  }

  Padding experience(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    print('size : $size');
    return Padding(
      padding: size > 1000
          ? EdgeInsets.symmetric(horizontal: 200)
          : EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1000),
        child: GridView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: size > 1300
                ? 2.5
                : size > 640
                    ? 1.5
                    : size > 564
                        ? 1
                        : size > 544
                            ? 3.1
                            : size > 400
                                ? 2.5
                                : 1.5,
            maxCrossAxisExtent: 420,
            crossAxisSpacing: 80,
            mainAxisSpacing: 50.0,
          ),
          children: [
            ExEdu(
              year: '2018 - PRESENT',
              desc:
                  'Lorem ipsum dolor sit amet, consectetur tempor incididunt ut labore adipisicing elit,',
              name: 'WEB DEVELOPER ENVATO',
              icon: Icons.cast_for_education,
            ),
            ExEdu(
              year: '2018 - PRESENT',
              desc:
                  'Lorem ipsum dolor sit amet, consectetur tempor incididunt ut labore adipisicing elit ,',
              name: 'WEB DEVELOPER ENVATO',
              icon: Icons.cast_for_education,
            ),
            ExEdu(
              year: '2018 - PRESENT',
              desc:
                  'Lorem ipsum dolor sit amet, consectetur tempor incididunt ut labore adipisicing elit,',
              name: 'WEB DEVELOPER ENVATO',
              icon: Icons.cast_for_education,
            ),
            ExEdu(
              year: '2018 - PRESENT',
              desc:
                  'Lorem ipsum dolor sit amet, consectetur tempor incididunt ut labore adipisicing elit,',
              name: 'WEB DEVELOPER ENVATO',
              icon: Icons.cast_for_education,
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget skills_guage(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Padding(
      padding: size > 1000
          ? EdgeInsets.symmetric(horizontal: 200)
          : EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1000),
        child: GridView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            crossAxisSpacing: 50.0,
            mainAxisSpacing: 40.0,
          ),
          children: [
            Guage(per: 10, perstr: '10%\n', name: 'JAVASCRIPT'),
            Guage(per: 80, perstr: '80%\n', name: 'HTML'),
            Guage(per: 40, perstr: '40%\n', name: 'CSS'),
            Guage(per: 5, perstr: '5%\n', name: 'PHP'),
            Guage(per: 50, perstr: '50%\n', name: 'JAVA'),
            Guage(per: 70, perstr: '70%\n', name: 'ANDROID STUDIO'),
            Guage(per: 90, perstr: '90%\n', name: 'FLUTTER'),
            Guage(per: 90, perstr: '90%\n', name: 'DART')
          ],
        ),
      ),
    );
  }

  Widget title(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth > 1000 ? desktopTitle() : mobileTitle();
      },
    );
  }

  Padding mobileTitle() {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          maxRadius: 120,
          backgroundImage: AssetImage('/images/jkj.jpeg'),
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
                  text: 'ABOUT',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 55),
                  children: [
                    TextSpan(
                        text: ' ME',
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
              'RESUME',
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

  Widget personalInfo(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth > 1100
          ? desktopPersonalInfo()
          : constraints.maxWidth > 500
              ? semiMobilePersonalInfo()
              : mobilePersonalInfo();
    });
  }

  FittedBox semiMobilePersonalInfo() {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Name(content: 'First Name :', data: ' Jithin'),
                    SizedBox(height: 10),
                    Name(content: 'Last Name :', data: ' Johnson'),
                    SizedBox(height: 10),
                    Name(content: 'Age :', data: ' 21 Years'),
                    SizedBox(height: 10),
                    Name(content: 'Nationality :', data: ' India'),
                    SizedBox(height: 10),
                    Name(content: 'Freelancer :', data: ' Not Available'),
                  ],
                ),
                SizedBox(width: 100),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Name(content: 'Address :', data: ' India'),
                    SizedBox(height: 10),
                    Name(content: 'Phone :', data: ' +21621184010'),
                    SizedBox(height: 10),
                    Name(
                        content: 'Email :',
                        data: ' iamjithinjohnson@gmail.com'),
                    SizedBox(height: 10),
                    Name(content: 'Skype :', data: ' jithin.johnson'),
                    SizedBox(height: 10),
                    Name(content: 'Language :', data: ' English, Malayalam'),
                    SizedBox(height: 50),
                  ],
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  AboutBox(
                      number: '12+', name: '-------------Year of Experience'),
                  SizedBox(width: 30),
                  AboutBox(
                      number: '50+', name: '-------------Project Completed'),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  AboutBox(
                      number: '12+', name: '-------------Year of Experience'),
                  SizedBox(width: 30),
                  AboutBox(
                      number: '50+', name: '-------------Project Completed'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  FittedBox mobilePersonalInfo() {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Name(content: 'First Name :', data: ' Jithin'),
                SizedBox(height: 10),
                Name(content: 'Last Name :', data: ' Johnson'),
                SizedBox(height: 10),
                Name(content: 'Age :', data: ' 21 Years'),
                SizedBox(height: 10),
                Name(content: 'Nationality :', data: ' India'),
                SizedBox(height: 10),
                Name(content: 'Freelancer :', data: ' Not Available'),
                SizedBox(height: 10),
                Name(content: 'Address :', data: ' India'),
                SizedBox(height: 10),
                Name(content: 'Phone :', data: ' +21621184010'),
                SizedBox(height: 10),
                Name(content: 'Email :', data: ' iamjithinjohnson@gmail.com'),
                SizedBox(height: 10),
                Name(content: 'Skype :', data: ' jithin.johnson'),
                SizedBox(height: 10),
                Name(content: 'Language :', data: ' English, Malayalam'),
                SizedBox(height: 50),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  AboutBox(
                      number: '12+', name: '-------------Year of Experience'),
                  SizedBox(width: 30),
                  AboutBox(
                      number: '50+', name: '-------------Project Completed'),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  AboutBox(
                      number: '12+', name: '-------------Year of Experience'),
                  SizedBox(width: 30),
                  AboutBox(
                      number: '50+', name: '-------------Project Completed'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  FittedBox desktopPersonalInfo() {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Container(
        constraints: BoxConstraints(maxWidth: 1180),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Name(content: 'First Name :', data: ' Jithin'),
                SizedBox(height: 30),
                Name(content: 'Last Name :', data: ' Johnson'),
                SizedBox(height: 30),
                Name(content: 'Age :', data: ' 21 Years'),
                SizedBox(height: 30),
                Name(content: 'Nationality :', data: ' India'),
                SizedBox(height: 30),
                Name(content: 'Freelancer :', data: ' Not Available'),
              ],
            ),
            SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Name(content: 'Address :', data: ' India'),
                SizedBox(height: 30),

                Name(content: 'Phone :', data: ' +21621184010'),
                SizedBox(height: 30),

                Name(content: 'Email :', data: ' iamjithinjohnson@gmail.com'),
                SizedBox(height: 30),

                Name(content: 'Skype :', data: ' jithin.johnson'),
                SizedBox(height: 30),

                Name(content: 'Language :', data: ' English, Malayalam'),
                //Name(content: 'Freelancer :', data: ' Not Available'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AboutBox(
                        number: '12+', name: '-------------Year of Experience'),
                    AboutBox(
                        number: '50+', name: '-------------Project Completed'),
                  ],
                ),
                Row(
                  children: [
                    AboutBox(
                        number: '12+', name: '-------------Year of Experience'),
                    AboutBox(
                        number: '50+', name: '-------------Project Completed'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
