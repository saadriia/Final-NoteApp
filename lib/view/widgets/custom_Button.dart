import 'package:flutter/material.dart';

import 'Constants.dart';


class customButton extends StatelessWidget {
  const customButton({super.key , this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
 
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,),
        
         child: const Center(
          child: Text('Submet', style:
           TextStyle(
            color: Colors.black87,
            fontSize: 24, 
      
          ), ),
        ),
      ),
    );
  }
}