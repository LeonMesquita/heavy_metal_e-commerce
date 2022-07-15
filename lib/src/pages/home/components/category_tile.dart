import 'package:app_loja_virtual/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryTile extends StatelessWidget {
  final String category;
  final bool isSelected;
  const CategoryTile(
      {Key? key, required this.category, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          color: isSelected ? kCyanColor : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          category,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontSize: isSelected ? 17 : 14,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
