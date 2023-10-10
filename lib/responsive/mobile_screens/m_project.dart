import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/widgets/all_project.dart';
import 'package:sahotech_portfolio/widgets/apps.dart';
import 'package:sahotech_portfolio/widgets/designs.dart';
import 'package:sahotech_portfolio/widgets/footer_widget.dart';
import 'package:sahotech_portfolio/widgets/webs.dart';

class MProjectScreen extends StatefulWidget {
  const MProjectScreen({super.key});

  @override
  State<MProjectScreen> createState() => _MProjectScreenState();
}

class _MProjectScreenState extends State<MProjectScreen> {
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
      length: 4,
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
              SizedBox(
                // height: ss.height,
                width: ss.width * 0.8,
                child: ListView.builder(
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        height: 560,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: myBoxShadow,
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            const Text('data'),
                            SizedBox(
                              width: ss.width * 0.6,
                              height: 500,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.black38,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              const CustomFooter()
            ],
          ),
        ),
      ),
    );
  }
}
