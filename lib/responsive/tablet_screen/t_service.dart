import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/widgets/footer_widget.dart';

class TServicesScreen extends StatefulWidget {
  const TServicesScreen({super.key});

  @override
  State<TServicesScreen> createState() => _TServicesScreenState();
}

class _TServicesScreenState extends State<TServicesScreen> {
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

  // late BoxConstraints constraints;
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    final ss = MediaQuery.sizeOf(context);

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
            child: Container(
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
                            child: Text(
                              servicesItem[index]["info"],
                              // maxLines: 7,
                              // overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                // overflow: TextOverflow.ellipsis,
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
          SingleChildScrollView(
            child: SizedBox(
              height: ss.height / 2,
              child: authoScrollTest(ss, context),
            ),
          ),
          const SizedBox(height: 30),
          const CustomFooter(),
        ],
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
