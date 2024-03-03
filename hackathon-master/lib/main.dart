import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hackathon/presentation/financial_report/financial_report.dart';
import 'package:hackathon/presentation/on_boarding/on_boarding_screen.dart';
import 'package:hackathon/presentation/portfolio/portfolio_screen/portfolio_screen.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),);

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375.0, 852.0),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorSchemeSeed: const Color(0xff00AE9A),
            appBarTheme: const AppBarTheme(surfaceTintColor: Colors.transparent)),
        home: const
        OnBoardingPage(),
      ),
    );
  }
}
