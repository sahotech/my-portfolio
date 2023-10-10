import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    // final ss = MediaQuery.sizeOf(context);
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
              SizedBox(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1 / 1.8,
                  ),
                  itemCount: 8,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (BuildContext context, int index) {
                    return CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      child: Container(
                        color: Colors.amber,
                      ),
                    );
                  },
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
