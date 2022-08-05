import 'package:demo4444/app/Constant/Size_Constant.dart';
import 'package:demo4444/app/Constant/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_screen_controller.dart';
class DashboardScreenView extends GetWidget<DashboardScreenController> {
  const DashboardScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return Scaffold(
      body:
        Container(
          height: AppSize.screenHeight,
          width: AppSize.screenWidth,
          child: Container(
            color: Color(0xffc9731c),
            child: Row(
              children: [
                getDrawerSection(controller: controller, context: context),
                Column(
                  children: [
                    Expanded(flex: 1,child: Container(
                    ),),
                    Expanded(flex: 3,
                      child: Container(
                        margin: EdgeInsets.only(left: AppSize.getWidth(280),right: AppSize.getWidth(40)),
                        decoration: BoxDecoration(
                            color: AppColor.backGroundColor,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(80),topRight: Radius.circular(80))
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

    );
  }
}
getDrawerSection(
    {required BuildContext context,
      required DashboardScreenController controller}) {
  return Container(
    color: (ResponsiveWidget.isMediumScreen(context))
        ? Colors.transparent
        : Color(0xffc9731c),
    child: Padding(
      padding: Spacing.only(left: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Space.height(55),
          Container(
              height: AppSize.getHeight(65),
              child: const Image(
                image: AssetImage("assets/logo2.png"),
                fit: BoxFit.contain,
              )),
          Space.height(80),
          InkWell(
            onTap: () {
              if (controller.isDashboardSelected.isFalse) {
                controller.isDetailsSelected.value = false;
              }
              controller.isDashboardSelected.value = true;
              controller.isLeaveSelected.value = false;
              controller.isHolidaySelected.value = false;
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: AppSize.getHeight(30),
                    width: AppSize.getWidth(30),
                    child: const Image(
                      image: AssetImage("assets/ic_dashboard.png"),
                      fit: BoxFit.contain,
                    )),
                Space.width(20),
                Text(
                  "Dashboard",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.getHeight(20)),
                ),
              ],
            ),
          ),
          Space.height(30),
          InkWell(
            onTap: () {
              controller.isDashboardSelected.value = false;
              controller.isLeaveSelected.value = true;
              controller.isHolidaySelected.value = false;
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: AppSize.getHeight(30),
                    width: AppSize.getWidth(30),
                    child: const Image(
                      image: AssetImage("assets/ic_leave.png"),
                      fit: BoxFit.contain,
                    )),
                Space.width(20),
                Text(
                  "Leave",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.getHeight(20)),
                ),
              ],
            ),
          ),
          Space.height(30),
          InkWell(
            onTap: () {
              controller.isDashboardSelected.value = false;
              controller.isLeaveSelected.value = false;
              controller.isHolidaySelected.value = true;
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: AppSize.getHeight(30),
                    width: AppSize.getWidth(30),
                    child: const Image(
                      image: AssetImage("assets/holiday_icon.png"),
                      fit: BoxFit.contain,
                    )),
                Space.width(20),
                Text(
                  "Holiday",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.getHeight(20)),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}