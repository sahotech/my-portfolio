// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/controllers/url_launcher_controller.dart';
import 'package:sahotech_portfolio/responsive/mobile_screens/m_about_me.dart';
import 'package:sahotech_portfolio/responsive/mobile_screens/m_contact.dart';
import 'package:sahotech_portfolio/responsive/mobile_screens/m_home.dart';
import 'package:sahotech_portfolio/responsive/mobile_screens/m_project.dart';
import 'package:sahotech_portfolio/responsive/mobile_screens/m_service.dart';
import 'package:sahotech_portfolio/widgets/loading_widget.dart';

class MobileMainScreen extends StatefulWidget {
  const MobileMainScreen({super.key});

  @override
  State<MobileMainScreen> createState() => _MobileMainScreenState();
}

class _MobileMainScreenState extends State<MobileMainScreen> {
  late final AssetBundle? bundle;
  // List of Nav text
  List<dynamic> navItems = [
    {'text': 'Home', 'icon': Icons.home_outlined, 'page': const MHomeScreen()},
    {
      'text': 'About',
      'icon': Icons.person_outline,
      'page': const MobileAboutMe()
    },
    {
      'text': 'Projects',
      'icon': Icons.personal_injury_outlined,
      'page': const MProjectScreen()
    },
    {
      'text': 'Services',
      'icon': Icons.design_services,
      'page': const MServicesScreen()
    },
    {
      'text': 'Contact',
      'icon': Icons.email_outlined,
      'page': const MContactScreen()
    },
  ];

  int currentIndex = 0;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    isLoading = true;
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  final GlobalKey<ScaffoldState> sccaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);
    return isLoading
        ? const LoadingWidget()
        : Scaffold(
            key: sccaffoldState,
            backgroundColor: bgColor,
            drawer: customeDrawer(ss),
            body: Stack(
              children: [
                // Main Body
                Padding(
                  padding: const EdgeInsets.only(left: 4, bottom: 4),
                  child: navItems[currentIndex]['page'],
                ),

                // Menu bar
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        sccaffoldState.currentState!.openDrawer();
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }

  customeDrawer(ss) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 4, top: 4),
      child: Drawer(
        child: Container(
          width: 300,
          height: double.infinity,
          color: const Color.fromARGB(255, 6, 5, 20),
          child: Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 4, top: 4),
            child: Container(
              height: ss.height,
              width: 300,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 6, 5, 20),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white10,
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      onBackgroundImageError: (exception, stackTrace) {
                        Text(e.toString());
                      },
                      backgroundColor: Colors.white10,
                      radius: 50,
                      backgroundImage: Image.asset(
                        profile,
                        fit: BoxFit.fill,
                      ).image,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Peter Saho",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // List of Social Media Links
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          UrlLauncherController().launchGithub();
                        },
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white10,
                          child: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      const SizedBox(width: 7),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          UrlLauncherController().launchLinkedIn();
                        },
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white10,
                          child: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      const SizedBox(width: 7),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          UrlLauncherController().launchTwitter();
                        },
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white10,
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      const SizedBox(width: 7),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          UrlLauncherController().launchFacebook();
                        },
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white10,
                          child: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      const SizedBox(width: 7),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          UrlLauncherController().launchIg();
                        },
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white10,
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Side nav menu
                  SizedBox(
                    child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: navItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 4),
                          child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              setState(() {
                                currentIndex = index;
                                sccaffoldState.currentState!.closeDrawer();
                              });
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              height: 45,
                              decoration: BoxDecoration(
                                color: currentIndex == index
                                    ? Colors.white10
                                    : null,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    navItems[index]['icon'],
                                    color: currentIndex == index
                                        ? Colors.white
                                        : Colors.white60,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    navItems[index]['text'],
                                    style: TextStyle(
                                      color: currentIndex == index
                                          ? Colors.white
                                          : Colors.white60,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
