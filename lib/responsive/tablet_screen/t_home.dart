import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/controllers/email_controller.dart';
import 'package:sahotech_portfolio/controllers/url_launcher_controller.dart';

import 'package:sahotech_portfolio/widgets/footer_widget.dart';

class THomeScreen extends StatefulWidget {
  const THomeScreen({super.key});

  @override
  State<THomeScreen> createState() => _THomeScreenState();
}

class _THomeScreenState extends State<THomeScreen> {
  final TextEditingController email = TextEditingController();

  final TextEditingController name = TextEditingController();

  final TextEditingController subject = TextEditingController();

  final TextEditingController message = TextEditingController();

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    final ss = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              width: ss.width,
              height: ss.height,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 6, 5, 20),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(width: ss.width / 2.5),
                    ss.width < 800
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Greeting
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24),
                                    child: Text(
                                      'Hello everyone!',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 10),

                                // Name
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    child: RichText(
                                      text: const TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'My name is ',
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' Peter Saho',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),

                                // Intro
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    child: SizedBox(
                                      width: 500.0,
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
                                              speed: const Duration(
                                                  milliseconds: 100),
                                              "I'm Mobile and Web App Developer",
                                              textStyle: const TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            TyperAnimatedText(
                                              speed: const Duration(
                                                  milliseconds: 100),
                                              "I'm UI, UX and Product Designer",
                                              textStyle: const TextStyle(
                                                  color: Colors.white70,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // Github and LinkedIn  Link
                                Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 45,
                                        child: OutlinedButton.icon(
                                          onPressed: () {
                                            UrlLauncherController()
                                                .launchGithub();
                                          },
                                          icon: const Icon(
                                            FontAwesomeIcons.github,
                                          ),
                                          label: const Text(
                                            'Check my Github',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      SizedBox(
                                        height: 45,
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            UrlLauncherController()
                                                .launchLinkedIn();
                                          },
                                          icon: const Icon(
                                            FontAwesomeIcons.linkedin,
                                          ),
                                          label: const Text(
                                            'Check my LinkedIn',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),

                                // Profile image
                                CircleAvatar(
                                  backgroundColor: Colors.white10,
                                  radius: 100,
                                  backgroundImage: Image.asset(
                                    profile,
                                    fit: BoxFit.fill,
                                  ).image,
                                ),
                              ],
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Hello everyone!',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'My name is ',
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' Peter Saho',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    width: 500.0,
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
                                            speed: const Duration(
                                                milliseconds: 100),
                                            "I'm Mobile and Web App Developer",
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          TyperAnimatedText(
                                            speed: const Duration(
                                                milliseconds: 100),
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
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 45,
                                        child: OutlinedButton.icon(
                                          onPressed: () {},
                                          icon: const Icon(
                                            FontAwesomeIcons.github,
                                          ),
                                          label: const Text(
                                            'Check my Github',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      SizedBox(
                                        height: 45,
                                        child: ElevatedButton.icon(
                                          onPressed: () {},
                                          icon: const Icon(
                                            FontAwesomeIcons.linkedin,
                                          ),
                                          label: const Text(
                                            'Check my LinkedIn',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white10,
                                radius: 100,
                                backgroundImage: Image.asset(
                                  profile,
                                  fit: BoxFit.fill,
                                ).image,
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
          ),

          // About Me
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

                Row(
                  children: [
                    skillContainer('HTML', '70', 0.7),
                    const SizedBox(width: 20),
                    skillContainer('CSS', '60', 0.60),
                  ],
                ),
                const SizedBox(height: 20),

                Row(
                  children: [
                    skillContainer('JS', '45', 0.45),
                    const SizedBox(width: 20),
                    skillContainer(' DART', '88', 0.88),
                  ],
                ),
                const SizedBox(height: 20),

                Row(
                  children: [
                    skillContainer('FIGMA', '91', 0.91),
                    const SizedBox(width: 20),
                    skillContainer('NODE JS', '52', 0.52),
                  ],
                ),

                // skillsContainer(ss.width * 0.8)
              ],
            ),
          ),

          // Projects
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
              ],
            ),
          ),

          //Services
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
                Container(
                  padding: const EdgeInsets.all(24),
                  // height: ss.height / 2,
                  color: Colors.white,
                  width: ss.width,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      childAspectRatio: screenWidth < 800
                          ? 2 / 1.9
                          : screenWidth < 900
                              ? 2 / 1.5
                              : 2 / 1,
                    ),
                    shrinkWrap: true,
                    primary: false,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: servicesItem.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
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
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Text(
                                  servicesItem[index]["info"],
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
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
                    child: authoScrollTest(ss, context),
                  ),
                ),
                // const SizedBox(height: 50),
                const SizedBox(height: 50),
              ],
            ),
          ),
          // Contact
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
                const Text(
                  'I am interested in connecting with you and would love to hear more about your thoughts and ideas. Please feel free to reach out to me at your convenience.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: myBoxShadow,
                        ),
                        child: Column(
                          children: [
                            contactrow(
                              ss: ss,
                              icon: Icons.location_on_outlined,
                              title: "Location",
                              text: "HUVU AVENUE, Takoradi, Ghana",
                            ),
                            const SizedBox(height: 20),
                            contactrow(
                              ss: ss,
                              icon: Icons.email_outlined,
                              title: "Email",
                              text: "sahotech06@gmail.com",
                            ),
                            const SizedBox(height: 20),
                            contactrow(
                              ss: ss,
                              icon: Icons.call_outlined,
                              title: "Call",
                              text: "+233 242780205, +233 256787512 ",
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: Form(
                        key: formKey,
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: myBoxShadow,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('Your Name'),
                                          const SizedBox(height: 10),
                                          TextFormField(
                                            cursorColor: Colors.amber,
                                            controller: name,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Enter your name';
                                              } else {
                                                return null;
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 40),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('Your Email'),
                                          const SizedBox(height: 10),
                                          TextFormField(
                                            cursorColor: Colors.amber,
                                            controller: email,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            validator: (value) {
                                              if (value!.isNotEmpty ||
                                                  value.contains('@')) {
                                                return null;
                                              } else {
                                                return 'Enter your name';
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text('Subject'),
                              const SizedBox(height: 10),
                              TextFormField(
                                  cursorColor: Colors.amber,
                                  controller: subject,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter subject';
                                    } else {
                                      return null;
                                    }
                                  }),
                              const SizedBox(height: 20),
                              const Text('Message'),
                              const SizedBox(height: 10),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter your name';
                                  } else {
                                    return null;
                                  }
                                },
                                cursorColor: Colors.amber,
                                controller: message,
                                autocorrect: true,
                              ),
                              const SizedBox(height: 30),
                              Center(
                                child: SizedBox(
                                  height: 45,
                                  width: ss.width * 0.2,
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      if (formKey.currentState!.validate()) {
                                        setState(() {
                                          isLoading = true;
                                        });
                                        await EmailController()
                                            .sendEmail(
                                          context: context,
                                          name: name.text,
                                          email: email.text,
                                          subject: subject.text,
                                          message: message.text,
                                        )
                                            .whenComplete(() {
                                          setState(() {
                                            isLoading = false;
                                          });
                                        });
                                      }
                                    },
                                    child: isLoading
                                        ? const Center(
                                            child: CircularProgressIndicator(
                                              color: Colors.white,
                                            ),
                                          )
                                        : const Text('Submit'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const CustomFooter(),
        ],
      ),
    );
  }
}
