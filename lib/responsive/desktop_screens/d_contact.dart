import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';

class DContactScreen extends StatefulWidget {
  const DContactScreen({super.key});

  @override
  State<DContactScreen> createState() => _DContactScreenState();
}

class _DContactScreenState extends State<DContactScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController subject = TextEditingController();
  final TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);

    return Container(
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Your Name'),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    cursorColor: Colors.amber,
                                    controller: name,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 40),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Your Email'),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    cursorColor: Colors.amber,
                                    controller: email,
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
                      ),
                      const SizedBox(height: 20),
                      const Text('Message'),
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                        ),
                        maxLines: 5,
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
                            onPressed: () {},
                            child: const Text('Submit'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  ///

//
  contactrow({
    required Size ss,
    required IconData icon,
    required String title,
    required String text,
  }) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.amber.shade100,
          child: Icon(
            icon,
            color: Colors.amber.shade800,
          ),
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: ss.width / 7,
              child: Text(
                text,
                maxLines: 5,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
