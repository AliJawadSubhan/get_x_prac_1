// import 'dart:html';

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    log('build method built');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX tut'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Counter: '),
          TextButton(
            onPressed: () {
              log('build');
              Get.snackbar('Ali Jawd', 'Wants to know your location',
                  snackPosition: SnackPosition.BOTTOM);
              // ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Press me!!'),
          ),
        ]),
      ),
    );
  }
}
