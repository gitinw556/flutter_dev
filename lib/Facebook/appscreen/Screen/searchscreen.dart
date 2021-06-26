import 'package:flutter/material.dart';
import 'package:flutter_dev/Facebook/appscreen/Screen/appscreen.dart';
import 'package:flutter_dev/Facebook/models/gridtravelA/gridone.dart';
import 'package:flutter_dev/Facebook/models/gridtravelB/gridtwo.dart';
import 'package:flutter_dev/Facebook/models/gridtravelC/gridthree.dart';
import 'package:flutter_dev/Facebook/models/gridtravelD/gridfour.dart';


class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                  MaterialPageRoute(builder: (context) => AppScreen()));
          },
        ),
        title: Text('       Chiang Mai Travel',
            style: TextStyle(
                fontFamily: 'FredokaOne', fontSize: 25, color: Colors.white)),
      ),
      backgroundColor: Colors.blue[300],
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (value) => GridOne());
                  Navigator.push(context, route);
                },
                splashColor: Colors.lightBlue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/icons/temple.png',height: 70,width: 70),
                      Text("สถานที่วัฒนธรรม",
                          style:
                              TextStyle(fontSize: 20.0, fontFamily: 'Sriracha'))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (value) => GridTwo());
                  Navigator.push(context, route);
                },
                splashColor: Colors.lightBlue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/icons/forest.png',height: 70,width: 70),
                      Text("สถานที่ธรรมชาติ",
                          style:
                              TextStyle(fontSize: 20.0, fontFamily: 'Sriracha'))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (value) => GridThree());
                  Navigator.push(context, route);
                },
                splashColor: Colors.lightBlue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/icons/castle.png',height: 70,width: 70),
                      Text("สถานที่นันทนาการ",
                          style:
                              TextStyle(fontSize: 20.0, fontFamily: 'Sriracha'))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (value) => GridFour());
                  Navigator.push(context, route);
                },
                splashColor: Colors.lightBlue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/icons/mill.png',height: 70,width: 70),
                      Text("สถานที่เชิงเกษตร",
                          style:
                              TextStyle(fontSize: 20.0, fontFamily: 'Sriracha'))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
