import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';

class DProjectScreen extends StatefulWidget {
  const DProjectScreen({super.key});

  @override
  State<DProjectScreen> createState() => _DProjectScreenState();
}

class _DProjectScreenState extends State<DProjectScreen> {
  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          padding: const EdgeInsets.all(24),
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
