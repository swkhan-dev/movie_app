import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/colors.dart';
import 'package:movie_app/core/constants/styles.dart';
import 'package:movie_app/ui/custom_widgets/Custom_textfields.dart';
import 'package:movie_app/ui/screens/movies_list_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: pri_color,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/images/movies_icon.png"),
                  height: 150,
                  width: 150,
                ),
                Text("Movie App", style: subHeadTextStyle),
                SizedBox(
                  height: 50,
                ),
                CustomTextField(
                  titleText: "Email",
                  hintText: "Email here",
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  titleText: "Password",
                  hintText: "Enter Password",
                  isPasswordHide: true,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: light_yellow_color, fixedSize: Size(330, 46)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieListScreen()));
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ));
  }
}
