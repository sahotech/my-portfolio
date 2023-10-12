import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/widgets/footer_widget.dart';

class MContactScreen extends StatefulWidget {
  const MContactScreen({super.key});

  @override
  State<MContactScreen> createState() => _MContactScreenState();
}

class _MContactScreenState extends State<MContactScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController subject = TextEditingController();
  final TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      child: Container(
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
              child: Column(
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
                  // const SizedBox(height: 20),
                  // contactrow(
                  //   ss: ss,
                  //   icon: Icons.call_outlined,
                  //   title: "Call",
                  //   text: "+233 242780205, +233 256787512 ",
                  // ),
                  const SizedBox(height: 20),
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
            const SizedBox(height: 30),
            const CustomFooter()
          ],
        ),
      ),
    );
  }

  ///

//
}
