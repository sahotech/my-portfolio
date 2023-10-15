import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class UrlLauncherController {
  final _githubUrl = Uri.parse("https://github.com/sahotech");
  final _linkedInUrl = Uri.parse("https://linkedin.com/in/saho-tech-a28864270");
  final _facebookUrl = Uri.parse("https://facebook.com/sahotech");
  final _twitterUrl = Uri.parse("https://twitter.com/saho_tech");
  final _ig = Uri.parse("https://www.instagram.com/saho_tech/");
  // Github
  Future launchGithub() async {
    try {
      if (await canLaunchUrl(_githubUrl)) {
        await launchUrl(_githubUrl);
      }
      log('Success');
    } catch (e) {
      log(e.toString());
    }
  }

  // LinkedIn
  Future launchLinkedIn() async {
    try {
      if (await canLaunchUrl(_linkedInUrl)) {
        await launchUrl(_linkedInUrl);
      }
      log('Success');
    } catch (e) {
      log(e.toString());
    }
  }

  // IG
  Future launchIg() async {
    try {
      if (await canLaunchUrl(_ig)) {
        await launchUrl(_ig);
      }
      log('Success');
    } catch (e) {
      log(e.toString());
    }
  }

  // Facebook
  Future launchFacebook() async {
    try {
      if (await canLaunchUrl(_facebookUrl)) {
        await launchUrl(_facebookUrl);
      }
      log('Success');
    } catch (e) {
      log(e.toString());
    }
  }

  // Twiter
  Future launchTwitter() async {
    try {
      if (await canLaunchUrl(_twitterUrl)) {
        await launchUrl(_twitterUrl);
      }
      log('Success');
    } catch (e) {
      log(e.toString());
    }
  }
}
