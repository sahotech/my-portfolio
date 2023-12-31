import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';

import 'package:sahotech_portfolio/widgets/footer_widget.dart';

class MProjectScreen extends StatefulWidget {
  const MProjectScreen({super.key});

  @override
  State<MProjectScreen> createState() => _MProjectScreenState();
}

class _MProjectScreenState extends State<MProjectScreen> {
  // List of Tab items

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: RichText(
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
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Text(
              'Here are some of my Projects, the rest of the project are available Github.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            // padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber,
              padding: const EdgeInsets.all(8),
              child: const Text('Western tyre App'),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            // padding: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Container(
              padding: const EdgeInsets.all(16),
              height: ss.height - 200,
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
                        height: ss.height - 200,
                        decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage(profile),
                            // ),
                            ),
                        child: western[index] != null
                            ? Image.asset(
                                western[index],
                                fit: BoxFit.fitHeight,
                                filterQuality: FilterQuality.high,
                              )
                            : const CircularProgressIndicator(
                                color: Colors.amber,
                              ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Container(
              color: Colors.amber,
              padding: const EdgeInsets.all(8),
              child: const Text('News Portal App'),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Container(
              padding: const EdgeInsets.all(16),
              height: ss.height - 200,
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
                        height: ss.height - 200,
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
          ),
          const SizedBox(height: 30),
          const CustomFooter()
        ],
      ),
    );
  }
}
