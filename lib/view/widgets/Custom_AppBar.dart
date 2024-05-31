// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_icon.dart';
//import 'package:notes_app/view/widgets/Custom_Search_Icon.dart';

import 'Custom_Search_Icon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key, required this.icon, this.onPressed, required this.title});
    final String title;

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
          Text(
        title,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        const CustomeSearchIcon(),
        CustomIcon(
          onPressed: onPressed ,
          icon: icon,
        )
      ],
    );
  }
}
