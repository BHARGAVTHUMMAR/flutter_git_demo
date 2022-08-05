import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passController = TextEditingController().obs;
  RxBool isChecked = false.obs;
  RxBool passwordVisible = true.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
