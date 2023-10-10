import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/responsive/desktop_screens/main_screen.dart';
import 'package:sahotech_portfolio/responsive/mobile_screens/main_screen.dart';
import 'package:sahotech_portfolio/responsive/tablet_screen/t_main_screen.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileMainScreen();
        } else if (constraints.maxWidth < 1200) {
          return const TabletMainScreen();
        } else {
          return const DesktopMainScreen();
        }
      },
    );
  }
}
