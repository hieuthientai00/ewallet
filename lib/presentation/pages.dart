import 'package:flutter_smart_wallet/common/constants/route_list.dart';
import 'package:flutter_smart_wallet/presentation/journey/authentication/verify_otp/controller/verify_otp_binding.dart';
import 'package:flutter_smart_wallet/presentation/journey/home/controller/home_binding.dart';
import 'package:flutter_smart_wallet/presentation/journey/home/home_screen.dart';
import 'package:flutter_smart_wallet/presentation/journey/splash/splash_screen.dart';
import 'package:get/get.dart';

import 'journey/authentication/login/controller/login_binding.dart';
import 'journey/authentication/login/login_screen.dart';
import 'journey/authentication/register/controller/register_binding.dart';
import 'journey/authentication/register/register_screen.dart';
import 'journey/authentication/verify_otp/verify_otp_screen.dart';
import 'journey/main/main_screen.dart';

class AppPages {
  static List<GetPage> getPages() {
    // var args = Get.arguments as Map<String, dynamic>;
    return [
      GetPage(
        name: RouteList.splashScreen,
        page: () => SplashScreen(),
      ),
      GetPage(
        name: RouteList.loginScreen,
        page: () => LoginScreen(),
        binding: LoginBinding(),
      ),
      // GetPage(
      //   name: RouteList.mainScreen,
      //   page: () => HomeScreen(),
      //   binding: HomeBinding(),
      // ),
      GetPage(
        name: RouteList.loginScreen,
        page: () => LoginScreen(),
      ),
      GetPage(
        name: RouteList.homeScreen,
        page: () => HomeScreen(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: RouteList.registerScreen,
        page: () => RegisterScreen(
          phone: '',
        ),
        binding: RegisterBinding(),
      ),
      GetPage(
        name: RouteList.verifyOtpScreen,
        page: () => VerifyOtpScreen(
          phoneNumber: '',
          verificationId: '',
          resendToken: 0,
        ),
        binding: VerifyOtpBinding(),
      ),
      GetPage(
        name: RouteList.mainScreen,
        page: () => MainScreen(),
      )
    ];
  }
}
