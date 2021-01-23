import 'package:flutter/material.dart';
import 'package:flutter_login_signup/models/main.dart';
import 'package:flutter_login_signup/utils/button.dart';
import 'package:flutter_login_signup/utils/colors.dart';
import 'package:flutter_login_signup/utils/user.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_login_signup/utils/user.dart';


class GuardianPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GuardianPageState();
}

class _GuardianPageState extends State<GuardianPage> {

  Map<String, dynamic> _staffOptions = <String, dynamic>{
    'staff': 0,
  };

  void _handleStaffChange(int value) =>
      setState(() => _staffOptions['staff'] = value);


  final _guardianFormKey = GlobalKey<FormState>();
  final _user = User();

  String selectedGuardianTitle = 'Choose Their Title';
  List<DropdownMenuItem> getGuardianTitleDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String guardianTitle in guardianTitleList) {
      var newItem = DropdownMenuItem(
        child: Text(guardianTitle),
        value: guardianTitle,
      );
      dropdownItems.add(newItem);
    }
    return dropdownItems;
  }


  String selectedGuardianOccupation = 'Employed';
  List<DropdownMenuItem> getGuardianOccupationDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String guardianOccupation in guardianOccupationList) {
      var newItem = DropdownMenuItem(
        child: Text(guardianOccupation),
        value: guardianOccupation,
      );
      dropdownItems.add(newItem);
    }

    return dropdownItems;
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Your Parent / Guardian')),
        body: SingleChildScrollView(
          child: Container(
            padding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
              builder: (context) => Form(
                key: _guardianFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('Their Title'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: DropdownButton(
                          value: selectedGuardianTitle,
                          items: getGuardianTitleDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedGuardianTitle = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.guardianTitle = val);
                          },
                        )),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Their First Names'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter Their First Name';
                        }
                      },
                      onSaved: (val) => setState(() => _user.guardianFirstName = val),
                    ),
                    TextFormField(
                        decoration: InputDecoration(labelText: 'Their Surname'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Their Surname';
                          }
                          onSaved:
                              (val) => setState(() => _user.guardianSurName = val);
                        }),
                    SizedBox(height: 15.0,),
                    Text('Their Occupation'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: DropdownButton(
                          value: selectedGuardianOccupation,
                          items: getGuardianOccupationDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedGuardianOccupation = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.guardianOccupation = val);
                          },
                        )),
                    SizedBox(height: 15.0,),
                TextFormField(
                        decoration:
                        InputDecoration(labelText: 'Their Residential Adress'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Their Residential Adress';
                          }
                          onSaved:
                              (val) =>
                              setState(() => _user.guardianResidentialAddress = val);
                        }),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Their Phone Number'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Their Phone Number';
                          }
                          onSaved:
                              (val) => setState(() => _user.guardianPhoneNumber = val);
                        }),
                    TextFormField(
                        decoration:
                        InputDecoration(labelText: 'Their E-mail'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Their E-mail';
                          }
                          onSaved:
                              (val) =>
                              setState(() => _user.guardianEmail = val);
                        }),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Their Telephone Number'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Their Telephone Number';
                          }
                          onSaved:
                              (val) => setState(() => _user.guardianTelephoneNumber = val);

                        }),
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(left: 8.0,top: 4.0),
                        child: Text('Staff here? :',
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                            activeColor: Colors.black87,
                            value: 0,
                            groupValue: _staffOptions['staff'] as int,
                            onChanged: _handleStaffChange,
                          ),
                          Text(
                            GENDER_CHOICES[0],
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          Radio(
                            activeColor: Colors.black87,
                            value: 1,
                            groupValue: _staffOptions['staff'] as int,
                            onChanged: _handleStaffChange,
                          ),
                          Text(
                            ARE_THEY_STAFF_CHOICES[1],
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Their Staff Number'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Their Staff Number';
                          }
                          onSaved:
                              (val) => setState(() => _user.guardianStaffNumber = val);
                        }),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        child: RaisedButton(
                            onPressed: () {
                              final form = _guardianFormKey.currentState;
                              if (form.validate()) {
                                form.save();
                                _user.save();
                              }
                            },
                            child: Text('Save'))),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
