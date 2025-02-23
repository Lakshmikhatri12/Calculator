import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  const MyButton(
      {super.key,
      this.title = "",
      this.color = const Color(0xffa5a5a5),
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onpress,
          child: Container(
              height: 80,
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
              child: Center(
                  child: Text(
                title,
                style: TextStyle(color: whiteColor, fontSize: 20),
              ))),
        ),
      ),
    );
  }
}
