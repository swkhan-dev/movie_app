import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/styles.dart';

class CustomTextField extends StatelessWidget {
  final titleText;
  final hintText;
  final isPasswordHide;

  CustomTextField({this.titleText, this.hintText, this.isPasswordHide = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$titleText",
          style: subHeadTextField,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              obscureText: isPasswordHide,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "$hintText",
              ),
            ))
      ],
    );
  }
}
