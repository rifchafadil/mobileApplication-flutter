import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterstackeditemlist/constants.dart';

import 'detailGambar.dart';

class BodyDetail extends StatelessWidget {
  const BodyDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          GambarDetailScreen(size: size),
          TextDetail(title: "Raja Ampat"
          ),
        ],
      ),
    );
  }
}

class TextDetail extends StatelessWidget {
  const TextDetail({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                    text:
                        "Labuan Bajo merupakan sebuah surga \ntersembunyi yang ada di Indonesia bagian timur. \nDesa ini terletak di Kecamatan Komodo, \nKabupaten Manggarai Barat, Provinsi Nusa \nTenggara Timur yang berbatasan langsung \ndengan Nusa Tenggara Barat dan dipisahkan \noleh Selat Sape.",
                    style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontWeight: FontWeight.w300,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
