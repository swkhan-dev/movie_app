import 'package:flutter/material.dart';
import 'package:movie_app/ui/screens/login_screen.dart';
import 'package:movie_app/core/constants/colors.dart';
import 'package:movie_app/core/constants/styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _nextScreen();
    super.initState();
  }

  _nextScreen() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pri_color,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("assets/images/movies_icon.png"),
            height: 150,
            width: 150,
          ),
          Text("Movie App", style: subHeadTextStyle),
        ],
      )),
    );
  }
}
