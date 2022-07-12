import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LinkText extends StatelessWidget {
  final String text;
  final Function()? onpress;
  const LinkText({Key? key, required this.text, this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress,
      child: Text(
        text,
        style: TextStyle(
            color: Colors.green.shade400,
            fontSize: 15,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
