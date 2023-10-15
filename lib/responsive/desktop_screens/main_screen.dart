// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/controllers/url_launcher_controller.dart';
import 'package:sahotech_portfolio/responsive/desktop_screens/d_about_me.dart';
import 'package:sahotech_portfolio/responsive/desktop_screens/d_contact.dart';
import 'package:sahotech_portfolio/responsive/desktop_screens/d_home.dart';
import 'package:sahotech_portfolio/responsive/desktop_screens/d_project.dart';
import 'package:sahotech_portfolio/responsive/desktop_screens/d_service.dart';
import 'package:sahotech_portfolio/widgets/footer_widget.dart';
import 'package:sahotech_portfolio/widgets/loading_widget.dart';

class DesktopMainScreen extends StatefulWidget {
  const DesktopMainScreen({super.key});

  @override
  State<DesktopMainScreen> createState() => _DesktopMainScreenState();
}

class _DesktopMainScreenState extends State<DesktopMainScreen> {
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

  late final AssetBundle? bundle;
  // List of Nav text
  List<dynamic> navItems = [
    {'text': 'Home', 'icon': Icons.home_outlined, 'page': const DHomeScreen()},
    {
      'text': 'About',
      'icon': Icons.person_outline,
      'page': const DesktopAboutMe()
    },
    {
      'text': 'Projects',
      'icon': Icons.personal_injury_outlined,
      'page': const DProjectScreen()
    },
    {
      'text': 'Services',
      'icon': Icons.design_services,
      'page': const DServicesScreen()
    },
    {
      'text': 'Contact',
      'icon': Icons.email_outlined,
      'page': const DContactScreen()
    },
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);
    return isLoading
        ? const LoadingWidget()
        : Scaffold(
            backgroundColor: bgColor,
            body: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4, bottom: 4, right: 2),
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
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
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
                        const Spacer(),
                        const CustomFooter(),
                      ],
                    ),
                  ),
                ),

                // Main Body
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 4,
                    ),
                    child: navItems[currentIndex]['page'],
                  ),
                ),
              ],
            ),
          );
  }
}
