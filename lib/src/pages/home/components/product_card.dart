import 'package:app_loja_virtual/src/constants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productImage;
  final String productName;
  final double productPrice;
  final VoidCallback onAdd;
  final VoidCallback onSelect;
  const ProductCard(
      {Key? key,
      required this.productImage,
      required this.productPrice,
      required this.productName,
      required this.onAdd,
      required this.onSelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Stack(
        children: [
          Card(
            elevation: 7,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.asset(
                      productImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                productText(
                  productName,
                ),
                productText(
                  'R\$${productPrice.toStringAsFixed(2)}',
                ),
              ],
            ),
          ),
          Positioned(
            right: 3,
            top: 3,
            child: GestureDetector(
              onTap: onAdd,
              child: Container(
                padding: const EdgeInsets.only(left: 5),
                width: 35,
                height: 30,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 70, 69, 69),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(10))),
                child: const Icon(
                  Icons.shopping_cart,
                  color: kCyanColor,
                  size: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget productText(text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
    child: Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 14),
    ),
  );
}
