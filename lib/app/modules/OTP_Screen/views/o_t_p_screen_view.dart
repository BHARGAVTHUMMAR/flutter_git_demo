import 'package:demo4444/app/Constant/Size_Constant.dart';
import 'package:demo4444/app/Constant/constant_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/o_t_p_screen_controller.dart';

class OTPScreenView extends GetView<OTPScreenController> {
  const OTPScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return Scaffold(
      body: Container(
        color: AppColor.backGroundColor,
        child: Form(
          key: controller.formKey,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bg1.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
