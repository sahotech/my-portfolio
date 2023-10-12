// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sahotech_portfolio/constant.dart';

import 'package:sahotech_portfolio/responsive/tablet_screen/t_about_me.dart';
import 'package:sahotech_portfolio/responsive/tablet_screen/t_contact.dart';
import 'package:sahotech_portfolio/responsive/tablet_screen/t_home.dart';
import 'package:sahotech_portfolio/responsive/tablet_screen/t_project.dart';
import 'package:sahotech_portfolio/responsive/tablet_screen/t_service.dart';

class TabletMainScreen extends StatefulWidget {
  const TabletMainScreen({super.key});

  @override
  State<TabletMainScreen> createState() => _TabletMainScreenState();
}

class _TabletMainScreenState extends State<TabletMainScreen> {
  late final AssetBundle? bundle;
  // List of Nav text
  List<dynamic> navItems = [
    {'text': 'Home', 'icon': Icons.home_outlined, 'page': THomeScreen()},
    {
      'text': 'About',
      'icon': Icons.person_outline,
      'page': const TabletAboutMe()
    },
    {
      'text': 'Projects',
      'icon': Icons.personal_injury_outlined,
      'page': const TProjectScreen()
    },
    {
      'text': 'Services',
      'icon': Icons.design_services,
      'page': const TServicesScreen()
    },
    {
      'text': 'Contact',
      'icon': Icons.email_outlined,
      'page': const TContactScreen()
    },
  ];

  int currentIndex = 0;

  final GlobalKey<ScaffoldState> sccaffoldState = GlobalKey<ScaffoldState>();

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

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(
              color: Colors.amber,
            ),
          )
        : Scaffold(
            key: sccaffoldState,
            backgroundColor: bgColor,
            drawer: customeDrawer(ss),
            body: Stack(
              children: [
                // Main Body
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                  ),
                  child: navItems[currentIndex]['page'],
                ),

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
                      backgroundImage: Image.network(
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white10,
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(width: 7),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white10,
                        child: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(width: 7),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white10,
                        child: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(width: 7),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white10,
                        child: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white70,
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
