import 'package:flutter/material.dart';

import '../theme.dart';

class Kategori extends StatelessWidget {
  final String image;
  final String name;
  const Kategori({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: kBorderColor)),
      child: Column(
        children: [
          Container(
            height: 39,
            width: 24,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.contain)),
          ),
          Text(
            name,
            style: primTextStyle.copyWith(
                fontSize: 10, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
