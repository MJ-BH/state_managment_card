// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: SecondPageView(),
    );
  }
}

class SecondPageView extends StatefulWidget {
  const SecondPageView({Key? key}) : super(key: key);

  @override
  _SecondPageViewState createState() => _SecondPageViewState();
}

class _SecondPageViewState extends State<SecondPageView> {
  final TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.greenAccent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                obscuringCharacter: "*",
                controller: emailcontroller,
                enabled: true,
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 36,
          padding: EdgeInsets.symmetric(horizontal: 56),
          child: ElevatedButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: BorderSide(color: Colors.orange)),
            ),
            onPressed: () {
              GetUtils.isEmail(emailcontroller.text)
                  ? Get.snackbar('correct'.tr, 'formatgood'.tr,
                      backgroundColor: Colors.green[900],
                      snackPosition: SnackPosition.BOTTOM)
                  : Get.snackbar('incorrect'.tr, 'formatbad'.tr,
                      backgroundColor: Colors.red[800],
                      snackPosition: SnackPosition.TOP);
            },
            child: Text('valide'.tr),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Get.updateLocale(Locale("ar"),);
            },
            child: Text('change'.tr))
      ],
    );
  }
}
