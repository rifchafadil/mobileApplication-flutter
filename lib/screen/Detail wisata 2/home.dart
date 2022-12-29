import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterstackeditemlist/constants.dart';
import 'package:flutterstackeditemlist/screen/Detail%20wisata%202/screen/body.dart';
import 'package:flutterstackeditemlist/screen/home/components/body.dart';

class MoreWisata extends StatelessWidget {
  const MoreWisata({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: kTextColor,
            ),
            onPressed: () {}),
        SizedBox(width: kDefaultPadding / 2)
      ],
      ),
      body: BodyMore(),
    );
  }
}

//   AppBar appbarMoreWisata() {
//     return AppBar(
//       backgroundColor: Colors.white,
//       elevation: 0,
//       leading: IconButton(
//         icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
//         onPressed: () {
//           Navigator.pop(context);
//         },
//       ),
//       actions: <Widget>[
//         IconButton(
//             icon: SvgPicture.asset(
//               "assets/icons/search.svg",
//               color: kTextColor,
//             ),
//             onPressed: () {}),
//         SizedBox(width: kDefaultPadding / 2)
//       ],
//     );
//   }
// }
