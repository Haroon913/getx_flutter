import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/home_screen.dart';
import 'package:getx_flutter/language.dart';
import 'package:getx_flutter/localization.dart';

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
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      translations: Languages(),
      theme: ThemeData(
        primarySwatch: Colors.purple,

      ),
      home: const Localization(),
    );
  }
}


