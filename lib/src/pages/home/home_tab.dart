import 'package:app_loja_virtual/src/pages/home/components/product_card.dart';
import 'package:app_loja_virtual/src/pages/product/product_screen.dart';
import 'package:app_loja_virtual/src/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../config/app_data.dart' as appData;
import 'components/category_tile.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String selectedCategory = 'Tudo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            const SearchBar(
              label: 'Pesquisar um produto',
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, top: 10),
              height: 40,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      child: CategoryTile(
                        category: appData.categories[index],
                        isSelected:
                            appData.categories[index] == selectedCategory,
                      ),
                      onTap: () {
                        setState(() {
                          selectedCategory = appData.categories[index];
                        });
                      },
                    );
                  },
                  separatorBuilder: (_, index) => const SizedBox(width: 10),
                  itemCount: appData.categories.length),
            ),
            //
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 9 / 12.5,
                ),
                itemBuilder: (_, index) {
                  return ProductCard(
                    productImage: appData.items[index].imgUrl,
                    productPrice: appData.items[index].price,
                    productName: appData.items[index].itemName,
                    onAdd: () {},
                    onSelect: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductScreen(
                              selectedProduct: appData.items[index]),
                        ),
                      );
                    },
                  );
                },
                itemCount: appData.items.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
