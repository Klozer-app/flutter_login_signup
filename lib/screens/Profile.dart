import 'package:flutter/material.dart';
import 'package:flutter_login_signup/screens/formSubheadings.dart/accommodation.dart';
import 'package:flutter_login_signup/screens/formSubheadings.dart/guardian.dart';
import 'package:flutter_login_signup/screens/formSubheadings.dart/hemisDetails.dart';
import 'package:flutter_login_signup/screens/formSubheadings.dart/matriculationDetails.dart';
import 'package:flutter_login_signup/screens/formSubheadings.dart/postSchool.dart';
import 'package:flutter_login_signup/screens/formSubheadings.dart/yourInformation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:flutter_login_signup/utils/constantsAdForm.dart';
import 'package:flutter_login_signup/src/widget/profile_list_item.dart';
import 'package:flutter_login_signup/utils/user.dart';
import 'formSubheadings.dart/file_picker_demo.dart';

class ProfileScreen extends StatelessWidget {
  final _user = User();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 496, width: 414, allowFontScaling: true);

    var profileInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            height: kSpacingUnit.w * 10,
            width: kSpacingUnit.w * 10,
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: kSpacingUnit.w * 5,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: kSpacingUnit.w * 2.5,
                    width: kSpacingUnit.w * 2.5,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      heightFactor: kSpacingUnit.w * 1.5,
                      widthFactor: kSpacingUnit.w * 1.5,
                      child: Icon(
                        LineAwesomeIcons.pen,
                        color: kDarkPrimaryColor,
                        size: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
              child: Row(
                children: <Widget>[
                  profileInfo,
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Nicolas Adams',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold,
                          fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'nicolas@gmail.com',
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ),
//                  Icon(
//                    Icons.navigate_next,
//                    size: 36,
//                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                FlatButton(
                    child: ProfileListItem(
                      icon: LineAwesomeIcons.user_shield,
                      text: 'Your Information',
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => YourInformationPage()));
                    }),
                FlatButton(
                    child: ProfileListItem(
                      icon: LineAwesomeIcons.history,
                      text: 'Parent / Guardian / Spouse',
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GuardianPage()));
                    }),
                FlatButton(
                    child: ProfileListItem(
                      icon: LineAwesomeIcons.question_circle,
                      text: 'Hemis Details',
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HemisDetailsPage()));
                    }),
                FlatButton(
                  child: ProfileListItem(
                    icon: LineAwesomeIcons.cog,
                    text: 'Matriculation Details',
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MatriculationPage()));
                  },
                ),
                FlatButton(
                  child: ProfileListItem(
                    icon: LineAwesomeIcons.user_plus,
                    text: 'Post School Activities',
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PostSchoolPage()));
                  },
                ),
                FlatButton(
                  child: ProfileListItem(
                    icon: LineAwesomeIcons.user_plus,
                    text: 'On-Campus Accommodation',
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccommodationPage()));
                  },
                ),
                FlatButton(
                  child: ProfileListItem(
                    icon: LineAwesomeIcons.user_plus,
                    text: 'Additional Documents',
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilePickerDemo()));
                  },
                ),
//                ProfileListItem(
//                  icon: LineAwesomeIcons.alternate_sign_out,
//                  text: 'Logout',
//                  hasNavigation: false,
//                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
