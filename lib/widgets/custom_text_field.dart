import 'dart:developer';

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.lableText,
      this.hight});
  final String? hintText;
  final String? lableText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final double? hight;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: " $hintText",
        hintStyle: const TextStyle(color: Colors.white),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      style: TextStyle(fontSize: 18, height: hight),
      onChanged: (value) {
        log('Current value: $value');
      },
      onSubmitted: (value) {
        log('Submitted value: $value');
      },
    );
  }
}
