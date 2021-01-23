import 'package:flutter/material.dart';

import 'notifications.dart';


class SentApplications extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SentApplications();
}

class _SentApplications extends State<SentApplications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Klozer',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.mail_outline),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationsPage()));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Center(
                child: Text(
                  'You have not yet applied to any institution',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

