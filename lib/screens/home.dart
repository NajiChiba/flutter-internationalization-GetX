// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internationalization_getx/screens/test_page.dart';

class Home extends StatelessWidget {
  final locales = [
    {'name': 'English', 'locale': Locale('en', 'US')},
    {'name': 'Arabic', 'locale': Locale('ar', 'MA')},
  ];

  showLocaleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Choose your language"),
        content: Container(
          width: double.maxFinite,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: locales.length,
            itemBuilder: (context, index) => InkWell(
              child: Padding(
                child: Text(locales[index]['name'] as String),
                padding: EdgeInsets.symmetric(vertical: 8),
              ),
              onTap: () => updateLocale(
                locales[index]['locale'] as Locale,
                context,
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  updateLocale(Locale locale, BuildContext context) {
    Get.to(TestPage());
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('appbar1'.tr)),
      body: Container(
        // color: Colors.black,
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'title1'.tr,
                style: TextStyle(fontSize: 36, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              Text(
                'subtitle1'.tr,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  Get.to(TestPage());
                },
                child: Text(
                  "button1".tr,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  showLocaleDialog(context);
                },
                child: Text(
                  "button2".tr,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
