import 'package:flutter/material.dart';
import 'package:flutter_login_signup/models/institutions_model.dart';
import 'package:flutter_login_signup/screens/higherEducation_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_login_signup/models/courses_model.dart';

class HigherEducationScreen extends StatefulWidget {

  final HigherEducation higherEducation;
  HigherEducationScreen({this.higherEducation});

  @override
  _HigherEducationScreenState createState() => _HigherEducationScreenState();
}

class _HigherEducationScreenState extends State<HigherEducationScreen> {
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
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 160.0,
              floating: true,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width,
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
                            fit: BoxFit.fill,
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
                                color: Colors.yellowAccent,
                                onPressed: () => Navigator.pop(context),
                              ),
                              IconButton(
                                icon: Icon(FontAwesomeIcons.sortAmountDown),
                                iconSize: 25.0,
                                color: Colors.yellowAccent,
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
                          Text(
                            widget.higherEducation.name,
                            style: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            ),
                          ),
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
                                  color: Colors.yellowAccent,
                                  fontSize: 15.0,
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
            SliverFillRemaining(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                itemCount: widget.higherEducation.courses.length,
                itemBuilder: (BuildContext context, int index) {
                  Course course = widget.higherEducation.courses[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                        height: 185.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(100.0, 10.0, 15.0, 17.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 120.0,
                                    child: Text(
                                      course.name,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        '\R${course.price}',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
//                                    Text(
//                                      'Fee',
//                                      style: TextStyle(
//                                        color: Colors.grey,
//                                      ),
//                                    ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                course.type,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              _buildRatingStars(course.rating),
                              SizedBox(height: 5.0),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      course.startTimes[0],
                                    ),
                                  ),
//                                SizedBox(width: 10.0),
//                                  Text(
//                                    ' - ',
//                                    style: TextStyle(
//                                      fontSize: 14.0,
//                                      fontWeight: FontWeight.w600,
//                                    ),
//                                  ),
//                                  Container(
//                                    padding: EdgeInsets.all(5.0),
//                                    width: 70.0,
//                                    decoration: BoxDecoration(
//                                      color: Theme.of(context).accentColor,
//                                      borderRadius: BorderRadius.circular(10.0),
//                                    ),
//                                    alignment: Alignment.center,
//                                    child: Text(
//                                      course.startTimes[1],
//                                    ),
//                                  ),
                                ],
                              ),
                              SizedBox(height: 5.0),
                              Container(
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Text(
                                      '                   Apply                      '),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        top: 15.0,
                        bottom: 15.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image(
                            width: 110.0,
                            image: AssetImage(
                              course.imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ));
  }
}
