import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internationalization_getx/screens/home.dart';
import 'package:internationalization_getx/translation/translation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: AppTranslation(),
      locale: Get.deviceLocale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
