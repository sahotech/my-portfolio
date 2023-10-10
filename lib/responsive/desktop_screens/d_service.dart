import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:sahotech_portfolio/constant.dart';

class DServicesScreen extends StatefulWidget {
  const DServicesScreen({super.key});

  @override
  State<DServicesScreen> createState() => _DServicesScreenState();
}

class _DServicesScreenState extends State<DServicesScreen> {
  // late BoxConstraints constraints;
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
            const SizedBox(height: 10),
            const Text(
              'As a developer and designer, I have a unique skills set that combines technical expertices with creative design sensibilities. This allows me to create visually appealing and fuctional digital products. web and applications. My ability to bridge the gap between aesthetics and functionality makes me to a valuable asset in the World of Technology and Design.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(24),
              height: ss.height / 2,
              color: Colors.white,
              width: ss.width,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 3,
                ),
                shrinkWrap: true,
                primary: false,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: servicesItem.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
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
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Testimonials",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "These are some of Testimonial I received for Good Work People that i have work with as Developer in my Carrier.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),

            SingleChildScrollView(
              child: SizedBox(
                height: ss.height / 2,
                child: authoScrollTest(ss),
              ),
            ),
            // const SizedBox(height: 50),
            const SizedBox(height: 50),
          ],
        ),
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
        // physics: const AlwaysScrollableScrollPhysics(),

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
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        testimonial[index]["pic"],
                      ),
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
                            text: testimonial[index]['testi'],
                            style: const TextStyle(
                              fontSize: 16,
                              // fontWeight: FontWeight.w600,
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
                    // Text(
                    //   testimonial[index]['testi'],
                    //   maxLines: 5,
                    //   overflow: TextOverflow.ellipsis,
                    //   style: const TextStyle(
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.w400,
                    //     color: Colors.black45,
                    //   ),
                    // ),
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
