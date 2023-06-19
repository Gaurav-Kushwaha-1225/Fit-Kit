// ignore_for_file: must_be_immutable

import 'package:fit_kit/constants.dart';
import 'package:fit_kit/presplash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Palette.themeColor,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Palette.themeColor,
      systemNavigationBarIconBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fitness Kit',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColorDark: Palette.themeColor),
        home: const presplash());
  }
}