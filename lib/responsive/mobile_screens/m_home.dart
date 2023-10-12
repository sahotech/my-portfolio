import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:sahotech_portfolio/constant.dart';

import 'package:sahotech_portfolio/widgets/footer_widget.dart';

class MHomeScreen extends StatefulWidget {
  const MHomeScreen({super.key});

  @override
  State<MHomeScreen> createState() => _MHomeScreenState();
}

class _MHomeScreenState extends State<MHomeScreen> {
  final TextEditingController email = TextEditingController();

  final TextEditingController name = TextEditingController();

  final TextEditingController subject = TextEditingController();

  final TextEditingController message = TextEditingController();

  // bool isLoading = false;

  // @override
  // void initState() {
  //   super.initState();

  //   isLoading = true;
  //   Future.delayed(const Duration(seconds: 8), () {
  //     setState(() {
  //       isLoading = false;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: ss.width,
            height: ss.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                filterQuality: FilterQuality.high,
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                  profile,
                ),
              ),
            ),
            child: Container(
              color: Colors.black54,
              width: ss.width,
              height: ss.height,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 100),
                    const Text(
                      "Peter Saho",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(
                      width: 300.0,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Bobbers',
                        ),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: const Duration(seconds: 1),
                          animatedTexts: [
                            TyperAnimatedText(
                              speed: const Duration(milliseconds: 100),
                              "I'm Mobile and Web App Developer",
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TyperAnimatedText(
                              speed: const Duration(milliseconds: 100),
                              "I'm UI, UX and Product Designer",
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // About me
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                      text: "About ",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    TextSpan(
                      text: "Me",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    )
                  ]),
                ),

                const SizedBox(height: 20),
                const Text(
                  "I'm  talented mobile and web app developer hailing from West Africa, specifically Ghana's Western Region. With a strong skillset in Flutter development, he combines technical expertise with a keen eye for design, specializing in UI and UX. i am  passionate about crafting user-friendly digital experiences and has a bright future in the world of app development and design. With a commitment to excellence, Peter's educational journey has provided him with the knowledge and expertise to excel in the digital realm.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  "I'm passionate about Mobile(both IOS & ANDROID)  and Web  Application Development using Flutter Framework developed by Google Team and Performing all Firebase Configuration such Authenctication, CloudFirestore and Real Time Database. I am also farmiliar  with Graphic design principle for creating visually appearling and User-freindly interfacesin Figma for UI & UX design",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  "Learning new things is my preasure and i am constantly seeking new challenges to expand my knowledge and skills.",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 30),

                /// Skills
                ///
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                      text: "My ",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    TextSpan(
                      text: "Skills",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    )
                  ]),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Writing code using langiages: HTML, CSS, JS, DART and Designing using Figma and others.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                skillWidget(title: "HTML", percent: "70", value: 0.7),
                const SizedBox(height: 20),
                skillWidget(title: "CSS", percent: "60", value: 0.6),
                const SizedBox(height: 20),
                skillWidget(title: "JS", percent: "45", value: 0.45),
                const SizedBox(height: 20),
                skillWidget(title: "DART", percent: "88", value: 0.88),
                const SizedBox(height: 20),
                skillWidget(title: "FIGMA", percent: "91", value: 0.91),
                const SizedBox(height: 20),
                skillWidget(title: "NODE JS", percent: "52", value: 0.52),
                // const SizedBox(height: 20),
              ],
            ),
          ),
          // Project
          Container(
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
              ],
            ),
          ),

          // Services
          Container(
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
                ListView.builder(
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
                SizedBox(
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
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                // const SizedBox(height: 50),
                const SizedBox(height: 50),
              ],
            ),
          ),
          // Contct
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Contact ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      TextSpan(
                        text: "Me",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: myBoxShadow,
                  ),
                  child: const Column(
                    children: [
                      // contactrow(
                      //   ss: ss,
                      //   icon: Icons.location_on_outlined,
                      //   title: "Location",
                      //   text: "HUVU AVENUE, Takoradi, Ghana",
                      // ),
                      // const SizedBox(height: 20),
                      // contactrow(
                      //   ss: ss,
                      //   icon: Icons.email_outlined,
                      //   title: "Email",
                      //   text: "sahotech06@gmail.com",
                      // ),
                      SizedBox(height: 20),
                      // contactrow(
                      //   ss: ss,
                      //   icon: Icons.call_outlined,
                      //   title: "Call",
                      //   text: "+233 242780205, +233 256787512 ",
                      // ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: myBoxShadow,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Your Name'),
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                        ),
                        cursorColor: Colors.amber,
                        controller: name,
                      ),
                      const SizedBox(height: 20),
                      const Text('Your Email'),
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                        ),
                        cursorColor: Colors.amber,
                        controller: email,
                      ),
                      const SizedBox(height: 20),
                      const Text('Subject'),
                      const SizedBox(height: 10),
                      TextFormField(
                        cursorColor: Colors.amber,
                        controller: subject,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text('Message'),
                      const SizedBox(height: 10),
                      TextFormField(
                        maxLines: 5,
                        cursorColor: Colors.amber,
                        controller: message,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                      // const SizedBox(height: 20),
                      const SizedBox(height: 30),
                      Center(
                        child: SizedBox(
                          height: 45,
                          width: ss.width * 0.5,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Submit'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomFooter(),
          ),
        ],
      ),
    );
  }
}
