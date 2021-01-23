

import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/colors.dart';

class FormAppButton extends RaisedButton{

  final String text;
  final Function action;

  FormAppButton({@required this.text, @required this.action});

  ButtonTheme getButton(BuildContext context){

    return ButtonTheme(
      minWidth: 116.0,
      height: 33.0,
      child: RaisedButton(
        color: mRegistrationBlack,
        child: Text(
          text,
          style: Theme.of(context).textTheme.button,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        onPressed: (){
          action();
        },
      ),
    );
  }


}