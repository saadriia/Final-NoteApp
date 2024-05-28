// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
//import 'package:notes_app/view/widgets/Custom_Search_Icon.dart';

import 'Custom_Search_Icon.dart';


class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
         Spacer(),
        CustomeSearchIcon(),
      ],
    );
  }
}
