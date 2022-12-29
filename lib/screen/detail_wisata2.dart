import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Color.fromARGB(255, 245, 242, 235)),
      appBar: AppBar(
        title: Text(
          "Rekomendasi Destinasi",
          style: TextStyle(
            color: Colors.black,
            fontSize: 19.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_rounded),
            color: Colors.black,
            onPressed: () {},
          )
        ],
        backgroundColor: (Color.fromRGBO(255, 255, 255, 1)),
        shadowColor: Colors.black,
        elevation: 6.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
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
            SizedBox(
              height: 5.0,
            ),
            // Text(
            //   "Recommendation",
            //   style: TextStyle(
            //     color: (Color.fromARGB(255, 0, 0, 0)),
            //     fontSize: 22.0,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(14),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: <Widget>[
                  Container(
                    child: Ink.image(
                      image: NetworkImage(
                          'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2019/05/wisata-labuan-bajo-5-Padar-Newsa.jpg'),
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Raja Ampat",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: (Color.fromARGB(255, 0, 0, 0)),
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    child: Ink.image(
                      image: NetworkImage(
                          'https://s1.bukalapak.com/uploads/content_attachment/6fbfecd320e8d762d251c3c5/w-740/shutterstock_5875855-2.jpg'),
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Raja Ampat",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: (Color.fromARGB(255, 0, 0, 0)),
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Ink.image(
                    image: NetworkImage(
                        'https://www.water-sport-bali.com/wp-content/uploads/2014/04/Gili-Trawangan-1.jpg'),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  // SizedBox(height: 8),
                  // Text(
                  //   "Raja Ampat",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     color: (Color.fromARGB(255, 0, 0, 0)),
                  //     fontSize: 13.0,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  Ink.image(
                    image: NetworkImage(
                        'https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/destination-update-may-2019/RA_Pianemoisland_indtravel.jpg'),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  // SizedBox(height: 8),
                  // Text(
                  //   "Raja Ampat",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     color: (Color.fromARGB(255, 0, 0, 0)),
                  //     fontSize: 13.0,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  Ink.image(
                    image: NetworkImage(
                        'https://asset.kompas.com/crops/-fql-uumac3wXv5TLwTTekthQM4=/0x100:1430x1053/750x500/data/photo/2022/03/07/6225c0669e6d2.jpg'),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  // SizedBox(height: 8),
                  // Text(
                  //   "Raja Ampat",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     color: (Color.fromARGB(255, 0, 0, 0)),
                  //     fontSize: 13.0,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  Ink.image(
                    image: NetworkImage(
                        'https://i0.wp.com/id-velopedia.velo.com/wp-content/uploads/2021/02/Pink-Beach-Flores-1.jpg?fit=1200%2C800&ssl=1'),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  // SizedBox(height: 8),
                  // Text(
                  //   "Raja Ampat",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     color: (Color.fromARGB(255, 0, 0, 0)),
                  //     fontSize: 13.0,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  Ink.image(
                    image: NetworkImage(
                        'https://cdn.nativeindonesia.com/foto/ranu-kumbolo/Ranu-Kumbolo.jpg'),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  // SizedBox(height: 8),
                  // Text(
                  //   "Raja Ampat",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     color: (Color.fromARGB(255, 0, 0, 0)),
                  //     fontSize: 13.0,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  Ink.image(
                    image: NetworkImage(
                        'https://www.abangdayu.com/storage/2019/07/View-Gunung-Tangkuban-Perahu.jpg'),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  // SizedBox(height: 8),
                  // Text(
                  //   "Raja Ampat",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     color: (Color.fromARGB(255, 0, 0, 0)),
                  //     fontSize: 13.0,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
