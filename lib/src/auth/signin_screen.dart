import 'package:app_loja_virtual/src/widgets/custom_button.dart';
import 'package:app_loja_virtual/src/widgets/custom_textform.dart';
import 'package:app_loja_virtual/src/widgets/link_text.dart';
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
                height: size.height * .22,
              ),
              const Text(
                'Título da loja',
                style: TextStyle(fontSize: 30),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: size.width * .9,
                height: size.height * .5,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 126, 122, 122),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 30, bottom: 10),
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomTextform(
                        inputLabel: 'Email',
                        inputType: TextInputType.emailAddress,
                        icon: Icons.email,
                      ),
                      CustomTextform(
                        inputLabel: 'Password',
                        inputType: TextInputType.visiblePassword,
                        icon: Icons.lock,
                        isSecret: true,
                      ),
                      CustomButton(
                        buttonText: 'Entrar',
                        onpress: () {},
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
                        onpress: () {},
                        buttonColor: Colors.white,
                        textColor: Color.fromARGB(255, 32, 25, 25),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
