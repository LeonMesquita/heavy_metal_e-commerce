import 'package:app_loja_virtual/src/constants.dart';
import 'package:app_loja_virtual/src/widgets/auth_container.dart';
import 'package:app_loja_virtual/src/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../widgets/custom_textform.dart';

class SignUpScreen extends StatelessWidget {
  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {
      '#': RegExp(r'[0-9]'),
    },
  );

  final phonefFormatter = MaskTextInputFormatter(
    mask: '(##)#####-####',
    filter: {
      '#': RegExp(r'[0-9]'),
    },
  );
  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                    CustomTextform(
                        inputLabel: 'Nome',
                        inputType: TextInputType.emailAddress,
                        icon: Icons.person),
                    CustomTextform(
                      inputLabel: 'Celular',
                      inputType: TextInputType.emailAddress,
                      icon: Icons.phone,
                      inputFormaters: [phonefFormatter],
                    ),
                    CustomTextform(
                      inputLabel: 'CPF',
                      inputType: TextInputType.emailAddress,
                      icon: Icons.file_copy,
                      inputFormaters: [cpfFormatter],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: CustomButton(
                        buttonText: 'Cadastrar',
                        onpress: () {},
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Text(
                        'Já tem uma conta?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    CustomButton(
                      buttonText: 'Entrar',
                      onpress: () {
                        Navigator.of(context).pop();
                      },
                      buttonColor: Colors.white,
                      textColor: kWhiteButtonTextColor,
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
