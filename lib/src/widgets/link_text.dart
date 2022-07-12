import 'package:app_loja_virtual/src/constants.dart';
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
        style: const TextStyle(
            color: kCyanColor, fontSize: 15, fontWeight: FontWeight.w700),
      ),
    );
  }
}
