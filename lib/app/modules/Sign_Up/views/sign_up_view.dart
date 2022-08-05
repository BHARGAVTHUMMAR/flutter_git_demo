import 'package:demo4444/app/Constant/Size_Constant.dart';
import 'package:demo4444/app/Constant/constant_color.dart';
import 'package:demo4444/app/Constant/text_field.dart';
import 'package:demo4444/app/modules/Sign_Up/controllers/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SingupScreenView extends GetWidget<SignUpController> {
  const SingupScreenView({Key? key}) : super(key: key);
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
                  if (ResponsiveWidget.isLargeScreen(context))
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/bg1.jpg"),
                                fit: BoxFit.fill,
                              )),
                          child: screen()),
                    ),
                  if (ResponsiveWidget.isMediumScreen(context) ||
                      ResponsiveWidget.isSmallScreen(context))
                    Container(
                      child: screen(),
                    )
                ],
              ),
            )));
  }
  screen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: Spacing.top(40),
              child: Text(
                "CREATE ACCOUNT",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: AppSize.size50,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Space.height(10),
            Container(
              child: Text(
                "Please enter your details to continue",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: AppSize.size20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Space.height(20),
            Container(
              padding: EdgeInsets.only(
                top: AppSize.getHeight(20),
              ),
              width: AppSize.getWidth(550),
              child: getTextField(
                textEditingController:
                controller.firstnameController.value,
                borderRadius: AppSize.size20,
                hintText: "First Name",
                validator: (input) => !isNullEmptyOrFalse(input)
                    ? null
                    : "Please enter your name",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(AppSize.size15!),
                  child: Image(
                    image: AssetImage("assets/8888.png"),
                    height: AppSize.size25,
                    width: AppSize.size25,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: AppSize.getHeight(20),
              ),
              width: AppSize.getWidth(550),
              child: getTextField(
                textEditingController:
                controller.emailController.value,
                borderRadius: AppSize.size20,
                hintText: "Email",
                validator: (input) => !isNullEmptyOrFalse(input)
                    ? null
                    : "Please enter Mail",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(AppSize.size15!),
                  child: Image(
                    image: AssetImage("assets/ic_mail.png"),
                    height: AppSize.size25,
                    width: AppSize.size25,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: AppSize.getHeight(20),
                  ),
                  width: AppSize.getWidth(100),
                  child: getTextField(
                    textEditingController:
                    controller.countryController.value,
                    borderRadius: AppSize.size20,
                    hintText: "+91",
                  ),
                ),
                Space.width(20),
                Container(
                  padding: EdgeInsets.only(
                    top: AppSize.getHeight(20),
                  ),
                  width: AppSize.getWidth(430),
                  child: getTextField(
                    textEditingController:
                    controller.mobileController.value,
                    borderRadius: AppSize.size20,
                    hintText: "Phone Number",
                    validator: (input) => !isNullEmptyOrFalse(input)
                        ? null
                        : "Please enter Phone-Number",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(AppSize.size15!),
                      child: Image(
                        image: AssetImage("assets/88.png"),
                        height: AppSize.size25,
                        width: AppSize.size25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Space.height(10),
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: AppSize.getHeight(20),
                    ),
                    width: AppSize.getWidth(262),
                    child: getTextField(
                      textEditingController:
                      controller.passController.value,
                      borderRadius: AppSize.size20,
                      hintText: "Password",
                      validator: (input) => !isNullEmptyOrFalse(input)
                          ? null
                          : "Please Enter Password",
                      textVisible: controller.passwordVisible.value,
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(AppSize.size15!),
                        child: Image(
                          image: AssetImage("assets/ic_lock.png"),
                          height: AppSize.size25,
                          width: AppSize.size25,
                        ),
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          controller.passwordVisible.toggle();
                        },
                        child: Padding(
                          padding: EdgeInsets.all(AppSize.size15!),
                          child: Image(
                            image: AssetImage(
                                (!controller.passwordVisible.value)
                                    ? "assets/ic_eye_offf.png"
                                    : "assets/ic_eye.png"),
                            height: AppSize.size25,
                            width: AppSize.size30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Space.width(20),
                  Container(
                    padding: EdgeInsets.only(
                      top: AppSize.getHeight(20),
                    ),
                    width: AppSize.getWidth(262),
                    child: getTextField(
                      textEditingController:
                      controller.confirmPassController.value,
                      borderRadius: AppSize.size20,
                      hintText: "Conform Password",
                      validator: (input) => !isNullEmptyOrFalse(input)
                          ? null
                          : "Please Enter Password",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(AppSize.size15!),
                        child: Image(
                          image: AssetImage("assets/ic_lock.png"),
                          height: AppSize.size25,
                          width: AppSize.size25,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
            Container(
              //width: MySize.getWidth(550),
              padding: EdgeInsets.only(
                top: AppSize.getHeight(40),
              ),
              child: InkWell(
                onTap: () async {
                  if (controller.formKey.currentState!.validate()) {
                  }
                  await controller.signUpApi();
                },
                child: button(
                  backgroundColor: Color(0xffc9731c),
                  textColor: Colors.black,
                  fontsize: AppSize.size23,
                  radius: AppSize.size20!,
                  width: AppSize.getWidth(220),
                  fontWeight: FontWeight.w700,
                  title: "SIGN UP",
                ),
              ),
            ),
            Space.height(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",style: TextStyle(color: Colors.black),),
                TextButton(onPressed: () {
                  Get.toNamed(Routes.LOGIN_PAGE);
                }, child: Text("LOG IN",style: TextStyle(color: Color(0xffc9731c),fontSize: AppSize.size20),))
              ],
            )
          ],
        ),
      ],
    );
  }
}
Container button({
  double height = 50,
  double width = 341,
  String? title = "",
  Color? backgroundColor,
  Color? borderColor,
  Color? textColor,
  double radius = 8,
  Widget? widget,
  FontWeight fontWeight = FontWeight.bold,
  double? fontsize = 14,
}) {
  return Container(
    height: AppSize.getHeight(height),
    width: AppSize.getWidth(width),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(
          color: (borderColor == null) ? Colors.transparent : borderColor,
          width: 1),
      color:
      (backgroundColor == null) ? Color(0xffc9731c):backgroundColor,
    ),
    alignment: Alignment.center,
    child: (widget != null)
        ? Center(child: widget)
        : Text(
      title!,
      style: TextStyle(
          color: (textColor == null) ? Colors.white : textColor,
          fontWeight: fontWeight,
          fontSize: AppSize.getHeight(fontsize!)),
    ),
  );
}