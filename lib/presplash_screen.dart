import 'package:fit_kit/constants.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class presplash extends StatefulWidget {
  const presplash({Key? key}) : super(key: key);

  @override
  State<presplash> createState() => _presplashState();
}

class _presplashState extends State<presplash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => DashboardScreen(title: 'Dashboard Screen')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: RadialGradient(
                colors: [Palette.presplashColor, Palette.themeColor])),
        child: Center(
          child: SizedBox(
              height: 300,
              width: 300,
              child: Image.asset("assets/images/presplash.png")),
        ),
      ),
    );
  }
}
