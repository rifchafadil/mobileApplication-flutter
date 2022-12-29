import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RekomendasiDestinasi extends StatelessWidget {
  const RekomendasiDestinasi({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RekomendasiUI(
            image: "assets/images/image26.png",
            title: "Pantai Kuta",
            country: "Bali",
            detail: "Detail",
            press: () {},
          ),
          RekomendasiUI(
            image: "assets/images/image28.png",
            title: "Pantai Balekambang",
            country: "Nusa Tenggara Timur",
            detail: "Detail",
            press: () {},
          ),
          RekomendasiUI(
            image: "assets/images/image29.png",
            title: "Labuan Bajo",
            country: "NTT",
            detail: "Detail",
            press: () {},
          ),
          RekomendasiUI(
            image: "assets/images/image31.png",
            title: "Gunung Bromo",
            country: "Lumajang",
            detail: "Detail",
            press: () {},
          ),
          RekomendasiUI(
            image: "assets/images/image33.png",
            title: "Candi Borobudur",
            country: "Jogja",
            detail: "Detail",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RekomendasiUI extends StatelessWidget {
  const RekomendasiUI({
    Key key,
    this.image,
    this.title,
    this.country,
    this.detail,
    this.press,
  }) : super(key: key);

  final String image, title, country, detail;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 1.5,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.45,
        height: 215,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(10),
        //   image: DecorationImage(
        //     fit: BoxFit.cover,
        //     image: AssetImage(image),
        //   ),
        // ),
        child: Column(
          children: <Widget>[
            Image.asset(image),
            GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 70,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                            text: "$country".toString(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.70),
                              height: 1.5,
                            ),
                          ),
                          TextSpan(
                            text: "\n$detail",
                            style: Theme.of(context).textTheme.button.copyWith(
                                  color: kPrimaryColor.withOpacity(0.5),
                                  decoration: TextDecoration.underline,
                                  height: 1.5,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
