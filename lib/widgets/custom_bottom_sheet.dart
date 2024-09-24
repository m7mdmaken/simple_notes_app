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
        child: CustomFormSheet(),
      ),
    );
  }
}

class CustomFormSheet extends StatefulWidget {
  const CustomFormSheet({
    super.key,
  });

  @override
  State<CustomFormSheet> createState() => _CustomFormSheetState();
}

GlobalKey<FormState> formKey = GlobalKey<FormState>();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;

class _CustomFormSheetState extends State<CustomFormSheet> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hight: 7,
            hintText: 'note',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomContainerButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            text: 'Add',
          )
        ],
      ),
    );
  }
}
