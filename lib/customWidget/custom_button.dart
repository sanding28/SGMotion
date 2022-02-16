import 'package:flutter/material.dart';

import '../theme.dart';

class CustomButton extends StatelessWidget {
  
  final String tittle;
  final Function() onPressed;
  final EdgeInsets margin;

  const CustomButton({ Key? key,
   required this.tittle,
   required this.onPressed,
   this.margin = EdgeInsets.zero,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: 30,
      height: 40,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: kBlueColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6))),
        child: Text(
          tittle,
          style: whiteTextStyle.copyWith(fontWeight: FontWeight.w500),
        )),
    );
  }
}