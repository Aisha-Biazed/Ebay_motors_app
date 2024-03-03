import 'package:ebay_motors/routes.dart';
import 'package:ebay_motors/view/screen/auth/login_screen.dart';
import 'package:ebay_motors/view/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 975),
      minTextAdapt: false,
      splitScreenMode: true,
      child: Builder(builder: (context) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
          // getPages: routes,
        );
      }),
    );
  }
}
