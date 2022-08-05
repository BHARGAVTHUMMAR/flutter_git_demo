import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreenController extends GetxController {
  TextEditingController searchController = TextEditingController();
  RxBool isDashboardSelected = true.obs;
  RxBool isLeaveSelected = false.obs;
  RxBool isHolidaySelected = false.obs;
  RxBool isDetailsSelected = false.obs;
  RxBool hasData = false.obs;
  RxBool isSearchOn = false.obs;
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

}
