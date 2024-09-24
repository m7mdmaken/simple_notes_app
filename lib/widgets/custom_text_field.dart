import 'dart:developer';

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.lableText,
      this.hight,
      this.onSaved});
  final String? hintText;
  final String? lableText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final double? hight;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter some text';
        }
        return null;
      },
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
    );
  }
}
