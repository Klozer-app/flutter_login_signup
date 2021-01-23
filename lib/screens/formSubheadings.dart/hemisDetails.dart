import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup/models/main.dart';
import 'package:flutter_login_signup/utils/button.dart';
import 'package:flutter_login_signup/utils/colors.dart';
import 'package:flutter_login_signup/utils/user.dart';

class HemisDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HemisDetailsPageState();
}

class _HemisDetailsPageState extends State<HemisDetailsPage> {
  final _hemisDetailsFormKey = GlobalKey<FormState>();
  final _user = User();

  String selectedNationality = 'Select Nationality';
  List<DropdownMenuItem> getNationalityDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String nationality in nationalityList) {
      var newItem = DropdownMenuItem(
        child: Text(nationality),
        value: nationality,
      );
      dropdownItems.add(newItem);
    }
    return dropdownItems;
  }


  String selectedRace = 'Select Race';
  List<DropdownMenuItem> getRaceDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String race in raceList) {
      var newItem = DropdownMenuItem(
        child: Text(race),
        value: race,
      );
      dropdownItems.add(newItem);
    }

    return dropdownItems;
  }

  String selectedCity = 'Select City';
  List<DropdownMenuItem> getCityDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String city in cityList) {
      var newItem = DropdownMenuItem(
        child: Text(city),
        value: city,
      );
      dropdownItems.add(newItem);
    }

    return dropdownItems;
  }
  String selectedProvince = 'Select Province';
  List<DropdownMenuItem> getProvinceDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String province in provinceList) {
      var newItem = DropdownMenuItem(
        child: Text(province),
        value: province,
      );
      dropdownItems.add(newItem);
    }

    return dropdownItems;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Hemis Details')),
        body: SingleChildScrollView(
          child: Container(
            padding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
              builder: (context) => Form(
                key: _hemisDetailsFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('Your Nationality'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: DropdownButton(
                          value: selectedNationality,
                          items: getNationalityDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedNationality = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.nationality = val);
                          },
                        )),
                    SizedBox(height: 15.0,),
                    Text('Your Race'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: DropdownButton(
                          value: selectedRace,
                          items: getRaceDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedRace = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.race = val);
                          },
                        )),
                    Text('Province'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: DropdownButton(
                          value: selectedProvince,
                          items: getProvinceDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedProvince = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.province = val);
                          },
                        )),
                    SizedBox(height: 15.0,),
                    Text('City'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: DropdownButton(
                          value: selectedCity,
                          items: getCityDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedCity = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.city = val);
                          },
                        )),

                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        child: RaisedButton(
                            onPressed: () {
                              final form = _hemisDetailsFormKey.currentState;
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
