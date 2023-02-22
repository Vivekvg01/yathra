import 'package:get/get.dart';
import '../modules/get_started/bindings/get_started_binding.dart';
import '../modules/get_started/views/get_started_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH;
  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      bindings: [
        LoginBinding(),
        HomeBinding(),
        SignupBinding(),
      ],
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      bindings: [
        SignupBinding(),
        HomeBinding(),
        LoginBinding(),
      ],
    ),
    GetPage(
      name: _Paths.GET_STARTED,
      page: () => const GetStartedView(),
      bindings: [
        GetStartedBinding(),
        LoginBinding(),
      ],
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      bindings: [
        SplashBinding(),
        
      ],
    ),
  ];
}
