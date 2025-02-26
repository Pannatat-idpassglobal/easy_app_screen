import 'package:easy_app_sreen_reports/routers/app_router.dart';
import 'package:easy_app_sreen_reports/themes/style.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_scale/routers/app_router.dart';
// import 'package:flutter_scale/screens/welcome/welcome_screen.dart';
// import 'package:flutter_scale/themes/style.dart';
// import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

var initURL;

//logger
// final logger = Logger(
//   printer:PrettyPrinter(
//     methodCount: 1,
//     printEmojis: true,
//     colors: true,
//     // ignore: deprecated_member_use
//     printTime: false,
//   )
// );

//print logger
// void _printLog() {
//   logger.d('Debug');
//   logger.e('Error');
//   logger.w('Warning');
// }

Future<void> main() async {
// _printLog();

  WidgetsFlutterBinding.ensureInitialized(); //เพิ่มก่อนใช้งาน runApp
  //Create Shared preferend
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // if (prefs.getInt('step') == null) {
  //   initURL = '/dashboard';
  // } else if (prefs.getInt('step') == 1) {
  //   initURL = '/dashboard';
  // } else if (prefs.getInt('step') == 2) {
  //   initURL = '/dashboard';
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Report',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      // initialRoute: initURL,
      // initialRoute: '/ผลการดำเนินงาน',
      routes: AppRouter.routes,
    );
  }
}
