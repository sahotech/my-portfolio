import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

var firestore = FirebaseFirestore.instance;

const String profile =
    'https://firebasestorage.googleapis.com/v0/b/sahotech-portfolio.appspot.com/o/images%2FFB_IMG_1588082663797%20(2).jpg?alt=media&token=d100f4b0-625b-45c0-9b19-c44d9ae12e34&_gl=1*1iohteh*_ga*ODk3ODcyMDkzLjE2OTQ5NjI3NzY.*_ga_CW55HF8NVT*MTY5NjQyMTE1OS4yMi4xLjE2OTY0MjE0ODEuNjAuMC4w';

myLine(width) {
  return Container(height: 3, width: width, color: Colors.amber);
}

var titleColor = const Color.fromARGB(255, 17, 3, 58);

var bgColor = const Color.fromARGB(255, 244, 247, 248);

var footerColor = const Color.fromARGB(255, 6, 5, 20);

var myBoxShadow = const [
  BoxShadow(
    color: Colors.black12,
    offset: Offset(
      2.0,
      2.0,
    ),
    blurRadius: 5.0,
    spreadRadius: 2.0,
  ), //BoxShadow
  BoxShadow(
    color: Colors.white,
    offset: Offset(0.0, 0.0),
    blurRadius: 0.0,
    spreadRadius: 0.0,
  ), //BoxShadow
];

// Skill Container
skillContainer(String language, String percentage, double value) {
  return Expanded(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(language),
            Text("$percentage%"),
          ],
        ),
        const SizedBox(height: 5),
        LinearProgressIndicator(
          color: Colors.amber,
          value: value,
          minHeight: 15,
          borderRadius: BorderRadius.circular(3),
        ),
      ],
    ),
  );
}

// contactrow({
//   required Size ss,
//   required IconData icon,
//   required String title,
//   required String text,
// }) {
//   return Row(
//     children: [
//       CircleAvatar(
//         backgroundColor: Colors.amber.shade100,
//         child: Icon(
//           icon,
//           color: Colors.amber.shade800,
//         ),
//       ),
//       const SizedBox(width: 20),
//       Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.w500,
//               color: Colors.black,
//             ),
//           ),
//           SizedBox(
//             width: ss.width / 1.7,
//             child: Text(
//               text,
//               maxLines: 2,
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.black38,
//               ),
//             ),
//           )
//         ],
//       )
//     ],
//   );
// }

authoScrollTest(Size ss, BuildContext context) {
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
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      testimonial[index]["pic"],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    testimonial[index]['name'],
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
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
          ),
        );
      },
    ),
  );
}

skillWidget({
  required double value,
  required String title,
  required String percent,
}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text("$percent%"),
        ],
      ),
      const SizedBox(height: 10),
      LinearProgressIndicator(
        color: Colors.amber,
        value: value,
        minHeight: 15,
        borderRadius: BorderRadius.circular(3),
      ),
    ],
  );
}

// List of screenshot
List screenShots = [
  "images/s1.jpg",
  "images/s2.jpg",
  "images/s3.jpg",
  "images/s4.jpg",
  "images/s5.jpg",
  "images/s6.jpg",
  "images/s7.jpg",
  "images/s8.jpg",
  "images/s9.jpg",
  "images/s10.jpg",
  "images/s11.jpg",
  // "images/s1.jpg",
];

/// List Testimonial
List servicesItem = [
  {
    "icon": Icons.phone_iphone_outlined,
    "text": "IOS App",
    'info':
        'IOS development involves creating Mobile Application specifically for Apple\'s IOS operating system, which powers devices like iPhones and iPads.'
  },
  {
    "icon": Icons.phone_android_outlined,
    "text": "Android App",
    'info':
        'Android development focuses on on creating mobile applications for devices runing on Adroid operating systems Only. And for apps that cater to the deverse Android Ecosystem, offering versatility and customization options.'
  },
  {
    "icon": Icons.desktop_mac_outlined,
    "text": "Web",
    'info':
        'Web development encompasses the creation of websites and web applications that can be accessed  via web browsers.It involves in Various Technologies.'
  },
  {
    "icon": Icons.perm_data_setting_outlined,
    "text": "Design",
    'info':
        'Web development encompasses the creation of websites and web applications that can be accessed  via web browsers.It involves in Various Technologies.'
  },
];

List testimonial = [
  {
    "pic": "images/profile.png",
    'name': "Derek",
    'role': "Founder and Mentor",
    "testi":
        "Working with Saho Tech was a game-changer for your Project. His coding skills are top-notch, and his delivered results that exceeded our expectations. Truly a developer i'd recommended to anyone!",
  },
  {
    "pic": "images/profile.png",
    'name': "Benjamin Goku",
    'role': "Student At TTU",
    "testi":
        "I've had the pleasure of collaborating with Saho Tech on several projects, and each time, their coding expertise and problem-solving abilities shine through. If you need a developer who can get the job done, Saho Tech is the one!",
  },
  {
    "pic": "images/profile.png",
    'name': "Richard Amenudzi",
    'role': "Student At TTU",
    "testi":
        "Saho Tech is a developer who consistently goes above and beyond. Their attention to detail, dedication, and innovative solutions have made a significant impact on our software development. We look forward to many more successful projects together.",
  },
  {
    "pic": "images/profile.png",
    'name': "Kesta Rich",
    'role': "Student At TTU",
    "testi":
        "Hiring Saho Tech was one of the best decisions we made. Their coding skills are matched only by their professionalism and commitment to delivering quality work. It's a pleasure to work with such a talented developer.",
  },
  {
    "pic": "images/profile.png",
    'name': "Benjamin Goku",
    'role': "Student At TTU",
    "testi":
        "I've had the privilege of witnessing Saho Tech's coding prowess firsthand. They have an impressive ability to tackle complex challenges and turn them into elegant solutions. If you're seeking a developer who can make your vision a reality, Saho Tech is the one to trust.",
  },
  {
    "pic": "images/profile.png",
    'name': "Benjamin Goku",
    'role': "Student At TTU",
    "testi":
        "I've worked with many developers, but Saho Tech stands out for their technical expertise and strong work ethic. They consistently meet deadlines and produce code that is both efficient and reliable. Highly recommended!",
  },
  {
    "pic": "images/profile.png",
    'name': "Benjamin Goku",
    'role': "Student At TTU",
    "testi":
        "When it comes to software development, Saho Tech is a true professional. Their coding skills are exceptional, and their ability to understand project requirements and deliver results is unparalleled. It's a pleasure to have Saho Tech on our team.",
  },
  {
    "pic": "images/profile.png",
    'name': "Benjamin Goku",
    'role': "Student At TTU",
    "testi":
        "Collaborating with Saho Tech has been a transformative experience for our development projects. Their innovative solutions and commitment to quality have had a profound impact on our success. I can't recommend Saho Tech highly enough.",
  },
];
