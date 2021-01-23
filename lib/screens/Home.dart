import 'package:flutter/material.dart';
import 'package:flutter_login_signup/screens/CustomerSupport.dart';
import 'package:flutter_login_signup/screens/Privacy.dart';
import 'package:flutter_login_signup/screens/careerdev.dart';
import 'package:flutter_login_signup/screens/deadlines.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_login_signup/screens/payment.dart';
import 'package:flutter_login_signup/screens/settings.dart';
import 'package:flutter_login_signup/services/authentification.dart';
import '../higherEducation_Carousel.dart';
import 'Form.dart';
import 'SentApplications.dart';
import 'firstPage.dart';
import 'notifications.dart';
import 'Profile.dart';
import 'package:firebase_core/firebase_core.dart';



class HomeScreen extends StatefulWidget {

  HomeScreen({Key key, this.auth, this.userId, this.onSignedOut})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback onSignedOut;
  final String userId;


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    AllInstitutionsScreen(),
    ProfileScreen(),
    CareerDevPage(),
    DeadlinesPage(),
//    NotificationsPage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
                trailing: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                title: Text(""),
                onTap: () => Navigator.of(context).pop()),
            UserAccountsDrawerHeader(
              accountName: Text("Nicolas Adams"),
              accountEmail: Text("nicolas@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              otherAccountsPictures: <Widget> [
                CircleAvatar(
                  backgroundColor: Colors.black38,
                  child: Text("T"),
                ),
              ]
            ),
            ListTile(
              leading: Icon(
                Icons.library_books,
                color: Colors.black,
              ),
              title: Text("My Applications"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SentApplications()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.monetization_on,
                color: Colors.black,
              ),
              title: Text("Payment"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentPage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline,
                color: Colors.black,
              ),
              title: Text("Help & Support"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomerSupport()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.security,
                color: Colors.black,
              ),
              title: Text("Privacy"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PrivacyPage()));
              },
            ),
            Divider(
              height: 14,
              thickness: 0.5,
              color: Colors.blueAccent.withOpacity(0.3),
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text("Settings"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SettingsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AllInstitutionsScreen()));
              },
            ),
          ],
        ),
      ),
      body:
//
          Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: Text(
              'My Form',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_searching,
            ),
            title: Text(
              'Explore',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.collections_bookmark,
            ),
            title: Text(
              'Favorites',
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 11.0,
        unselectedFontSize: 9.0,
      ),
    );
  }
}
