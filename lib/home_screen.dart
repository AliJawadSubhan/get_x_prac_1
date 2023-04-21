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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('GetX Alert Dialog'),
              onTap: () {
                Get.defaultDialog(
                  contentPadding: EdgeInsets.all(12),
                  // title: Text('data')
                  cancel: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('Off')),
                  title: 'Bro Just this is dialog',
                  // // middleText: 'Ofcourse it is made in 3 lines',
                  // content: SizedBox(
                  //   height: 200,
                  //   child: ListView.builder(
                  //       itemCount: 3,
                  //       itemBuilder: (context, index) {
                  //         return Text('data');
                  //       }),
                  // ),
                );
              },
            ),
            ListTile(
              title: Text('GetX BottomSheet'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    // height: MediaQuery.of(context).size.height * 0.75,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Title',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () => Get.back(),
                                icon: Icon(Icons.close),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.changeTheme(ThemeData.light());
                            },
                            child: Text('Light Theme')),
                        TextButton(
                            onPressed: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                            child: Text('Dark Theme')),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: ElevatedButton(
                            onPressed: () => print('Pressed'),
                            child: Text('Button'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
