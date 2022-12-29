import 'package:flutter/material.dart';
import 'package:flutterstackeditemlist/screen/Detail%20wisata%202/product.dart';

import '../../../constants.dart';

class itemCardMore extends StatelessWidget {
  final Product product;
  final Function press;
  const itemCardMore({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            // padding: EdgeInsets.all(kDefaultPadding / 10),
            height: 190,
            width: 190,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(product.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            product.title,
            style: TextStyle(
              fontSize: 16.0,
              color: kTextlightColor,
            ),
          ),
        ),
        Text(
          "${product.country}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        // SizedBox(height: 20),
      ],
    );
  }
}
