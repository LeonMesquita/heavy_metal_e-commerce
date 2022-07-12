import 'package:app_loja_virtual/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BaseScreen extends StatelessWidget {
  int currentIndex = 0;
  BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //backgroundColor: kStrongGreyColor,
          selectedItemColor: kCyanColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ),
                label: 'Carrinho'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                label: 'Pedidos'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Perfil'),
          ]),
      body: Container(),
    );
  }
}
