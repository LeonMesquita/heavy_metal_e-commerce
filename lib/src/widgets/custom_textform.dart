import 'package:app_loja_virtual/src/constants.dart';
import 'package:flutter/material.dart';

class CustomTextform extends StatefulWidget {
  final TextInputType? inputType;
  final String inputLabel;
  final TextEditingController? inputController;
  final IconData? icon;
  final IconData? sufixIcon;
  final bool isSecret;
  final Function()? onpress;

  CustomTextform({
    Key? key,
    this.inputType,
    required this.inputLabel,
    this.inputController,
    this.icon,
    this.sufixIcon,
    this.onpress,
    this.isSecret = false,
  });

  @override
  State<CustomTextform> createState() => _CustomTextformState();
}

class _CustomTextformState extends State<CustomTextform> {
  bool isObscure = false;

  @override
  void initState() {
    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isObscure,
        keyboardType: widget.inputType ?? TextInputType.text,
        decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: Colors.white,
            //enabledBorder: InputBorder.none,
            // focusedBorder: InputBorder.none,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            //disabledBorder: InputBorder.none,
            prefixIcon: Icon(
              widget.icon,
              color: Colors.black,
            ),
            suffixIcon: widget.isSecret
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                      isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.black,
                    ),
                  )
                : null,
            labelText: widget.inputLabel,
            labelStyle: kInputTextStyle),
        style: kInputTextStyle,
        controller: widget.inputController,
      ),
    );
  }
}
