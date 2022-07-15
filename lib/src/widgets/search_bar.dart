import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String label;
  const SearchBar({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
          filled: true,
          fillColor: Colors.white,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          label: Text(label),
          labelStyle: TextStyle(color: Colors.black)),
    );
  }
}
