//import 'package:flutter/material.dart';
//import 'package:flutter_login_signup/models/main.dart';
//import 'package:flutter_login_signup/utils/button.dart';
//import 'package:flutter_login_signup/utils/colors.dart';
//import 'package:flutter_login_signup/utils/constants.dart';
//import 'package:scoped_model/scoped_model.dart';
//import 'package:file_picker/file_picker.dart';
//
//class AdditionalDocumentsPage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() => _AdditionalDocumentsPageState();
//}
//
//class _AdditionalDocumentsPageState extends State<AdditionalDocumentsPage> {
//  Map<String, dynamic> _accommodationOptions = <String, dynamic>{
//    'accommodation': 0,
//  };
//
//  void _handleAccommodationChange(int value) =>
//      setState(() => _accommodationOptions['accommodation'] = value);
//
//  final _accommodationFormKey = GlobalKey<FormState>();
//  final _user = User();
//
//  @override
//  Widget build(BuildContext context) {
//    return SafeArea(
//      child: Scaffold(
//        appBar: AppBar(title: Text('Apply For Accommodation')),
//        body: SingleChildScrollView(
//          child: Container(
//            padding:
//            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
//            child: Builder(
//              builder: (context) => Form(
//                key: _accommodationFormKey,
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                  children: <Widget>[
//                    Text('Date Of Birth'),
//                    RaisedButton(
//                      child: Text(_dateOfBirth == null
//                          ? 'Pick Your Date Of Birth'
//                          : _dateOfBirth.toString()),
//                      onPressed: () {
//                        showDatePicker(
//                            context: context,
//                            initialDate: _dateOfBirth == null
//                                ? DateTime.now()
//                                : _dateOfBirth,
//                            firstDate: DateTime(1950),
//                            lastDate: DateTime(2030))
//                            .then((date) {
//                          setState(() {
//                            _dateOfBirth = date;
//                          });
//                          onSaved:
//                              (val) => setState(() => _user.dateOfBirth = val);
//                        });
//                      },
//                    ),
//                    Container(
//                        padding: const EdgeInsets.symmetric(
//                            vertical: 16.0, horizontal: 16.0),
//                        child: RaisedButton(
//                            onPressed: () {
//                              final form =
//                                  _accommodationFormKey.currentState;
//                              if (form.validate()) {
//                                form.save();
//                                _user.save();
//                              }
//                            },
//                            child: Text('Save'))),
//                  ],
//                ),
//              ),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
