// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);
    var date = DateTime.now();
    int year = date.year;
    return Center(
      child: Container(
        width: ss.width,
        color: footerColor,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              width: ss.width * 0.8,
              child: Text.rich(
                textAlign: TextAlign.center,
                maxLines: 2,
                TextSpan(
                  children: [
                    const TextSpan(
                      text: '\u00A9',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: ' Copyright $year ',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const TextSpan(
                      text: 'Saho Tech',
                      style: TextStyle(
                        fontFamily: 'Lato-Black',
                        color: Colors.amber,
                      ),
                    ),
                    const TextSpan(
                      text: ' All Rights Reserved.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: ss.width * 0.8,
              child: const Text.rich(
                textAlign: TextAlign.center,
                maxLines: 2,
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Powered by |  ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'Saho',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'Tech  ',
                      style: TextStyle(
                        fontFamily: 'Lato-Black',
                        fontStyle: FontStyle.italic,
                        color: Colors.amber,
                      ),
                    ),
                    // TextSpan(
                    //   text: '\ue299a5',
                    //   style: TextStyle(
                    //     color: Colors.red.shade900,
                    //     fontSize: 22,
                    //   ),
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
