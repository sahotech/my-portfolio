import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/responsive/desktop_screens/d_about_me.dart';
import 'package:sahotech_portfolio/responsive/desktop_screens/d_contact.dart';
import 'package:sahotech_portfolio/responsive/desktop_screens/d_project.dart';
import 'package:sahotech_portfolio/responsive/desktop_screens/d_service.dart';

class DHomeScreen extends StatelessWidget {
  const DHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: ss.width,
            height: ss.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                filterQuality: FilterQuality.high,
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                  profile,
                ),
              ),
            ),
            child: Container(
              color: Colors.black54,
              width: ss.width,
              height: ss.height,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: ss.width / 2.5),
                    const Text(
                      "Peter Saho",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(
                      width: 500.0,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Bobbers',
                        ),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: const Duration(seconds: 1),
                          animatedTexts: [
                            TyperAnimatedText(
                              speed: const Duration(milliseconds: 100),
                              "I'm Mobile and Web App Developer",
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TyperAnimatedText(
                              speed: const Duration(milliseconds: 100),
                              "I'm UI, UX and Product Designer",
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const DesktopAboutMe(),
          const DProjectScreen(),
          const DServicesScreen(),
          const DContactScreen(),
        ],
      ),
    );
  }
}
