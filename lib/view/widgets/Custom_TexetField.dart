// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/Constants.dart';

class CustomTexetField extends StatelessWidget {
  const CustomTexetField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:  onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'feild is requared';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hint,
          border: outlineBuldBorder(),
          enabledBorder: outlineBuldBorder(),
          focusedBorder: outlineBuldBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder outlineBuldBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
