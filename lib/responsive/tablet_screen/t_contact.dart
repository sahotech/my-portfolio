import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';
import 'package:sahotech_portfolio/controllers/email_controller.dart';
import 'package:sahotech_portfolio/widgets/footer_widget.dart';

class TContactScreen extends StatefulWidget {
  const TContactScreen({super.key});

  @override
  State<TContactScreen> createState() => _TContactScreenState();
}

class _TContactScreenState extends State<TContactScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController subject = TextEditingController();
  final TextEditingController message = TextEditingController();

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: RichText(
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
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Text(
              'I am interested in connecting with you and would love to hear more about your thoughts and ideas. Please feel free to reach out to me at your convenience.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Row(
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Your Name'),
                                      const SizedBox(height: 10),
                                      TextFormField(
                                        cursorColor: Colors.amber,
                                        controller: name,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Your Email'),
                                      const SizedBox(height: 10),
                                      TextFormField(
                                        cursorColor: Colors.amber,
                                        controller: email,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: (value) {
                                          if (value!.isNotEmpty ||
                                              value.contains('@')) {
                                            return null;
                                          } else {
                                            return 'Enter valid email address';
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
                                return 'Enter Ssubject';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          const Text('Message'),
                          const SizedBox(height: 10),
                          TextFormField(
                            maxLines: 5,
                            controller: message,
                            autocorrect: true,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter message';
                              } else {
                                return null;
                              }
                            },
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
          ),
          const SizedBox(height: 30),
          const CustomFooter(),
        ],
      ),
    );
  }

  ///

//
}
