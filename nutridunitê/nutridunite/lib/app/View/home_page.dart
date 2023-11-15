import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutridunite/app/Controller/home_controller.dart';

class HomePage extends GetView<HOMEController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomePage'),
        ),
        body: SafeArea(
          child: Text('HomeController'),
        ));
  }
}
