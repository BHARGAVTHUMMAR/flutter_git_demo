import 'dart:html';

import 'package:demo4444/app/Constant/Size_Constant.dart';
import 'package:demo4444/app/Constant/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

TextFormField getTextField({
  String? hintText,
  TextEditingController? textEditingController,
  Widget? prefixIcon,
  double? borderRadius,
  Widget? suffixIcon,
  double? size = 52,
  Widget? suffix,
  int? maxLine,
  Color? fillColor,
  bool isFillColor = false,
  FormFieldValidator<String>? validator,
  TextInputType textInputType = TextInputType.text,
  bool textVisible = false,
  bool readonly = false,
  List<TextInputFormatter>? textInputFormatter,
  Callback? onTap,
  Color? borderColor,
  FunctionStringCallback? onChanged,
  FunctionStringCallback? onSubmitted,
}) {
  return TextFormField(
    controller: textEditingController,
    obscureText: textVisible,
    textInputAction: TextInputAction.next,
    keyboardType: textInputType,
    validator: validator,
    maxLines: maxLine ?? 1,
    readOnly: readonly,
    onTap: onTap,
    onChanged: onChanged,
    inputFormatters: textInputFormatter,
    onFieldSubmitted: onSubmitted,
    cursorColor: AppColor.backGroundColor,
    decoration: InputDecoration(
      fillColor: fillColor,
      filled: isFillColor,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: (isNullEmptyOrFalse(borderColor))
                ? Color(0xffE8E8E8)
                : borderColor!),
        borderRadius: BorderRadius.circular(
            (borderRadius == null) ? AppSize.size10! : borderRadius),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
            (borderRadius == null) ? AppSize.size10! : borderRadius),
        borderSide: BorderSide(
            color: (isNullEmptyOrFalse(borderColor))
                ? Color(0xffE8E8E8)
                : borderColor!),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
            (borderRadius == null) ? AppSize.size10! : borderRadius),
      ),
      contentPadding: EdgeInsets.only(
        left: AppSize.size20!,
        right: AppSize.size10!,
        bottom: size! / 2, // HERE THE IMPORTANT PART
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      suffix: suffix,
      hintText: hintText,
      hintStyle: TextStyle(
          fontSize: AppSize.size14!,
          color: Color(0xff626262),
          fontWeight: FontWeight.w600),
    ),
  );
}
