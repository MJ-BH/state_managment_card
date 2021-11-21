// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment_card/home_page.dart';
import 'package:state_managment_card/utils/traductions.dart';

import 'second_page.dart';

void main() {
  runApp(GetMaterialApp(
    
    locale: Get.deviceLocale,
    translations: MyTranslations(),
    getPages: [
      GetPage(name: '/', page: () => HomePage()),
      GetPage(name: '/second', page: () => SecondPage()),
    ],
    defaultTransition: Transition.downToUp,
    home: HomePage(),
  ));
}
