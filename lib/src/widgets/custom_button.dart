import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function()? onpress;
  final Color? buttonColor;
  final Color? textColor;
  const CustomButton(
      {Key? key,
      required this.buttonText,
      this.onpress,
      this.buttonColor,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: buttonColor ?? Colors.black38,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        onPressed: onpress,
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 25,
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
