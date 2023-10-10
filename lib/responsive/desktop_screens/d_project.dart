import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/widgets/all_project.dart';
import 'package:sahotech_portfolio/widgets/apps.dart';
import 'package:sahotech_portfolio/widgets/designs.dart';
import 'package:sahotech_portfolio/widgets/webs.dart';

class DProjectScreen extends StatefulWidget {
  const DProjectScreen({super.key});

  @override
  State<DProjectScreen> createState() => _DProjectScreenState();
}

class _DProjectScreenState extends State<DProjectScreen> {
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
                    crossAxisCount: 4,
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
              )

              // Column(
              //   // mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     /// tabs
              //     Card(
              //       elevation: 1,
              //       child: Container(
              //         padding: const EdgeInsets.all(8),
              //         height: 40,
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(50),
              //         ),
              //         child: ListView.builder(
              //           scrollDirection: Axis.horizontal,
              //           shrinkWrap: true,
              //           primary: false,
              //           itemCount: tabItems.length,
              //           itemBuilder: (BuildContext context, int index) {
              //             return Center(
              //               child: Padding(
              //                 padding: const EdgeInsets.symmetric(
              //                     horizontal: 16, vertical: 4),
              //                 child: CupertinoButton(
              //                   padding: EdgeInsets.zero,
              //                   onPressed: () {
              //                     setState(() {
              //                       currentIndex = index;
              //                     });
              //                   },
              //                   child: Text(
              //                     tabItems[index]['text'],
              //                     style: TextStyle(
              //                       fontSize: 16,
              //                       fontWeight: FontWeight.w500,
              //                       color: currentIndex == index
              //                           ? Colors.amber
              //                           : Colors.black54,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             );
              //           },
              //         ),
              //       ),
              //     ),
              //     // Main Body
              //     Expanded(child: tabItems[currentIndex]['screen'])
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
