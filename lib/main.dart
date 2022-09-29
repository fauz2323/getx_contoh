import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app_getx/getx/getx_test.dart';
import 'package:test_app_getx/native/native.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //navigator untuk native flutter
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Native()),
                );
              },
              child: Text('Native'),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                //navigator untuk getx
                Get.to(GetxTest());
              },
              child: Text('Getx'),
            ),
          ],
        ),
      ),
    );
  }
}
