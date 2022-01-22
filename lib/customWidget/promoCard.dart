import 'package:flutter/material.dart';

import '../theme.dart';

class PromoCard extends StatelessWidget {
  final String imagecard;
  final String foodName;
  final String price;
  final String lineThroughPrice;
  const PromoCard(
      {Key? key,
      required this.foodName,
      required this.imagecard,
      required this.lineThroughPrice,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 160,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: kWhite2Color,
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 7,
            )
          ],
          borderRadius: BorderRadius.circular(6)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(imagecard), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              foodName,
              style: primTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 56),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: primTextStyle.copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  lineThroughPrice,
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: kGreyColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
