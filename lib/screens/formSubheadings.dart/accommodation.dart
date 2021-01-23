import 'package:flutter/material.dart';
import 'package:flutter_login_signup/models/main.dart';
import 'package:flutter_login_signup/utils/button.dart';
import 'package:flutter_login_signup/utils/colors.dart';
import 'package:flutter_login_signup/utils/user.dart';
import 'package:scoped_model/scoped_model.dart';

class AccommodationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AccommodationPageState();
}

class _AccommodationPageState extends State<AccommodationPage> {
  Map<String, dynamic> _accommodationOptions = <String, dynamic>{
    'accommodation': 0,
  };

  void _handleAccommodationChange(int value) =>
      setState(() => _accommodationOptions['accommodation'] = value);

  final _accommodationFormKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Apply For Accommodation')),
        body: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
              builder: (context) => Form(
                key: _accommodationFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(left: 4.0, top: 4.0),
                        child: Text(
                          'Apply :',
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                            activeColor: Colors.black87,
                            value: 0,
                            groupValue:
                                _accommodationOptions['accommodation'] as int,
                            onChanged: _handleAccommodationChange,
                          ),
                          Text(
                            CAMPUS_ACCOMMODATION_CHOICES[0],
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          Radio(
                            activeColor: Colors.black87,
                            value: 1,
                            groupValue: _accommodationOptions['accommodation'] as int,
                            onChanged: _handleAccommodationChange,
                          ),
                          Text(
                            CAMPUS_ACCOMMODATION_CHOICES[1],
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        child: RaisedButton(
                            onPressed: () {
                              final form =
                                  _accommodationFormKey.currentState;
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
