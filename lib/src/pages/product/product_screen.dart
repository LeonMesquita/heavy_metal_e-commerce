import 'package:app_loja_virtual/src/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductScreen extends StatefulWidget {
  final ItemModel selectedProduct;
  const ProductScreen({Key? key, required this.selectedProduct})
      : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(widget.selectedProduct.imgUrl),
        ],
      ),
    );
  }
}
