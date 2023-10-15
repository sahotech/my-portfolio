import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/constant.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: myBoxShadow,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: Colors.amber,
              ),
              SizedBox(width: 20),
              Text('Please wait...')
            ],
          ),
        ),
      ),
    );
  }
}
