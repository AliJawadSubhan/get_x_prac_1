import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_prac/home_screen.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Second Screen'),
          TextButton(
            onPressed: () {
              Get.to(() => HomeScreen());
            },
            child: Text('go back'),
          ),
        ],
      ),
    );
  }
}
