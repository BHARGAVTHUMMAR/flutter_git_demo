import 'package:demo4444/app/Constant/ConstantUrl.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Rx<TextEditingController> firstnameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passController = TextEditingController().obs;
  Rx<TextEditingController> confirmPassController = TextEditingController().obs;
  Rx<TextEditingController> countryController = TextEditingController().obs;
  Rx<TextEditingController> mobileController = TextEditingController().obs;

  RxBool isChecked = false.obs;
  RxBool passwordVisible = true.obs;

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

  Future<void> signUpApi() async {
    var url = Uri.parse(baseUrl+ApiConstant.signUpUsers);
    var response = await http.post(url, body: {'name': '${firstnameController.value.text.trim()}',
      'mobile': '${mobileController.value.text.trim()}',
      'countryCode': '${countryController.value.text.trim()}',
      'email': '${emailController.value.text.trim()}',
      'password': '${passController.value.text.trim()}'
    });
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
