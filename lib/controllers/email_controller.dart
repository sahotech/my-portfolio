// ignore_for_file: use_build_context_synchronously

// import 'dart:convert';
import 'dart:developer';
// import 'dart:js';

import 'package:emailjs/emailjs.dart';
import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';

// import 'package:http/http.dart' as http;

class EmailController {
  Future sendEmail({
    required BuildContext context,
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    try {
      Map<String, dynamic> templatePrams = {
        "user_name": name,
        "user_email": email,
        "subject": subject,
        "message": message,
      };
      const serviceId = "service_jl8kmb6";
      const templeteId = "template_s33e54z";

      await EmailJS.send(
        serviceId,
        templeteId,
        templatePrams,
        const Options(
          privateKey: "ZBSn-VI-CT9AjY4WQ3eHg",
          publicKey: "ulA3v7kB3NdKZDwPz",
        ),
      );
      log("Message sent");

      myDialog(
        context: context,
        message:
            "Mail sent! Thanks for contacting me. I'll get bact to you shortly.",
        title: "Success",
        icon: Icons.check_circle_outlined,
      );
    } catch (e) {
      myDialog(
        context: context,
        message: "Smething went wrong! Please try again later. ",
        title: "Error",
        icon: Icons.error_outline,
      );

      log("Smething went wrong! Please try again later");
    }
  }
}
