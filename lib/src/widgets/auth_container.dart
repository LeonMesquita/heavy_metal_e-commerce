import 'package:app_loja_virtual/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AuthContainer extends StatelessWidget {
  final List<Widget> children;
  const AuthContainer({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: size.width * .9,
      decoration: BoxDecoration(
        color: kStrongGreyColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        ),
      ),
    );
  }
}
