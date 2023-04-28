import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jolibee_app_clone/app/resources/screen.dart';

import 'app/authenticator/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: getPages,
      home: const LoginPage(),
    );
  }
}
