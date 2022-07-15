import 'package:app_loja_virtual/src/widgets/auth_container.dart';
import 'package:app_loja_virtual/src/widgets/custom_button.dart';
import 'package:app_loja_virtual/src/widgets/custom_textform.dart';
import 'package:app_loja_virtual/src/widgets/link_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../base/base_screen.dart';
import 'signup_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/skull.png',
                  height: size.height * .22,
                ),
                const Text(
                  'Título da loja',
                  style: TextStyle(fontSize: 30),
                ),
                AuthContainer(
                  children: [
                    CustomTextform(
                      inputLabel: 'Email',
                      inputType: TextInputType.emailAddress,
                      icon: Icons.email,
                    ),
                    CustomTextform(
                      inputLabel: 'Senha',
                      inputType: TextInputType.visiblePassword,
                      icon: Icons.lock,
                      isSecret: true,
                    ),
                    CustomButton(
                      buttonText: 'Entrar',
                      onpress: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => BaseScreen(),
                          ),
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: LinkText(
                        text: 'Esqueceu a senha?',
                        onpress: () {},
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Text(
                        'Ainda não tem uma conta?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    CustomButton(
                      buttonText: 'Cadastre-se',
                      onpress: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      buttonColor: Colors.white,
                      textColor: Color.fromARGB(255, 32, 25, 25),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
