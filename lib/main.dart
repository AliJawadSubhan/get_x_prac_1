import 'package:flutter/material.dart';
import 'package:get_x_prac/home_screen.dart';
import 'package:get/get.dart';
import 'package:get_x_prac/responsive/responseive_example.dart';
import 'package:get_x_prac/screens/first.dart';
import 'package:get_x_prac/screens/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveWidget(),
      // getPages: [
      //   GetPage(
      //     name: '/',
      //     page: () => HomeScreen(),
      //   ),
      //   GetPage(
      //     name: '/first',
      //     page: () => First(),
      //   ),
      //   GetPage(
      //     name: '/second',
      //     page: () => Second(),
      //   ),
      // ],
    );
  }
}
