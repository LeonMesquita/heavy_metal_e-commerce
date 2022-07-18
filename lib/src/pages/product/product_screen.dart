import 'package:app_loja_virtual/src/constants.dart';
import 'package:app_loja_virtual/src/models/item_model.dart';
import 'package:app_loja_virtual/src/widgets/custom_button.dart';
import 'package:app_loja_virtual/src/widgets/quantity_widget.dart';
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Hero(
                    tag: widget.selectedProduct.imgUrl,
                    child: Image.asset(
                      widget.selectedProduct.imgUrl,
                      height: size.height * .37,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 32, right: 32, top: 32, bottom: 15),
                    decoration: const BoxDecoration(
                      color: kStrongGreyColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 65,
                                child: Text(
                                  widget.selectedProduct.itemName,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                flex: 35,
                                child: QuantityWidget(),
                              ),
                            ],
                          ),
                        ),
                        //
                        //descrição
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: SingleChildScrollView(
                              child: Text(
                                widget.selectedProduct.description,
                                style: const TextStyle(height: 1.5),
                              ),
                            ),
                          ),
                        ),

                        CustomButton(
                          buttonText: 'Adicionar ao carrinho',
                          buttonColor: kCyanColor,
                          textColor: Colors.black,
                          onpress: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios))
          ],
        ),
      ),
    );
  }
}


/*
  Material(
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: () {},
                                  child: Ink(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey),
                                    child: Text('data'),
                                  ),
                                ),
                              ),

 */