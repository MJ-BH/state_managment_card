// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment_card/componnets.dart';
import 'package:state_managment_card/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomePageView());
  }
}

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  var comp = Componnets();
  var nameController = TextEditingController();
  var h = 0.0;
  var w = 0.0;
  String s = "";
  _setText() {
    setState(() {
      s = nameController.text;
      h = 100;
      w = 300;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        comp.myCard(
            comp.myAvatar(50, 'images/6-min-min.jpg'),
            comp.myText(comp.myStyle, s),
            comp.myText(comp.myStyle2, "azertty"),
            w,
            h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 36),
          child: comp.textInput(nameController, fun: () => {_setText()}),
        ),
        ElevatedButton(
            onPressed: () {
              _setText();
              Get.toNamed('/second');
            },
            child: Text("save"))
      ],
    ));
  }
}
