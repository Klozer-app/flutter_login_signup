import 'package:flutter/material.dart';
import 'package:flutter_login_signup/screens/Home.dart';
import 'package:flutter_login_signup/screens/OnBoarding.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_login_signup/screens/wrapper.dart';
import 'package:flutter_login_signup/services/authentification.dart';

import 'src/welcomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Klozer',
      theme: ThemeData(
         primarySwatch: Colors.blue,
         textTheme:GoogleFonts.latoTextTheme(textTheme).copyWith(
           body1: GoogleFonts.montserrat(textStyle: textTheme.body1),
         ),
      ),
      debugShowCheckedModeBanner: false,
//      home: Splash(),
      routes: {
        '/': (context) => Initializer(),
        '/Splash': (context) => Splash(),
        '/OnBoarding' : (context) => OnBoardingScreen(),
        '/Home' : (context) => HomeScreen(),
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 8,
      navigateAfterSeconds: new OnBoardingScreen(),
//      title: new Text('GeeksForGeeks',textScaleFactor: 2,),
      image: new Image.network('https://varsityxchange.com/wp-content/uploads/2020/12/playstore.png'),
//      imageBackground: AssetImage('assets/images/appstore.png'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}

class Initializer extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text('Error'),
              ),
            );
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              body: Center(
                child: Wrapper(
                  auth: Auth(),
                ),
              ),
            );
          }

          return SplashScreen(
            seconds: 8,
            navigateAfterSeconds: new OnBoardingScreen(),
//      title: new Text('GeeksForGeeks',textScaleFactor: 2,),
            image: new Image.network('https://varsityxchange.com/wp-content/uploads/2020/12/playstore.png'),
//      imageBackground: AssetImage('assets/images/appstore.png'),
            loadingText: Text("Loading"),
            photoSize: 100.0,
            loaderColor: Colors.blue,
          );
        },
      ),
    );
  }
}