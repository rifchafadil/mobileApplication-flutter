import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class GambarDetailScreen extends StatelessWidget {
  const GambarDetailScreen({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 0.23),
      child: SizedBox(
        height: size.height * 0.75,
        child: Row(
          children: <Widget>[
            Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: kDefaultPadding * 2.5,
              ),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      icon: SvgPicture.asset("assets/icons/back_arrow.svg"), 
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  // Spacer(),
                ],
              ),
            ),
            ),
            Container(
            height: size.height * 0.6,
            width: size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(63),
              ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 60,
                color: kPrimaryColor.withOpacity(0.29),
              ),
            ],
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/gambar.webp",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}