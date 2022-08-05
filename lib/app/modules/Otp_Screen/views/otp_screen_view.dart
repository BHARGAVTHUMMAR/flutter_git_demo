import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/otp_screen_controller.dart';

class OtpScreenView extends GetView<OtpScreenController> {
  const OtpScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OtpScreenView'),
        centerTitle: true,
      ),
      body: Container(

      ),
    );
  }
}
