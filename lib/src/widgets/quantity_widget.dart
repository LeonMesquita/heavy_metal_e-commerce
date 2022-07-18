import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuantityWidget extends StatefulWidget {
  const QuantityWidget({Key? key}) : super(key: key);

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          quantityButton(buttonIcon: Icons.remove, onpress: () {}),
          Text('0'),
          quantityButton(buttonIcon: Icons.add, onpress: () {}),
        ],
      ),
    );
  }
}

Widget quantityButton({buttonIcon, required VoidCallback onpress}) {
  return GestureDetector(
    onTap: onpress,
    child: Card(
      elevation: 3,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
        child: Center(
          child: Icon(
            buttonIcon,
            size: 30,
          ),
        ),
      ),
    ),
  );
}
//Color.fromARGB(255, 37, 37, 37)