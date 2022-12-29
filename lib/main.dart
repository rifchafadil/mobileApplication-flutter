import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterstackeditemlist/constants.dart';
import 'package:flutterstackeditemlist/screen/detail%20wisata/detail.dart';
// import 'package:flutterstackeditemlist/editprofil.dart';
import 'package:flutterstackeditemlist/screen/detail_wisata2.dart';
import 'package:flutterstackeditemlist/screen/home/home.dart';
import 'package:flutterstackeditemlist/screen/login.dart';
import 'firebase_options.dart';
import 'package:flutterstackeditemlist/constants.dart';
import 'package:flutterstackeditemlist/screen/flashscreen.dart';

import 'screen/authPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Destinasi Wisata',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Something went wrong!'));
            } else if (snapshot.hasData) {
              return HomeScreen();
            } else {
              return AuthPage();
            }
          },
        ),
      );
}
