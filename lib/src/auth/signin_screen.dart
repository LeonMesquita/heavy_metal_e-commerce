import 'package:app_loja_virtual/src/widgets/auth_textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/skull.png',
                height: size.height * .25,
              ),
              const Text(
                'Título da loja',
                style: TextStyle(fontSize: 30),
              ),
              Container(
                width: size.width * .9,
                height: size.height * .5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [AuthTextform()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
