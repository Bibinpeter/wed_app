import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:wedapp/routes/routes.dart';
import 'package:wedapp/view/splash/splash_view.dart';
import '../view/Homepage/Home_Binding/Homebinding.dart';
import '../view/Homepage/Homepage_view/home_view.dart';
import '../view/login/LoginBinding/loginBinding.dart';
import '../view/login/Loginview/loginview.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.LogIn,
      page: () => const LoginView(),
      transition: Transition.rightToLeftWithFade,
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.Homepage,
      page: () => const HomeView(),
      transition: Transition.rightToLeftWithFade,
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.Splash,
      page: () => const SplashView(),
      transition: Transition.rightToLeftWithFade,
    
    )
  ];
}
