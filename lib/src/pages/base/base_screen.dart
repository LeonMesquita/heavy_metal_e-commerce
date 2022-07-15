import 'package:app_loja_virtual/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:badges/badges.dart';

import '../home/home_tab.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nome da loja'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 17),
            child: GestureDetector(
                onTap: () {},
                child: Badge(
                  badgeColor: Color.fromARGB(255, 255, 4, 0),
                  badgeContent: const Text('2'),
                  child: const Icon(
                    Icons.shopping_cart,
                  ),
                )),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              pageController.jumpToPage(index);
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: kCyanColor,
          unselectedItemColor: Colors.white,
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
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          HomeTab(),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
