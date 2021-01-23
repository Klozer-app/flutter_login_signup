import 'package:flutter/material.dart';
import 'package:flutter_login_signup/models/main.dart';
import 'package:flutter_login_signup/utils/button.dart';
import 'package:flutter_login_signup/utils/colors.dart';
import 'package:flutter_login_signup/utils/user.dart';
import 'package:scoped_model/scoped_model.dart';

class PostSchoolPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PostSchoolPageState();
}

class _PostSchoolPageState extends State<PostSchoolPage> {
  Map<String, dynamic> _prevRegOptions = <String, dynamic>{
    'prevReg': 0,
  };

  void _handlePrevRegChange(int value) =>
      setState(() => _prevRegOptions['prevReg'] = value);

  Map<String, dynamic> _prevExclusionOptions = <String, dynamic>{
    'prevExclusion': 0,
  };

  void _handlePrevExclusionChange(int value) =>
      setState(() => _prevExclusionOptions['prevExclusion'] = value);
  final _postSchoolFormKey = GlobalKey<FormState>();
  final _user = User();

  String selectedRegInstitution = 'Select Institution';
  List<DropdownMenuItem> getRegInstitutionDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String RegInstitution in regInstitutionList) {
      var newItem = DropdownMenuItem(
        child: Text(RegInstitution),
        value: RegInstitution,
      );
      dropdownItems.add(newItem);
    }
    return dropdownItems;
  }

  String selectedRegCourse = 'Select Degree/Course';
  List<DropdownMenuItem> getRegCourseDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String RegCourse in regCourseList) {
      var newItem = DropdownMenuItem(
        child: Text(RegCourse),
        value: RegCourse,
      );
      dropdownItems.add(newItem);
    }
    return dropdownItems;
  }

  String selectedExclInstitution = 'Select Institution';
  List<DropdownMenuItem> getExclInstitutionDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String ExclInstitution in exclInstitutionList) {
      var newItem = DropdownMenuItem(
        child: Text(ExclInstitution),
        value: ExclInstitution,
      );
      dropdownItems.add(newItem);
    }
    return dropdownItems;
  }

  String selectedExclCourse = 'Select Degree/Course';
  List<DropdownMenuItem> getExclCourseDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String ExclCourse in exclCourseList) {
      var newItem = DropdownMenuItem(
        child: Text(ExclCourse),
        value: ExclCourse,
      );
      dropdownItems.add(newItem);
    }
    return dropdownItems;
  }

  DateTime _regStartDate;
  DateTime _regCompletionDate;
  DateTime _exclStartDate;
  DateTime _exclStopDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Post School Activities')),
        body: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
              builder: (context) => Form(
                key: _postSchoolFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 4.0),
                        child: Text(
                          'Prev Registration? :',
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                            activeColor: Colors.black87,
                            value: 0,
                            groupValue: _prevRegOptions['prevReg'] as int,
                            onChanged: _handlePrevRegChange,
                          ),
                          Text(
                            PREVIOUS_REGISTRATION_CHOICES[0],
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          Radio(
                            activeColor: Colors.black87,
                            value: 1,
                            groupValue: _prevRegOptions['prevReg'] as int,
                            onChanged: _handlePrevRegChange,
                          ),
                          Text(
                            PREVIOUS_REGISTRATION_CHOICES[1],
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                        ],
                      ),
                    ),
                    Text('Institutions Name'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: DropdownButton(
                          value: selectedRegInstitution,
                          items: getRegInstitutionDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedRegInstitution = value;
                            });
                            onSaved:
                            (val) =>
                                setState(() => _user.prevInstitution = val);
                          },
                        )),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Student Number'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Your Student Number';
                          }
                          onSaved:
                          (val) => setState(() => _user.studentNumber = val);
                        }),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('When Did You Start ?'),
                    RaisedButton(
                      child: Text(_regStartDate == null
                          ? 'Select Date'
                          : _regStartDate.toString()),
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: _regStartDate == null
                                    ? DateTime.now()
                                    : _regStartDate,
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2030))
                            .then((date) {
                          setState(() {
                            _regStartDate = date;
                          });
                          onSaved:
                          (val) => setState(() => _user.whenDidYouStart = val);
                        });
                      },
                    ),
                    Text('When Did You Complete ?'),
                    RaisedButton(
                      child: Text(_regCompletionDate == null
                          ? 'Select Completeion Date'
                          : _regCompletionDate.toString()),
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: _regCompletionDate == null
                                    ? DateTime.now()
                                    : _regCompletionDate,
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2030))
                            .then((date) {
                          setState(() {
                            _regCompletionDate = date;
                          });
                          onSaved:
                          (val) =>
                              setState(() => _user.whenDidYouComplete = val);
                        });
                      },
                    ),
                    Text('What Were You Studying?'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: DropdownButton(
                          value: selectedRegCourse,
                          items: getRegCourseDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedRegCourse = value;
                            });
                            onSaved:
                            (val) =>
                                setState(() => _user.whatWereYouStudying = val);
                          },
                        )),
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 4.0),
                        child: Text(
                          'Prev Exclusion',
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                            activeColor: Colors.black87,
                            value: 0,
                            groupValue:
                                _prevExclusionOptions['prevExclusion'] as int,
                            onChanged: _handlePrevExclusionChange,
                          ),
                          Text(
                            EXCLUDED_FROM_INSTITUTION_CHOICES[0],
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          Radio(
                            activeColor: Colors.black87,
                            value: 1,
                            groupValue:
                                _prevExclusionOptions['prevExclusion'] as int,
                            onChanged: _handlePrevExclusionChange,
                          ),
                          Text(
                            EXCLUDED_FROM_INSTITUTION_CHOICES[1],
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                        ],
                      ),
                    ),
                    Text('Institutions Name'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: DropdownButton(
                          value: selectedRegInstitution,
                          items: getRegInstitutionDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedRegInstitution = value;
                            });
                            onSaved:
                            (val) => setState(
                                () => _user.exclusionInstitution = val);
                          },
                        )),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Student Number'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Your Student Number';
                          }
                          onSaved:
                          (val) => setState(
                              () => _user.exclusionStudentNumber = val);
                        }),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('When Did You Start ?'),
                    RaisedButton(
                      child: Text(_exclStartDate == null
                          ? 'Select Date'
                          : _exclStartDate.toString()),
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: _regStartDate == null
                                    ? DateTime.now()
                                    : _exclStartDate,
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2030))
                            .then((date) {
                          setState(() {
                            _exclStartDate = date;
                          });
                          onSaved:
                          (val) =>
                              setState(() => _user.exclusionStartDate = val);
                        });
                      },
                    ),
                    Text('When Did You Stop?'),
                    RaisedButton(
                      child: Text(_exclStopDate == null
                          ? 'Select Stop Date'
                          : _exclStopDate.toString()),
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: _exclStopDate == null
                                    ? DateTime.now()
                                    : _exclStopDate,
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2030))
                            .then((date) {
                          setState(() {
                            _exclStopDate = date;
                          });
                        });
                        onSaved:
                        (val) => setState(() => _user.exclusionStopDate = val);
                      },
                    ),
                    Text('What Were You Studying?'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: DropdownButton(
                          value: selectedExclCourse,
                          items: getRegCourseDropdownItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedExclCourse = value;
                            });
                            onSaved:
                            (val) => setState(
                                () => _user.exclusionQualification = val);
                          },
                        )),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Reason for Exclusion'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter Reason for Exclusion';
                        }
                      },
                      onSaved: (val) => setState(() => _user.reasonForExclusion = val),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        child: RaisedButton(
                            onPressed: () {
                              final form = _postSchoolFormKey.currentState;
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
