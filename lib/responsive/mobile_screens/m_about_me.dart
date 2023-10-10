import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/widgets/footer_widget.dart';

class MobileAboutMe extends StatelessWidget {
  const MobileAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    // final ss = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      // controller: controller,
      child: Container(
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
            const SizedBox(height: 30),
            const CustomFooter()
          ],
        ),
      ),
    );
  }
}
