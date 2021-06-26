import 'package:flutter/material.dart';
import 'package:flutter_dev/Google/appscreen/Screen/searchscreen.dart';
import 'package:flutter_dev/Google/models/gridtravelB/theplaceB.dart';

class GridTwo extends StatefulWidget {
 // const GridTwo({ Key? key }) : super(key: key);

  @override
  _GridTwoState createState() => _GridTwoState();
}

class _GridTwoState extends State<GridTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.lightBlue[700],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
          },
        ),
        title: Text('       Chiang Mai Travel',
            style: TextStyle(
                fontFamily: 'FredokaOne', fontSize: 25, color: Colors.white)),
    ),
    body: Container(
          child: ThePlaceB(),
    ),
    );
  }
}