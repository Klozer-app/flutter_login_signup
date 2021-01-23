import 'package:flutter/material.dart';
import 'package:flutter_login_signup/models/institutions_model.dart';
import 'package:flutter_login_signup/screens/higherEducation_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_login_signup/models/courses_model.dart';

class Slivers extends StatefulWidget {
  final HigherEducation higherEducation;
  Slivers({this.higherEducation});

  @override
  _SliversState createState() => _SliversState();
}

class _SliversState extends State<Slivers> {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//          title: Text('Sliver')),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            pinned: true,
//          title: Text(widget.higherEducation.name),
            backgroundColor: Colors.green,
            expandedHeight: 250.0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                iconSize: 30.0,
                color: Colors.transparent,
                onPressed: () => Navigator.pop(context),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.higherEducation.name),
              background: Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Hero(
                      tag: widget.higherEducation.imageUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(1.0),
                        child: Image(
                          image: AssetImage(widget.higherEducation.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          iconSize: 30.0,
                          color: Colors.transparent,
                          onPressed: () => Navigator.pop(context),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.search),
                              iconSize: 30.0,
                              color: Colors.white,
                              onPressed: () => Navigator.pop(context),
                            ),
                            IconButton(
                              icon: Icon(FontAwesomeIcons.sortAmountDown),
                              iconSize: 25.0,
                              color: Colors.white,
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    bottom: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
//                      Text(
//                        widget.higherEducation.name,
//                        style: TextStyle(
//                          color: Colors.white,
//                          fontSize: 25.0,
//                          fontWeight: FontWeight.w600,
//                          letterSpacing: 1.2,
//                        ),
//                      ),
                        Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.locationArrow,
                              size: 15.0,
                              color: Colors.white70,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              widget.higherEducation.type,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20.0,
                    bottom: 20.0,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.white70,
                      size: 25.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 350,
          )
        ],
      ),
    );
  }
}
