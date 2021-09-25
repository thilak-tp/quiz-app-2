import 'package:flutter/material.dart';
import 'loadingAnimation.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToLoadingAnimation();
  }

  _navigateToLoadingAnimation() async {
    await Future.delayed(Duration(milliseconds: 10000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoadingAnimation()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/logo.png')),
    );
  }
}
