import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_prac/screens/second.dart';

class First extends StatelessWidget {
  var name;
  First({super.key, this.name = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('First Screen' + Get.arguments[0]['name']),
            TextButton(
              onPressed: () {
                Get.to(Second());
              },
              child: Text('go forward'),
            ),
          ],
        ),
      ),
    );
  }
}
