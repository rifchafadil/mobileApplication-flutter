import 'package:flutter/material.dart';
import 'package:flutterstackeditemlist/constants.dart';
import 'package:flutterstackeditemlist/screen/Detail%20wisata%202/product.dart';
import 'package:flutterstackeditemlist/screen/Detail%20wisata%202/screen/item_card.dart';

class BodyMore extends StatelessWidget {
  const BodyMore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Rekomendasi Destinasi Wisata",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: (Color.fromARGB(255, 204, 204, 209)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              hintText: "Explore your journey!",
              prefixIcon: Icon(Icons.search),
              prefixIconColor: Colors.grey.shade400,
            ),
          ),
        ),
        SizedBox(height: 23),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75),
              itemBuilder: (context, index) =>
                  itemCardMore(product: products[index]),
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
