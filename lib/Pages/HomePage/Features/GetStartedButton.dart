// ignore_for_file: file_names
import 'package:flutter/material.dart';

class InvertedButtonFb2 extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const InvertedButtonFb2(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);

    return OutlinedButton(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          alignment: Alignment.center,
          side: MaterialStateProperty.all(
              const BorderSide(width: 1, color: primaryColor)),
          padding: MaterialStateProperty.all(const EdgeInsets.only(
              right: 75, left: 75, top: 20.5, bottom: 20.5)),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)))),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: primaryColor, fontSize: 18),
      ),
    );
  }
}
