import 'package:flutter/material.dart';

class CustomContainerButton extends StatelessWidget {
  const CustomContainerButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
          ),
        ),
      ),
    );
  }
}
