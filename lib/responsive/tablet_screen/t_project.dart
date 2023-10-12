import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/widgets/all_project.dart';
import 'package:sahotech_portfolio/widgets/apps.dart';
import 'package:sahotech_portfolio/widgets/designs.dart';
import 'package:sahotech_portfolio/widgets/footer_widget.dart';
import 'package:sahotech_portfolio/widgets/webs.dart';

class TProjectScreen extends StatefulWidget {
  const TProjectScreen({super.key});

  @override
  State<TProjectScreen> createState() => _TProjectScreenState();
}

class _TProjectScreenState extends State<TProjectScreen> {
  // List of Tab items
  List tabItems = ['ALL', 'APP', 'WEB', 'DESIGN'];
  List<Widget> pages = [
    const AllProject(),
    const AppProject(),
    const WebProject(),
    const DesignProject(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);
    return DefaultTabController(
      length: tabItems.length,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "My ",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    TextSpan(
                      text: "Projects",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Here are some of my Projects, the rest of the project are available Github.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.amber,
                padding: const EdgeInsets.all(8),
                child: const Text('Western tyre App'),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                height: ss.height - 100,
                width: ss.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: myBoxShadow,
                ),
                child: ScrollConfiguration(
                  behavior:
                      ScrollConfiguration.of(context).copyWith(dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                  }),
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: western.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          height: ss.height - 150,
                          decoration: const BoxDecoration(
                              // image: DecorationImage(
                              //   image: AssetImage(profile),
                              // ),
                              ),
                          child: Image.asset(
                            western[index],
                            fit: BoxFit.fitHeight,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.amber,
                padding: const EdgeInsets.all(8),
                child: const Text('News Portal App'),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                height: ss.height - 100,
                width: ss.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: myBoxShadow,
                ),
                child: ScrollConfiguration(
                  behavior:
                      ScrollConfiguration.of(context).copyWith(dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                  }),
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: newportal.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          height: ss.height - 150,
                          decoration: const BoxDecoration(
                              // image: DecorationImage(
                              //   image: AssetImage(profile),
                              // ),
                              ),
                          child: Image.asset(
                            newportal[index],
                            fit: BoxFit.fitHeight,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
