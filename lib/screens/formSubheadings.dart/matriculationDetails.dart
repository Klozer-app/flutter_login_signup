import 'package:flutter/material.dart';
import 'package:flutter_login_signup/models/main.dart';
import 'package:flutter_login_signup/utils/button.dart';
import 'package:flutter_login_signup/utils/colors.dart';
import 'package:flutter_login_signup/utils/user.dart';
import 'package:scoped_model/scoped_model.dart';


class MatriculationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MatriculationPageState();
}

class _MatriculationPageState extends State<MatriculationPage> {
  final _matriculationDetailsFormKey = GlobalKey<FormState>();
  final _user = User();

  String selectedHighestGrade = 'Choose Highest Grade Passed';
  List<DropdownMenuItem> getHighestGradeDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String highestGrade in highestGradeList) {
      var newItem = DropdownMenuItem(
        child: Text(highestGrade),
        value: highestGrade,
      );
      dropdownItems.add(newItem);
    }
    return dropdownItems;
  }


  String selectedSeniorCertification = 'Choose Senior Certification Type';
  List<DropdownMenuItem> getSeniorCertificationDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String seniorCertification in seniorCertificationList) {
      var newItem = DropdownMenuItem(
        child: Text(seniorCertification),
        value: seniorCertification,
      );
      dropdownItems.add(newItem);
    }

    return dropdownItems;
  }

  String selectedSchoolName = 'Select Your School';
  List<DropdownMenuItem> getSchoolNameDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String schoolName in schoolNameList) {
      var newItem = DropdownMenuItem(
        child: Text(schoolName),
        value: schoolName,
      );
      dropdownItems.add(newItem);
    }

    return dropdownItems;
  }
  String selectedExaminationBoard = 'Choose Examination Board';
  List<DropdownMenuItem> getExaminationBoardDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String examinationBoard in examinationBoardList) {
      var newItem = DropdownMenuItem(
        child: Text(examinationBoard),
        value: examinationBoard,
      );
      dropdownItems.add(newItem);
    }

    return dropdownItems;
  }
  DateTime _examinationDate;
  DateTime _lastExaminationDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Matriculation Details')),
        body: SingleChildScrollView(
          child: Container(
            padding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
              builder: (context) => Form(
                key: _matriculationDetailsFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('Examination Date'),
                    RaisedButton(
                      child: Text(_examinationDate == null
                          ? 'When Are You Writing Examinations?'
                          : _examinationDate.toString()),
                      onPressed: () {
                        showDatePicker(
                            context: context,
                            initialDate: _examinationDate == null
                                ? DateTime.now()
                                : _examinationDate,
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2030))
                            .then((date) {
                          setState(() {
                            _examinationDate = date;
                          });
                          onSaved:
                              (val) => setState(() => _user.examinationDate = val);
                        });
                      },
                    ),
                    Text('Highest Grade Passed'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: DropdownButton(
                          value: selectedHighestGrade,
                          items: getHighestGradeDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedHighestGrade = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.highestGradePassed = val);
                          },
                        )),
                    SizedBox(height: 15.0,),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Examination Number'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Your Examination Number';
                          }
                          onSaved:
                              (val) => setState(() => _user.examinationNumber = val);
                        }),
                    Text('Senior Certification Type'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: DropdownButton(
                          value: selectedSeniorCertification,
                          items: getSeniorCertificationDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedSeniorCertification = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.seniorCertificationType = val);
                          },
                        )),
                    Text('School Name'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: DropdownButton(
                          value: selectedSchoolName,
                          items: getSchoolNameDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedSchoolName = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.schoolName = val);
                          },
                        )),
                    SizedBox(height: 15.0,),
                    Text('Examination Board'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: DropdownButton(
                          value: selectedExaminationBoard,
                          items: getExaminationBoardDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedExaminationBoard = value;
                            });
                            onSaved:
                                (val) => setState(() => _user.examinationBoard = val);
                          },
                        )),
                    Text('Last Examination '),
                    RaisedButton(
                      child: Text(_lastExaminationDate == null
                          ? 'When Are You Writing Last Examinations?'
                          : _lastExaminationDate.toString()),
                      onPressed: () {
                        showDatePicker(
                            context: context,
                            initialDate: _lastExaminationDate == null
                                ? DateTime.now()
                                : _lastExaminationDate,
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2030))
                            .then((date) {
                          setState(() {
                            _lastExaminationDate = date;
                          });
                          onSaved:
                              (val) => setState(() => _user.lastExamination = val);
                        });
                      },
                    ),

                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        child: RaisedButton(
                            onPressed: () {
                              final form = _matriculationDetailsFormKey.currentState;
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
