import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/models/screenshot.dart';
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
                padding: const EdgeInsets.all(16),
                height: ss.height - 100,
                width: ss.width,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: myBoxShadow,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        height: ss.height - 100,
                        width: ss.width / 3,
                        decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage(profile),
                            // ),
                            ),
                        child: Image.asset(
                          "images/s1.jpg",
                          fit: BoxFit.fitHeight,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    );
                  },
                ),
              ),
              // StreamBuilder(
              //   stream: firestore.collection("screenShots").snapshots(),
              //   builder: (BuildContext context,
              //       AsyncSnapshot<QuerySnapshot> snapshot) {
              //     if (snapshot.connectionState == ConnectionState.waiting) {
              //       return const Center(
              //         child: CircularProgressIndicator(
              //           color: Colors.amber,
              //         ),
              //       );
              //     } else if (snapshot.connectionState == ConnectionState.done ||
              //         snapshot.data!.docs.isEmpty) {
              //       return const Center(
              //         child: Text('No data found'),
              //       );
              //     } else {
              //       var screenshotData = snapshot.data!.docs;
              //       return GridView.builder(
              //         shrinkWrap: true,
              //         primary: false,
              //         gridDelegate:
              //             const SliverGridDelegateWithFixedCrossAxisCount(
              //           crossAxisCount: 4,
              //           // mainAxisSpacing: 20,
              //         ),
              //         itemCount: screenshotData.length,
              //         itemBuilder: (BuildContext context, int index) {
              //           ScreenShotModel model =
              //               ScreenShotModel.froSnap(screenshotData[index]);
              //           // print(screenshotData[index]);
              //           return SizedBox(
              //             child: Image.network(
              //               model.url,
              //               errorBuilder: (context, error, stackTrace) {
              //                 return Container(
              //                   height: 200,
              //                   color: Colors.black,
              //                   child: Center(child: Text(error.toString())),
              //                 );
              //               },
              //             ),
              //           );
              //         },
              //       );
              //     }
              //   },
              // ),
              const SizedBox(height: 30),
              const CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
