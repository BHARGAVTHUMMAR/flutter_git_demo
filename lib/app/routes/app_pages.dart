import 'package:get/get.dart';

import '../modules/Sign_Up/bindings/sign_up_binding.dart';
import '../modules/Sign_Up/views/sign_up_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login_page/bindings/login_page_binding.dart';
import '../modules/login_page/views/login_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => const LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
        name: _Paths.SIGN_UP,
        page: () => const SingupScreenView(),
        binding: SignUpBinding(),
    )
  ];
}
