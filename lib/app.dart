

import 'package:flutter/material.dart';
import 'package:flutter_login_signup/screens/Form.dart';
import 'package:flutter_login_signup/models/main.dart';
import 'package:flutter_login_signup/utils/theme.dart';
import 'package:scoped_model/scoped_model.dart';

final ThemeData _FormTheme = FormAppTheme().data;

class FormApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => FormAppState();


}
class FormAppState extends State<FormApp>{

  final MainModel _model = MainModel();

  @override
  Widget build(BuildContext context) {

    return ScopedModel<MainModel>(
      model: _model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Form App',
//        home: FormPage(),
        theme: _FormTheme,
      ),
    );
  }


}