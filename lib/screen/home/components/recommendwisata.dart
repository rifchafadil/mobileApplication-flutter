import 'package:flutter/material.dart';
import 'package:flutterstackeditemlist/screen/detail%20wisata/detail.dart';

import '../../../constants.dart';

class RecommendWisata extends StatelessWidget {
  const RecommendWisata({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendedUI(
            image: "assets/images/rajaAmpat.png",
            title: "Raja Ampat",
            country: "Papua Barat",
            detail: "Detail",
            press: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => DetailWisata(), 
              ),
            );
            },
          ),
          RecommendedUI(
            image: "assets/images/bromo.png",
            title: "Bromo",
            country: "Malang",
            detail: "Detail",
            press: () {},
          ),
          RecommendedUI(
            image: "assets/images/labuanBajo.png",
            title: "Labuan Bajo",
            country: "NTT",
            detail: "Detail",
            press: () {},
          ),
          RecommendedUI(
            image: "assets/images/pantai.png",
            title: "Trawangan",
            country: "Surabaya",
            detail: "Detail",
            press: () {},
          ),
          RecommendedUI(
            image: "assets/images/bromo.png",
            title: "Bromo",
            country: "Depok",
            detail: "Detail",
            press: () {},
          ),
        ],
      ),
    );
  }
}

  class RecommendedUI extends StatelessWidget {
  const RecommendedUI({
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
    return Container(
          margin: EdgeInsets.only(
            left: kDefaultPadding, 
            top: kDefaultPadding / 1.5,
            bottom: kDefaultPadding * 1.7,
          ),
          width: size.width * 0.3,
          height: 225,
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
                        text: TextSpan(children: [
                          TextSpan(text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                            text: "$country".toString(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.70),
                              fontWeight: FontWeight.bold,
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
        );
  }
}