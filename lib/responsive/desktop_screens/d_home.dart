import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/controllers/url_launcher_controller.dart';
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
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
              width: ss.width,
              height: ss.height,
              color: footerColor,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(width: ss.width / 2.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hello everyone!',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'My name is ',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Peter Saho',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
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
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                SizedBox(
                                  height: 45,
                                  child: OutlinedButton.icon(
                                    onPressed: () {
                                      UrlLauncherController().launchGithub();
                                    },
                                    icon: const Icon(
                                      FontAwesomeIcons.github,
                                    ),
                                    label: const Text(
                                      'Check my Github',
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                SizedBox(
                                  height: 45,
                                  child: ElevatedButton.icon(
                                    onPressed: () {
                                      UrlLauncherController().launchLinkedIn();
                                    },
                                    icon: const Icon(
                                      FontAwesomeIcons.linkedin,
                                    ),
                                    label: const Text(
                                      'Check my LinkedIn',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                          radius: 150,
                          backgroundImage: Image.asset(
                            profile,
                            fit: BoxFit.fill,
                          ).image,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const DesktopAboutMe(),
          const SizedBox(
            height: 20,
          ),
          const DProjectScreen(),
          const SizedBox(
            height: 20,
          ),
          const DServicesScreen(),
          const SizedBox(
            height: 20,
          ),
          const DContactScreen(),
        ],
      ),
    );
  }
}
