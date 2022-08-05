import 'dart:math';

import 'package:demo4444/app/Constant/Size_Constant.dart';
import 'package:demo4444/app/Constant/constant_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final app = MaterialApp(
                      debugShowCheckedModeBanner: false,
                      theme: ThemeData(
                        tabBarTheme: TabBarTheme(
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(30, 60, 87, 1), width: 2.0),
                            ),
                          ),
                          unselectedLabelStyle: GoogleFonts.poppins(fontSize: 16),
                          labelStyle: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w600),
                          labelColor: Color.fromRGBO(30, 60, 87, 1),
                          unselectedLabelColor: Color.fromRGBO(107, 137, 165, 1),
                        ),
                      ),
                    );

                    final shortestSide =
                    min(constraints.maxWidth.abs(), constraints.maxHeight.abs());
                    if (shortestSide > 600) {
                      return Container(
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Text(
                                'Pinput Examples',
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              width: 375,
                              height: 812,
                              margin: EdgeInsets.all(20),
                              clipBehavior: Clip.antiAlias,
                              foregroundDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: Colors.black, width: 15),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 15),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: app,
                            ),
                          ],
                        ),
                      );
                    }
                    return app;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  otpScreen()
  {
    return Container();
  }
}
