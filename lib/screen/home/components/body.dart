import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterstackeditemlist/constants.dart';
import 'header_searchbox.dart';
import 'recommendwisata.dart';
import 'rekomendasiDestinasi.dart';
import 'title_withmore.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // scrolling
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMore(
            title: "Rekomendasi Wisata",
            press: () {},
          ),
          RecommendWisata(),
          TitleWithMore(
            title: "Rekomendasi Destinasi",
            press: () {},
          ),
          RekomendasiDestinasi(),
          // SizedBox(
          //   height: kDefaultPadding,
          // ),
        ],
      ),
    );
  }
}
