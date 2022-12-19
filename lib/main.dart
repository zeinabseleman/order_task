import 'package:apptask/presentation/pages/cart_pages/cart_screen.dart';
import 'package:apptask/presentation/pages/grocery_pages/grocery_screen.dart';
import 'package:apptask/presentation/pages/main_screen/main_Screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
      DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) => const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize:  const Size(375, 793),
    builder: (BuildContext context, Widget? child) {
    return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
    title: 'task',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    fontFamily: 'Poppins',
    ),
   home: MainScreen()
    );
    },
    );
  }
}
