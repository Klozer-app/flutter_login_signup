import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup/models/main.dart';
import 'package:flutter_login_signup/utils/button.dart';
import 'package:flutter_login_signup/utils/colors.dart';
import 'package:flutter_login_signup/utils/user.dart';
import 'package:scoped_model/scoped_model.dart';

class YourInformationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _YourInformationPageState();
}

class _YourInformationPageState extends State<YourInformationPage> {
  Map<String, dynamic> _genderoptions = <String, dynamic>{
    'gender': 0,
  };

  void _handleGenderChange(int value) =>
      setState(() => _genderoptions['gender'] = value);

  Map<String, dynamic> _disabilityOptions = <String, dynamic>{
    'are you disable?': 0,
  };

  void _handleDisabilityChange(int value) =>
      setState(() => _disabilityOptions['are you disable?'] = value);

  final _yourInformationFormKey = GlobalKey<FormState>();
  final _user = User();
  String selectedTitle = 'Choose Your Title';
  List<DropdownMenuItem> getTitleDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String title in titleList) {
      var newItem = DropdownMenuItem(
        child: Text(title),
        value: title,
      );
      dropdownItems.add(newItem);
    }
    return dropdownItems;
  }

  String selectedMaritalStatus = 'Choose Marital Status';
  List<DropdownMenuItem> getMaritalStatusDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String maritalStatus in maritalStatusList) {
      var newItem = DropdownMenuItem(
        child: Text(maritalStatus),
        value: maritalStatus,
      );
      dropdownItems.add(newItem);
    }

    return dropdownItems;
  }

  String selectedOccupation = 'Learner/Student';
  List<DropdownMenuItem> getOccupationDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String occupation in occupationList) {
      var newItem = DropdownMenuItem(
        child: Text(occupation),
        value: occupation,
      );
      dropdownItems.add(newItem);
    }

    return dropdownItems;
  }

  String selectedHomeLanguage = 'Choose Home Langauge';
  List<DropdownMenuItem> getHomeLanguageDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String homeLanguage in homeLanguageList) {
      var newItem = DropdownMenuItem(
        child: Text(homeLanguage),
        value: homeLanguage,
      );
      dropdownItems.add(newItem);
    }

    return dropdownItems;
  }

  String selectedChurchAffiliation = 'Choose Church';
  List<DropdownMenuItem> getChurchAffiliationDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String churchAffiliation in churchAffiliationList) {
      var newItem = DropdownMenuItem(
        child: Text(churchAffiliation),
        value: churchAffiliation,
      );
      dropdownItems.add(newItem);
    }

    return dropdownItems;
  }

  DateTime _dateOfBirth;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Your Information')),
        body: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
              builder: (context) => Form(
                key: _yourInformationFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('Title'),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 5.0),
                      child: DropdownButton(
                        value: selectedTitle,
                        items: getTitleDropdownItems(),
                        onChanged: (value) {
                          setState(() {
                            selectedTitle = value;
                          });
                          onSaved:
                          (val) => setState(() => _user.title = val);
                        },

                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'First Names'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter Your First Name';
                        }
                      },
                      onSaved: (val) => setState(() => _user.firstName = val),
                    ),
                    TextFormField(
                        decoration: InputDecoration(labelText: 'Surname'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Your Surname';
                          }
                          onSaved:
                          (val) => setState(() => _user.surName = val);
                        }),
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 4.0),
                        child: Text(
                          'Gender :',
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                            activeColor: Colors.black87,
                            value: 0,
                            groupValue: _genderoptions['gender'] as int,
                            onChanged: _handleGenderChange,
                          ),
                          Text(
                            GENDER_CHOICES[0],
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          Radio(
                            activeColor: Colors.black87,
                            value: 1,
                            groupValue: _genderoptions['gender'] as int,
                            onChanged: _handleGenderChange,
                          ),
                          Text(
                            GENDER_CHOICES[1],
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'ID Number'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Your ID Number';
                          }
                          onSaved:
                          (val) => setState(() => _user.iD = val);
                        }),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('Date Of Birth'),
                    RaisedButton(
                      child: Text(_dateOfBirth == null
                          ? 'Pick Your Date Of Birth'
                          : _dateOfBirth.toString()),
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: _dateOfBirth == null
                                    ? DateTime.now()
                                    : _dateOfBirth,
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2030))
                            .then((date) {
                          setState(() {
                            _dateOfBirth = date;
                          });
                          onSaved:
                              (val) => setState(() => _user.dateOfBirth = val);
                        });
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('Marital Status'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: DropdownButton(
                          value: selectedMaritalStatus,
                          items: getMaritalStatusDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedMaritalStatus = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.maritalStatus = val);
                          },
                        )),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('Occupation'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: DropdownButton(
                          value: selectedOccupation,
                          items: getOccupationDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedOccupation = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.occupation = val);
                          },
                        )),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('Home Languae'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: DropdownButton(
                          value: selectedHomeLanguage,
                          items: getHomeLanguageDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedHomeLanguage = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.homeLanguage = val);
                          },
                        )),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('Church Affiliation'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: DropdownButton(
                          value: selectedChurchAffiliation,
                          items: getChurchAffiliationDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedChurchAffiliation = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.churchAffiliation = val);
                          },
                        )),
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 4.0),
                        child: Text(
                          'Are You Disable? :',
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                            activeColor: Colors.black87,
                            value: 0,
                            groupValue:
                                _disabilityOptions['are you disable?'] as int,
                            onChanged: _handleDisabilityChange,
                          ),
                          Text(
                            DISABILITY_CHOICES[0],
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          Radio(
                            activeColor: Colors.black87,
                            value: 1,
                            groupValue:
                                _disabilityOptions['are you disable?'] as int,
                            onChanged: _handleDisabilityChange,
                          ),
                          Text(
                            DISABILITY_CHOICES[1],
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Residential Adress'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Your Residential Adress';
                          }
                          onSaved:
                          (val) =>
                              setState(() => _user.residentialAddress = val);
                        }),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Fax Number'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Your Fax Number';
                          }
                          onSaved:
                          (val) => setState(() => _user.fax = val);
                        }),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Phone Number'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Your Phone Number';
                          }
                          onSaved:
                          (val) => setState(() => _user.phoneNumber = val);
                        }),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        child: RaisedButton(
                            onPressed: () {
                              final form = _yourInformationFormKey.currentState;
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
