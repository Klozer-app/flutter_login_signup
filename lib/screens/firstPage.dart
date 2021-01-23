import 'package:flutter/material.dart';
import 'package:flutter_login_signup/widgets/Province_carousel.dart';
import 'package:flutter_login_signup/widgets/hotel_carousel.dart';


class FirstPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'What would you like to Study?',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ProvinceCarousel(),
            SizedBox(height: 1.0),
            HotelCarousel(),
          ],
        ),
      ),
    );
  }
}

