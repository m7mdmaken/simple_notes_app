import 'package:flutter/material.dart';
import 'package:simple_notes_app/widgets/custom_button.dart';
import 'package:simple_notes_app/widgets/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(top: 48, left: 20, right: 20),
        child: Column(
          children: [
            CustomTextField(
              hintText: 'title',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hight: 7,
              hintText: 'note',
            ),
            SizedBox(
              height: 20,
            ),
            CustomContainerButton(
              text: 'Add',
            )
          ],
        ),
      ),
    );
  }
}
