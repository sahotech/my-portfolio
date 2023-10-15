import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/widgets/footer_widget.dart';

class MServicesScreen extends StatefulWidget {
  const MServicesScreen({super.key});

  @override
  State<MServicesScreen> createState() => _MServicesScreenState();
}

class _MServicesScreenState extends State<MServicesScreen> {
  int current = 0;

  // late BoxConstraints constraints;
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // final ss = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
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
                    text: "Services",
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
              'As a developer and designer, I have a unique skills set that combines technical expertices with creative design sensibilities. This allows me to create visually appealing and fuctional digital products. web and applications. My ability to bridge the gap between aesthetics and functionality makes me to a valuable asset in the World of Technology and Design.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: ListView.builder(
              shrinkWrap: true,
              primary: false,
              // physics: const AlwaysScrollableScrollPhysics(),
              itemCount: servicesItem.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: myBoxShadow,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.amber,
                              child: Icon(
                                servicesItem[index]["icon"],
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              servicesItem[index]["text"],
                              style: TextStyle(
                                color: titleColor,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          servicesItem[index]["info"],
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            // overflow: TextOverflow.ellipsis,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Text(
              "Testimonials",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Text(
              "These are some of Testimonial I received for Good Work People that i have work with as Developer in my Carrier.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: SizedBox(
              height: 400,
              child: ImageSlideshow(
                autoPlayInterval: 5000,
                indicatorColor: Colors.amber,
                indicatorBackgroundColor: Colors.grey,
                indicatorRadius: 7,
                isLoop: true,
                indicatorPadding: 6,
                onPageChanged: (value) {},
                children: testimonial
                    .map(
                      (e) => Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: myBoxShadow,
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                e["pic"],
                              ),
                            ),
                            const SizedBox(height: 10),
                            const SizedBox(height: 10),
                            Text(e['name']),
                            const SizedBox(height: 5),
                            Text(e['role']),
                            RichText(
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "❝ ",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.amber,
                                    ),
                                  ),
                                  TextSpan(
                                    text: e['testi'],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  const TextSpan(
                                      text: " ❞",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.amber,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const CustomFooter()
        ],
      ),
    );
  }

  authoScrollTest(Size ss) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      }),
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: testimonial.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                height: ss.height / 2,
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: myBoxShadow,
                ),
                child: Column(
                  children: [
                    // const SizedBox(height: 10),
                    const CircleAvatar(
                      radius: 50,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      testimonial[index]['name'],
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: titleColor,
                      ),
                    ),
                    Text(
                      testimonial[index]['role'],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black38,
                      ),
                    ),
                    Text(
                      testimonial[index]['testi'],
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  servicesContainer(
    IconData icon,
    String title,
    String info,
    Size ss,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: myBoxShadow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 25,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: ss.width / 12,
                  child: Text(
                    info,
                    maxLines: 100,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
