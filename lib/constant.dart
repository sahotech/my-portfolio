import 'dart:ui';

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// var firestore = FirebaseFirestore.instance;

const String profile = 'images/profile.jpg';

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

contactrow({
  required Size ss,
  required String title,
  required String text,
  required IconData icon,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: Colors.amber.shade100,
        child: Icon(
          icon,
          color: Colors.amber.shade500,
        ),
      ),
      const SizedBox(width: 10),
      Flexible(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              text,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    ],
  );
}

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

myDialog({
  required BuildContext context,
  required String message,
  required String title,
  required IconData icon,
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 32,
              color: Colors.black54,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Ok',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.amber.shade500,
              ),
            ),
          )
        ],
      );
    },
  );
}

showBanner(
  BuildContext context,
  String msg,
  IconData icon,
) {
  return ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
    backgroundColor: Colors.black,
    // animation: ,

    padding: const EdgeInsets.symmetric(horizontal: 24),
    elevation: 1,
    leading: Icon(
      icon,
      color: Colors.white,
    ),
    content: Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
          width: 400,
          child: Text(
            msg,
            style: const TextStyle(
              color: Colors.white,
            ),
          )),
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.close),
        color: Colors.white,
      ),
    ],
  ));
}

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
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
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
                              fontStyle: FontStyle.italic),
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
  return Padding(
    padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
    child: Column(
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
    ),
  );
}

// List of screenshot
List western = [
  "images/s1.jpg",
  "images/s2.jpg",
  "images/s3.jpg",
  "images/s4.jpg",
  "images/s5.jpg",
  "images/s6.jpg",
];
List newportal = [
  "images/s8.jpg",
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
        "A UI/UX designer is a professional who identifies new opportunities to create better user experiences. They ensure that the end-to-end journey with their products or services meets desired outcomes. Aesthetically pleasing branding strategies help them effectively reach more customers."
  },
];

List testimonial = [
  {
    "pic": "images/derek.jpg",
    'name': "Derek",
    'role': "Founder and Mentor",
    "testi":
        "Working with Saho Tech was a game-changer for your Project. His coding skills are top-notch, and his delivered results that exceeded our expectations. Truly a developer i'd recommended to anyone!",
  },
  {
    "pic": "images/ben.jpg",
    'name': "Benjamin",
    'role': "Student",
    "testi":
        "I've had the pleasure of collaborating with Saho Tech on several projects, and each time, their coding expertise and problem-solving abilities shine through. If you need a developer who can get the job done, Saho Tech is the one!",
  },
  {
    "pic": "images/kesta.jpg",
    'name': "Kesta Elorm",
    'role': "Programmer",
    "testi":
        "Saho Tech is a developer who consistently goes above and beyond. Their attention to detail, dedication, and innovative solutions have made a significant impact on our software development. We look forward to many more successful projects together.",
  },
  {
    "pic": "images/kujo.jpg",
    'name': "Godson",
    'role': "Student",
    "testi":
        "Hiring Saho Tech was one of the best decisions we made. Their coding skills are matched only by their professionalism and commitment to delivering quality work. It's a pleasure to work with such a talented developer.",
  },
  {
    "pic": "images/kurti.jpeg",
    'name': "Aaron",
    'role': "Software Enginear",
    "testi":
        "I've had the privilege of witnessing Saho Tech's coding prowess firsthand. They have an impressive ability to tackle complex challenges and turn them into elegant solutions. If you're seeking a developer who can make your vision a reality, Saho Tech is the one to trust.",
  },
  {
    "pic": "images/nneka.jpeg",
    'name': "Nneka",
    'role': "Developer",
    "testi":
        "I've worked with many developers, but Saho Tech stands out for their technical expertise and strong work ethic. They consistently meet deadlines and produce code that is both efficient and reliable. Highly recommended!",
  },
  {
    "pic": "images/lizy.jpg",
    'name': "Lizzy",
    'role': "Nurse",
    "testi":
        "When it comes to software development, Saho Tech is a true professional. Their coding skills are exceptional, and their ability to understand project requirements and deliver results is unparalleled. It's a pleasure to have Saho Tech on our team.",
  },
  {
    "pic": "images/rich.jpg",
    'name': "Richmond",
    'role': "Student",
    "testi":
        "Collaborating with Saho Tech has been a transformative experience for our development projects. Their innovative solutions and commitment to quality have had a profound impact on our success. I can't recommend Saho Tech highly enough.",
  },
];
