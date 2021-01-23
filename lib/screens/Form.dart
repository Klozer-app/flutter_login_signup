//import 'package:flutter/material.dart';
//import 'package:flutter_login_signup/models/main.dart';
//import 'package:flutter_login_signup/utils/button.dart';
//import 'package:flutter_login_signup/utils/colors.dart';
//import 'package:flutter_login_signup/utils/user.dart';
//import 'package:scoped_model/scoped_model.dart';
//
//
//class FormPage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() => _FormPageState();
//}
//
//class _FormPageState extends State<FormPage> {
//  Map<String, dynamic> _formData = <String, dynamic>{
//    'name': '???',
//    'ticket': 0,
//    'gender': 0,
//    'food': false,
//  };
//
//  BuildContext context;
//
//  List<String> options = [];
//  int _ticketCounter = 0;
//  final _nameTextController = TextEditingController();
//  bool _validateName = false;
//
//  void _resetFields() {
//    _nameTextController.text = '';
//    Map<String, dynamic> _formData = <String, dynamic>{
//      'name': '???',
//      'ticket': 0,
//      'gender': 0,
//      'food': false,
//    };
//
//    setState(() {
//      _ticketCounter = 0;
//      _validateName = false;
//    });
//  }
//
//  void _showDialog(String title, String content) {
//    showDialog<AlertDialog>(
//        context: context,
//        builder: (BuildContext context) {
//          return AlertDialog(
//            title: Text(title),
//            content: Text(content),
//            actions: <Widget>[
//              FlatButton(
//                child: Text(ALERT_OK),
//                onPressed: () {
//                  Navigator.of(context).pop();
//                },
//              )
//            ],
//          );
//        });
//  }
//
//  void _handleGenderChange(int value) =>
//      setState(() => _formData['gender'] = value);
//
//  void _handleFoodOption(bool value) =>
//      setState(() => _formData['food'] = value);
//
////  YOUR INFORMATION SECTION
//// YOUR NAME FIELDS
//  ListTile getTitleInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          TITLE,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: TITLE_HINT_NAME,
//                  labelText: TITLE_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getInitialsInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          INITIALS,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: INITIALS_HINT_NAME,
//                  labelText: INITIALS_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getFirstNameInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          YOUR_NAME,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: YOUR_NAME_HINT_NAME,
//                  labelText: YOUR_NAME_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getSurNameInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          YOUR_SURNAME,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: YOUR_SURNAME_HINT_NAME,
//                  labelText: YOUR_SURNAME_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  Widget getGenderOption() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 4.0),
//        child: Text(
//          GENDER,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Row(
//        mainAxisAlignment: MainAxisAlignment.start,
//        children: <Widget>[
//          Radio(
//            activeColor: mRegistrationBlack,
//            value: 0,
//            groupValue: _formData['gender'] as int,
//            onChanged: _handleGenderChange,
//          ),
//          Text(
//            GENDER_CHOICES[0],
//            style: Theme.of(context).textTheme.subtitle,
//          ),
//          Radio(
//            activeColor: mRegistrationBlack,
//            value: 1,
//            groupValue: _formData['gender'] as int,
//            onChanged: _handleGenderChange,
//          ),
//          Text(
//            GENDER_CHOICES[1],
//            style: Theme.of(context).textTheme.subtitle,
//          ),
//        ],
//      ),
//    );
//  } // GENDER FIELD
//
//  ListTile getIdInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          ID_NO,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: ID_NO_HINT_NAME,
//                  labelText: ID_NO_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getDateOfBirthInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          DATE_OF_BIRTH,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: DATE_OF_BIRTH_HINT_NAME,
//                  labelText: DATE_OF_BIRTH_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getMaritalStatusInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          MARITAL_STATUS,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: MARITAL_STATUS_HINT_NAME,
//                  labelText: MARITAL_STATUS_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getOccupationInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          OCCUPATION,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: OCCUPATION_HINT_NAME,
//                  labelText: OCCUPATION_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getHomeLanguageInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          HOME_LANGUAGE,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: HOME_LANGUAGE_HINT_NAME,
//                  labelText: HOME_LANGUAGE_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getChurchAffiliationInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          RELIGION,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: RELIGION_HINT_NAME,
//                  labelText: RELIGION_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  Widget getDisabilityOption() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 4.0),
//        child: Text(
//          DISABILITY,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Row(
//        mainAxisAlignment: MainAxisAlignment.start,
//        children: <Widget>[
//          Radio(
//            activeColor: mRegistrationBlack,
//            value: 0,
//            groupValue: _formData['gender'] as int,
//            onChanged: _handleGenderChange,
//          ),
//          Text(
//            DISABILITY_CHOICES[0],
//            style: Theme.of(context).textTheme.subtitle,
//          ),
//          Radio(
//            activeColor: mRegistrationBlack,
//            value: 1,
//            groupValue: _formData['gender'] as int,
//            onChanged: _handleGenderChange,
//          ),
//          Text(
//            DISABILITY_CHOICES[1],
//            style: Theme.of(context).textTheme.subtitle,
//          ),
//        ],
//      ),
//    );
//  } // Disability Option
//
//  ListTile getResidentialAddressInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          RESIDENTIAL_ADDRESS,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: RESIDENTIAL_ADDRESS_HINT_NAME,
//                  labelText: RESIDENTIAL_ADDRESS_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getFaxInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          FAX,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: FAX_HINT_NAME,
//                  labelText: FAX_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getPhoneNoInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          PHONE_NUMBER,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: PHONE_NUMBER_HINT_NAME,
//                  labelText: PHONE_NUMBER_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getEmailInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          EMAIL,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: EMAIL_HINT_NAME,
//                  labelText: EMAIL_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//// Parents/Guardian/spouse
//  ListTile getGuardianTitleInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          GUARDIAN_TITLE,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: GUARDIAN_TITLE_HINT_NAME,
//                  labelText: GUARDIAN_TITLE_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getGuardianInitialsInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          GUARDIAN_INITIALS,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: GUARDIAN_INITIALS_HINT_NAME,
//                  labelText: GUARDIAN_INITIALS_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getGuardianFirstNameInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          GUARDIAN_FIRST_NAME,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: GUARDIAN_FIRST_NAME_HINT_NAME,
//                  labelText: GUARDIAN_FIRST_NAME_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getGuardianSurNameInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          GUARDIAN_SURNAME,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: GUARDIAN_SURNAME_HINT_NAME,
//                  labelText: GUARDIAN_SURNAME_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getGuardianResidentialAddressInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          GUARDIAN_RESIDENTIAL_ADDRESS,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: GUARDIAN_RESIDENTIAL_ADDRESS_HINT_NAME,
//                  labelText: GUARDIAN_RESIDENTIAL_ADDRESS_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getGuardianPhoneNoInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          GUARDIAN_PHONE_NUMBER,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: GUARDIAN_PHONE_NUMBER_HINT_NAME,
//                  labelText: GUARDIAN_PHONE_NUMBER_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getGuardianWorkNumberInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          GUARDIAN_WORK_NUMBER,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: GUARDIAN_WORK_NUMBER_HINT_NAME,
//                  labelText: GUARDIAN_WORK_NUMBER_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getGuardianEmailInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          GUARDIAN_EMAIL,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: GUARDIAN_EMAIL_HINT_NAME,
//                  labelText: GUARDIAN_EMAIL_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getGuardianStaffNumberInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          IF_YES_FOR_ARE_THEY_STAFF,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: IF_YES_FOR_ARE_THEY_STAFF_HINT_NAME,
//                  labelText: IF_YES_FOR_ARE_THEY_STAFF_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//// HEMIS DETAILS
//  ListTile getNationalityInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          NATIONALITY,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: NATIONALITY_HINT_NAME,
//                  labelText: NATIONALITY_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getRaceInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          RACE,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: RACE_HINT_NAME,
//                  labelText: RACE_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getProvinceInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          PROVINCE,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: PROVINCE_HINT_NAME,
//                  labelText: PROVINCE_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getCityInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          CITY,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: CITY_HINT_NAME,
//                  labelText: CITY_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//// TICKET COUNTER
////  Widget getTicketCounter() {
////    return ListTile(
////      leading: Padding(
////        padding: EdgeInsets.only(left: 8.0, top: 8.0),
////        child: Text(
////          NO_TICKETS,
////          style: Theme.of(context).textTheme.subtitle,
////        ),
////      ),
////      title: Row(
////        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////        children: <Widget>[
////          IconButton(
////            icon: Icon(Icons.remove),
////            color: mRegistrationBlack,
////            onPressed: () {
////              if (_ticketCounter > 0) {
////                setState(() {
////                  _ticketCounter--;
////                });
////              } else {
////                _formData['ticket'] = _ticketCounter;
////              }
////            },
////          ),
////          Text(
////            _ticketCounter.toString(),
////            style: Theme.of(context).textTheme.title,
////          ),
////          IconButton(
////            icon: Icon(Icons.add),
////            color: mRegistrationBlack,
////            onPressed: () {
////              if (_ticketCounter < 9) {
////                setState(() {
////                  _ticketCounter++;
////                });
////              } else {
////                _formData['ticket'] = _ticketCounter;
////              }
////            },
////          ),
////        ],
////      ),
////    );
////  }
////
////  // Food fields
////  Widget getFoodOption() {
////    return Padding(
////      padding: EdgeInsets.only(bottom: 12.0),
////      child: ListTile(
////        leading: Checkbox(
////          activeColor: mRegistrationBlack,
////          onChanged: _handleFoodOption,
////          value: _formData['food'] as bool,
////        ),
////        title: InkWell(
////          onTap: () {
////            setState(() {
////              _formData['food'] = !_formData['food'];
////            });
////          },
////          child: Text(
////            NEED_FOOD,
////            style: Theme.of(context).textTheme.subtitle,
////          ),
////        ),
////      ),
////    );
////  }
//
//// Matriculation Details
//// Matric Details
//
//  // Matriculation Details
//  ListTile getExaminationDateInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          EXAMINATION_DATE,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: EXAMINATION_DATE_HINT_NAME,
//                  labelText: EXAMINATION_DATE_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getHighestGradeInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          HIGHEST_GRADE_PASSED,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: HIGHEST_GRADE_PASSED_HINT_NAME,
//                  labelText: HIGHEST_GRADE_PASSED_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getExaminationNumberInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          EXAMINATION_NUMBER,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: EXAMINATION_NUMBER_HINT_NAME,
//                  labelText: EXAMINATION_NUMBER_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getSeniorCertificationInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          SENIOR_CERTIFICATION_TYPE,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: SENIOR_CERTIFICATION_TYPE_HINT_NAME,
//                  labelText: SENIOR_CERTIFICATION_TYPE_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getSchoolNameInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          SCHOOL_NAME,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: SCHOOL_NAME_HINT_NAME,
//                  labelText: SCHOOL_NAME_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getExaminationBoardInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          EXAMINATION_BOARD,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: EXAMINATION_BOARD_HINT_NAME,
//                  labelText: EXAMINATION_BOARD_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getLastExaminationInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          LAST_EXAMINATION,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: LAST_EXAMINATION_HINT_NAME,
//                  labelText: LAST_EXAMINATION_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//// Post School Activities
//  Widget getPreviousRegistrationOption() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 4.0),
//        child: Text(
//          PREVIOUS_REGISTRATION,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Row(
//        mainAxisAlignment: MainAxisAlignment.start,
//        children: <Widget>[
//          Radio(
//            activeColor: mRegistrationBlack,
//            value: 0,
//            groupValue: _formData['Apply For '] as int,
//            onChanged: _handleGenderChange,
//          ),
//          Text(
//            PREVIOUS_REGISTRATION_CHOICES[0],
//            style: Theme.of(context).textTheme.subtitle,
//          ),
//          Radio(
//            activeColor: mRegistrationBlack,
//            value: 1,
//            groupValue: _formData['gender'] as int,
//            onChanged: _handleGenderChange,
//          ),
//          Text(
//            PREVIOUS_REGISTRATION_CHOICES[1],
//            style: Theme.of(context).textTheme.subtitle,
//          ),
//        ],
//      ),
//    );
//  } //
//
//  // Previous Exclusion From  FIELD
//
//  ListTile getInstitutionNameInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          WHICH_INSTITUTION,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: WHICH_INSTITUTION_HINT_NAME,
//                  labelText: WHICH_INSTITUTION_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getStudentNoInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          STUDENT_NO,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: STUDENT_NO_HINT_NAME,
//                  labelText: STUDENT_NO_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getUniStartInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          START,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: START_HINT_NAME,
//                  labelText: START_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getUniEndInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          STOP,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: STOP_HINT_NAME,
//                  labelText: STOP_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getActivityInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          NOT_REGISTERED,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: NOT_REGISTERED_HINT_NAME,
//                  labelText: NOT_REGISTERED_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  Widget getPreviousExclusionOption() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 4.0),
//        child: Text(
//          EXCLUDED_FROM_INSTITUTION,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Row(
//        mainAxisAlignment: MainAxisAlignment.start,
//        children: <Widget>[
//          Radio(
//            activeColor: mRegistrationBlack,
//            value: 0,
//            groupValue: _formData['gender'] as int,
//            onChanged: _handleGenderChange,
//          ),
//          Text(
//            EXCLUDED_FROM_INSTITUTION_CHOICES[0],
//            style: Theme.of(context).textTheme.subtitle,
//          ),
//          Radio(
//            activeColor: mRegistrationBlack,
//            value: 1,
//            groupValue: _formData['gender'] as int,
//            onChanged: _handleGenderChange,
//          ),
//          Text(
//            EXCLUDED_FROM_INSTITUTION_CHOICES[1],
//            style: Theme.of(context).textTheme.subtitle,
//          ),
//        ],
//      ),
//    );
//  } // GENDER FIELD
//
//  ListTile getExclusionInstitutionInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          IF_YES_FOR_EXCLUSION_NAME,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: IF_YES_FOR_EXCLUSION_NAME_HINT_NAME,
//                  labelText: IF_YES_FOR_EXCLUSION_NAME_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getExclusionQualificationInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          IF_YES_FOR_EXCLUSION_QUALIFICATION,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: IF_YES_FOR_EXCLUSION_QUALIFICATION_HINT_NAME,
//                  labelText: IF_YES_FOR_EXCLUSION_QUALIFICATION_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getExclusionStartInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          IF_YES_FOR_EXCLUSION_START,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: IF_YES_FOR_EXCLUSION_START_HINT_NAME,
//                  labelText: IF_YES_FOR_EXCLUSION_START_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getExclusionStopInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          IF_YES_FOR_EXCLUSION_STOP,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: IF_YES_FOR_EXCLUSION_STOP_HINT_NAME,
//                  labelText: IF_YES_FOR_EXCLUSION_STOP_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getExclusionReasonInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          IF_YES_FOR_EXCLUSION_REASON,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: IF_YES_FOR_EXCLUSION_REASON_HINT_NAME,
//                  labelText: IF_YES_FOR_EXCLUSION_REASON_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//// Campus Accommodation
//  Widget getApplyAccommodationOption() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 4.0),
//        child: Text(
//          APPLY_FOR_CAMPUS_ACCOMMODATION,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Row(
//        mainAxisAlignment: MainAxisAlignment.start,
//        children: <Widget>[
//          Radio(
//            activeColor: mRegistrationBlack,
//            value: 0,
//            groupValue: _formData['Apply For '] as int,
//            onChanged: _handleGenderChange,
//          ),
//          Text(
//            APPLY_FOR_CAMPUS_ACCOMMODATION_CHOICES[0],
//            style: Theme.of(context).textTheme.subtitle,
//          ),
//          Radio(
//            activeColor: mRegistrationBlack,
//            value: 1,
//            groupValue: _formData['gender'] as int,
//            onChanged: _handleGenderChange,
//          ),
//          Text(
//            APPLY_FOR_CAMPUS_ACCOMMODATION_CHOICES[1],
//            style: Theme.of(context).textTheme.subtitle,
//          ),
//        ],
//      ),
//    );
//  } // GENDER FIELD
//
//// Additional Documents
//
//// Additional Documents
//  ListTile getIdUploadInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          ID_UPLOAD,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: ID_UPLOAD_HINT_NAME,
//                  labelText: ID_UPLOAD_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  ListTile getResultsUploadInputListTile() {
//    return ListTile(
//      leading: Padding(
//        padding: EdgeInsets.only(left: 8.0, top: 16.0),
//        child: Text(
//          RESULTS_UPLOAD,
//          style: Theme.of(context).textTheme.subtitle,
//        ),
//      ),
//      title: Padding(
//        padding: EdgeInsets.only(top: 10.0),
//        child: Theme(
//          data: ThemeData(
//            primaryColor: mRegistrationBlack,
//            primaryColorDark: mRegistrationBlack,
//          ),
//          child: Container(
//            height: 40.0,
//            child: TextField(
//              style: Theme.of(context).textTheme.subtitle,
//              textCapitalization: TextCapitalization.words,
//              decoration: InputDecoration(
//                  fillColor: mRegistrationBlack,
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(5.0),
//                  ),
//                  contentPadding:
//                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//                  hintText: RESULTS_UPLOAD_HINT_NAME,
//                  labelText: RESULTS_UPLOAD_LABEL_NAME),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  Widget getSectionHeader(String title) {
//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//        Padding(
//          padding: EdgeInsets.only(top: 18.0, left: 22),
//          child: Text(
//            title,
//            style: Theme.of(context).textTheme.headline,
//          ),
//        ),
//        Padding(
//          padding: EdgeInsets.only(left: 18.0, right: 18.0),
//          child: Divider(
//            color: mYankeeBlue,
//          ),
//        )
//      ],
//    );
//  }
//
//  Widget getSubmitButton() {
//    return Padding(
//      padding: EdgeInsets.only(bottom: 16.0),
//      child: Center(
//        child:
//            FormAppButton(text: SUBMIT, action: _submitForm).getButton(context),
//      ),
//    );
//  }
//
//  void _submitForm() {
//    _formData['name'] = _nameTextController.text;
//
//    setState(() {
//      _nameTextController.text.isEmpty
//          ? _validateName = true
//          : _validateName = false;
//    });
//
//    MainModel _model = ScopedModel.of(context);
//
//    if (!_validateName) {
//      final bool success = _model.submit(_formData);
//
//      if (success) {
//        showDialog(
//            context: context,
//            builder: (BuildContext context) {
//              return AlertDialog(
//                title: Text(TITLE_SUBMISSION_SUCCESS),
//                content: Text(MESSAGE_SUBMISSION_SUCCESS),
//                actions: <Widget>[
//                  FlatButton(
//                    child: Text(ALERT_OK),
//                    onPressed: () {
//                      Navigator.of(context).pop();
//                      _resetFields();
//                    },
//                  )
//                ],
//              );
//            });
//      } else {
//        _showDialog(TITLE_ERROR, MESSAGE_ERROR);
//      }
//    } else {
//      _showDialog(TITLE_VALIDATION, MESSAGE_VALIDATION);
//    }
//  }
//
//  List<Widget> renderForm() {
//    return [
//      getSectionHeader(SECTION_YOUR_DETAILS),
//      getTitleInputListTile(),
//      getInitialsInputListTile(),
//      getFirstNameInputListTile(),
//      getSurNameInputListTile(),
//      getGenderOption(),
//      getIdInputListTile(),
//      getDateOfBirthInputListTile(),
//      getMaritalStatusInputListTile(),
//      getOccupationInputListTile(),
//      getHomeLanguageInputListTile(),
//      getChurchAffiliationInputListTile(),
//      getDisabilityOption(),
//      getResidentialAddressInputListTile(),
//      getFaxInputListTile(),
//      getPhoneNoInputListTile(),
//      getEmailInputListTile(),
//      getSectionHeader(SECTION_GUARDIAN),
//      getGuardianTitleInputListTile(),
//      getGuardianInitialsInputListTile(),
//      getGuardianFirstNameInputListTile(),
//      getGuardianSurNameInputListTile(),
//      getGuardianResidentialAddressInputListTile(),
//      getGuardianPhoneNoInputListTile(),
//      getGuardianWorkNumberInputListTile(),
//      getGuardianEmailInputListTile(),
//      getGuardianStaffNumberInputListTile(),
//      getSectionHeader(SECTION_HEMIS_DETAILS),
//      getNationalityInputListTile(),
//      getRaceInputListTile(),
//      getProvinceInputListTile(),
//      getCityInputListTile(),
//      getSectionHeader(SECTION_MATRICULATION_DETAILS),
//      getExaminationDateInputListTile(),
//      getHighestGradeInputListTile(),
//      getExaminationNumberInputListTile(),
//      getSeniorCertificationInputListTile(),
//      getSchoolNameInputListTile(),
//      getExaminationBoardInputListTile(),
//      getLastExaminationInputListTile(),
//      getSectionHeader(SECTION_POST_SCHOOL_ACTIVITIES),
//      getPreviousRegistrationOption(),
//      getInstitutionNameInputListTile(),
//      getStudentNoInputListTile(),
//      getUniStartInputListTile(),
//      getUniEndInputListTile(),
//      getActivityInputListTile(),
//      getPreviousExclusionOption(),
//      getExclusionInstitutionInputListTile(),
//      getExclusionQualificationInputListTile(),
//      getExclusionStartInputListTile(),
//      getExclusionStopInputListTile(),
//      getExclusionReasonInputListTile(),
//      getSectionHeader(SECTION_ON_CAMPUS_ACCOMMODATION),
//      getApplyAccommodationOption(),
//      getSectionHeader(SECTION_ADDITIONAL_DOCUMENTS),
//      getIdUploadInputListTile(),
//      getResultsUploadInputListTile(),
//      getSubmitButton()
//    ];
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    this.context = context;
//
//    return Scaffold(
//      body: ListView(
//        children: renderForm(),
//      ),
//    );
//  }
//}
