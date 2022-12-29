import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterstackeditemlist/screen/editprofilbisa.dart';
import 'package:flutterstackeditemlist/screen/flashscreen.dart';
import '../../../constants.dart';

class NavigationBottom extends StatelessWidget {
  const NavigationBottom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
        // top: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset("assets/icons/users.svg"),
              onPressed: () {},
            ),
            IconButton(
                icon: SvgPicture.asset("assets/icons/chats.svg"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => EditProfileUI()));
                }),
            IconButton(
                icon: SvgPicture.asset("assets/icons/logout.svg"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => WelcomeScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
