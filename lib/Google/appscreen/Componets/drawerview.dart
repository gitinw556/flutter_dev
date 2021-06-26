import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dev/Google/alertlogout/alertlogout.dart';
import 'package:flutter_dev/Google/appscreen/Screen/appscreen.dart';
import 'package:flutter_dev/Google/appscreen/Screen/inputclock.dart';
import 'package:flutter_dev/Google/appscreen/Screen/searchscreen.dart';
import 'package:flutter_dev/Google/appscreen/Screen/testscreen.dart';
import 'package:flutter_dev/Google/appscreen/Screen/tripscreen.dart';
import 'package:flutter_dev/Google/appscreen/Screen/userscreen.dart';
import 'package:flutter_dev/Google/appscreen/Screen/weatherscreen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(user.displayName, style: TextStyle(color: Colors.black)),
            accountEmail:
                Text(user.email, style: TextStyle(color: Colors.black)),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(user.photoURL),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.lightBlue[700],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => UserScreen());
              Navigator.push(context, route);
            },
            child: ListTile(
              title: Text(
                'My account',
                style: TextStyle(fontSize: 17),
              ),
              leading: Icon(MdiIcons.accountBox, size: 30),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => AppScreen());
              Navigator.push(context, route);
            },
            child: ListTile(
              title: Text(
                'Home Page',
                style: TextStyle(fontSize: 17),
              ),
              leading: Icon(Icons.home, size: 30),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => InputClockScreen());
              Navigator.push(context, route);
            },
            child: ListTile(
              title: Text(
                'Enter time to search',
                style: TextStyle(fontSize: 17),
              ),
              leading: Icon(MdiIcons.clipboardClockOutline, size: 30),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => SearchScreen());
              Navigator.push(context, route);
            },
            child: ListTile(
              title: Text(
                'Search for place',
                style: TextStyle(fontSize: 17),
              ),
              leading: Icon(MdiIcons.imageSearchOutline, size: 30),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => TripScreen());
              Navigator.push(context, route);
            },
            child: ListTile(
              title: Text(
                'Select trip',
                style: TextStyle(fontSize: 17),
              ),
              leading: Icon(MdiIcons.mapMarkerPath, size: 30),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.pop(context);
              // MaterialPageRoute route =
              //     MaterialPageRoute(builder: (value) => MapScreen());
              // Navigator.push(context, route);
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => TestScreen());
              Navigator.push(context, route);
            },
            child: ListTile(
              title: Text(
                'Map Travel',
                style: TextStyle(fontSize: 17),
              ),
              leading: Icon(Icons.map_outlined, size: 30),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => WeatherScreen());
              Navigator.push(context, route);
            },
            child: ListTile(
              title: Text(
                'Check Weather',
                style: TextStyle(fontSize: 17),
              ),
              leading: Icon(MdiIcons.weatherPouring, size: 30),
            ),
          ),
          Divider(color: Colors.black),
          InkWell(
            onTap: () async {
              final action = await AlertDialogs.yesCancelDialog(
                  context, 'Logout', 'are you sure?');
            },
            child: ListTile(
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 17),
              ),
              leading: Icon(Icons.exit_to_app, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
