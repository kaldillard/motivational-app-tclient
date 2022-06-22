import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ScreenUtilInit(
    builder: (_) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wisdom(),
    ),
    designSize: const Size(428, 926),
  ));

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}
