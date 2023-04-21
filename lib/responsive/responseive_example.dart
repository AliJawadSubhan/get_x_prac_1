import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: Get.height * 0.8,
          width: Get.width * 0.2,
          // clipBehavior: ,
          color: Colors.red,
          child: Text(
              'This is a widget of center will make this responsiveresponsiveresponsiveresponsiveresponsiveresponsiveresponsiveresponsiveresponsiveresponsive'),
        ),
      ),
    );
  }
}
