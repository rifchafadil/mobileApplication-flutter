import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterstackeditemlist/screen/home/components/body.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.33,
    child: Stack(
      children: <Widget>[
        Container(
          height: size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/img-2.png"),
        ),
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 26 + kDefaultPadding,
              ),
              child: Text('Hi! \nExplore Your \nDestination with Us', 
              style: Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.white,
                fontSize: 30,
                // fontFamily: FontPoppins,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Spacer(),
            // Image.asset("assets/images/pariwisata.png"),
          ],
        ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: ((value) {}),
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                    ),
                  ),
                ),
                SvgPicture.asset("assets/icons/search.svg"),
              ],
            ),
          ),
        ),
      ],
    ),
    );
  }
}