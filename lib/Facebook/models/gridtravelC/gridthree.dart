import 'package:flutter/material.dart';
import 'package:flutter_dev/Facebook/appscreen/Screen/searchscreen.dart';
import 'package:flutter_dev/Facebook/models/gridtravelC/theplaceC.dart';


class GridThree extends StatefulWidget {
  //const GridThree({ Key? key }) : super(key: key);

  @override
  _GridThreeState createState() => _GridThreeState();
}

class _GridThreeState extends State<GridThree> {
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
         // height: 320.0,
          child: ThePlaceC(),
    ),
    );
  }
}